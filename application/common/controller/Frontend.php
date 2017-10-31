<?php

namespace app\common\controller;

use think\Config;
use think\Controller;
use think\Lang;

class Frontend extends Controller
{

    /**
     * 布局模板
     * @var string
     */
    protected $layout = 'index';
    /**
     * 快速搜索时执行查找的字段
     */
    protected $searchFields = 'id';
    /**
     * 是否是关联查询
     */
    protected $relationSearch = false;

    /**
     * 是否开启Validate验证
     */
    protected $modelValidate = false;

    /**
     * 是否开启模型场景验证
     */
    protected $modelSceneValidate = false;

    /**
     * Multi方法可批量修改的字段
     */
    protected $multiFields = 'status';

    use \app\admin\library\traits\Backend;
    public function _initialize()
    {
        //移除HTML标签
        $this->request->filter('strip_tags');
        $modulename = $this->request->module();
        $controllername = strtolower($this->request->controller());
        $actionname = strtolower($this->request->action());

        // 如果有使用模板布局
        if ($this->layout)
        {
            $this->view->engine->layout('layouts/' . $this->layout);
        }

        // 语言检测
        $lang = Lang::detect();

        $site = Config::get("site");

        // 配置信息
        $config = [
            'site'           => array_intersect_key($site, array_flip(['name', 'cdnurl', 'version', 'timezone', 'languages'])),
            'upload'         => \app\common\model\Config::upload(),
            'modulename'     => $modulename,
            'controllername' => $controllername,
            'actionname'     => $actionname,
            'jsname'         => 'frontend/' . str_replace('.', '/', $controllername),
            'moduleurl'      => rtrim(url("/{$modulename}", '', false), '/'),
            'language'       => $lang
        ];
        $this->loadlang($controllername);
        $this->assign('site', $site);
        $this->assign('config', $config);
    }

    /**
     * 加载语言文件
     * @param string $name
     */
    protected function loadlang($name)
    {
        //var_dump(APP_PATH . $this->request->module() . '/lang/' . Lang::detect() . '/' . str_replace('.', '/', $name) . '.php');
        Lang::load(APP_PATH . $this->request->module() . '/lang/' . Lang::detect() . '/' . str_replace('.', '/', $name) . '.php');
    }
    
    /**
     * 渲染配置信息
     * @param mixed $name 键名或数组
     * @param mixed $value 值 
     */
    protected function assignconfig($name, $value = '')
    {
        $this->view->config = array_merge($this->view->config ? $this->view->config : [], is_array($name) ? $name : [$name => $value]);
    }
    /**
     * 生成查询所需要的条件,排序方式
     * @param mixed $searchfields 查询条件
     * @param boolean $relationSearch 是否关联查询
     * @return array
     */
    protected function buildparams($searchfields = null, $relationSearch = null)
    {
        $searchfields = is_null($searchfields) ? $this->searchFields : $searchfields;
        $relationSearch = is_null($relationSearch) ? $this->relationSearch : $relationSearch;
        $search = $this->request->get("search", '');
        $filter = $this->request->get("filter", '');
        $op = $this->request->get("op", '');
        $sort = $this->request->get("sort", "id");
        $order = $this->request->get("order", "DESC");
        $offset = $this->request->get("offset", 0);
        $limit = $this->request->get("limit", 0);
        $filter = json_decode($filter, TRUE);
        $op = json_decode($op, TRUE);
        $filter = $filter ? $filter : [];
        $where = [];
        $tableName = '';
        if ($relationSearch)
        {
            if (!empty($this->model))
            {
                $class = get_class($this->model);
                $name = basename(str_replace('\\', '/', $class));
                $tableName = $this->model->getQuery()->getTable($name) . ".";
            }
            if (stripos($sort, ".") === false)
            {
                $sort = $tableName . $sort;
            }
        }
        if ($search)
        {
            $searcharr = is_array($searchfields) ? $searchfields : explode(',', $searchfields);
            foreach ($searcharr as $k => &$v)
            {
                $v = $tableName . $v;
            }
            unset($v);
            $where[] = [implode("|", $searcharr), "LIKE", "%{$search}%"];
        }
        foreach ($filter as $k => $v)
        {
            $sym = isset($op[$k]) ? $op[$k] : '=';
            if (stripos($k, ".") === false)
            {
                $k = $tableName . $k;
            }
            $sym = isset($op[$k]) ? $op[$k] : $sym;
            switch ($sym)
            {
                case '=':
                case '!=':
                case 'LIKE':
                case 'NOT LIKE':
                    $where[] = [$k, $sym, $v];
                    break;
                case '>':
                case '>=':
                case '<':
                case '<=':
                    $where[] = [$k, $sym, intval($v)];
                    break;
                case 'IN(...)':
                case 'NOT IN(...)':
                    $where[] = [$k, str_replace('(...)', '', $sym), explode(',', $v)];
                    break;
                case 'BETWEEN':
                case 'NOT BETWEEN':
                    $where[] = [$k, $sym, array_slice(explode(',', $v), 0, 2)];
                    break;
                case 'LIKE %...%':
                    $where[] = [$k, 'LIKE', "%{$v}%"];
                    break;
                case 'IS NULL':
                case 'IS NOT NULL':
                    $where[] = [$k, strtolower(str_replace('IS ', '', $sym))];
                    break;
                default:
                    break;
            }
        }
        $where = function($query) use ($where) {
            foreach ($where as $k => $v)
            {
                if (is_array($v))
                {
                    call_user_func_array([$query, 'where'], $v);
                }
                else
                {
                    $query->where($v);
                }
            }
        };
        return [$where, $sort, $order, $offset, $limit];
    }

    /**
     * Selectpage的实现方法
     *
     * 当前方法只是一个比较通用的搜索匹配,请按需重载此方法来编写自己的搜索逻辑,$where按自己的需求写即可
     * 这里示例了所有的参数，所以比较复杂，实现上自己实现只需简单的几行即可
     *
     */
    protected function selectpage()
    {
        //设置过滤方法
        $this->request->filter(['strip_tags', 'htmlspecialchars']);

        //搜索关键词,客户端输入以空格分开,这里接收为数组
        $word = (array) $this->request->request("q_word/a");
        //当前页
        $page = $this->request->request("page");
        //分页大小
        $pagesize = $this->request->request("per_page");
        //搜索条件
        $andor = $this->request->request("and_or");
        //排序方式
        $orderby = (array) $this->request->request("order_by/a");
        //显示的字段
        $field = $this->request->request("field");
        //主键
        $primarykey = $this->request->request("pkey_name");
        //主键值
        $primaryvalue = $this->request->request("pkey_value");
        //搜索字段
        $searchfield = (array) $this->request->request("search_field/a");
        //自定义搜索条件
        $custom = (array) $this->request->request("custom/a");
        $order = [];
        foreach ($orderby as $k => $v)
        {
            $order[$v[0]] = $v[1];
        }
        $field = $field ? $field : 'name';

        //如果有primaryvalue,说明当前是初始化传值
        if ($primaryvalue)
        {
            $where = [$primarykey => ['in', $primaryvalue]];
        }
        else
        {
            $where = function($query) use($word, $andor, $field, $searchfield, $custom) {
                foreach ($word as $k => $v)
                {
                    foreach ($searchfield as $m => $n)
                    {
                        $query->where($n, "like", "%{$v}%", $andor);
                    }
                }
                if ($custom && is_array($custom))
                {
                    foreach ($custom as $k => $v)
                    {
                        $query->where($k, '=', $v);
                    }
                }
            };
        }
        $list = [];
        $total = $this->model->where($where)->count();
        if ($total > 0)
        {
            $list = $this->model->where($where)
                ->order($order)
                ->page($page, $pagesize)
                ->field("{$primarykey},{$field}")
                ->field("password,salt", true)
                ->select();
        }

        //这里一定要返回有list这个字段,total是可选的,如果total<=list的数量,则会隐藏分页按钮
        return json(['list' => $list, 'total' => $total]);
    }
}
