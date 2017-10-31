<?php

namespace app\admin\controller;

use app\common\controller\Backend;

use think\Controller;
use think\Request;
use think\Session;

/**
 * 意向
 *
 * @icon fa fa-circle-o
 */
class Intention extends Backend
{

    /**
     * Intention模型对象
     */
    protected $model = null;
    protected $modelHouse = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('Intention');
        $this->modelHouse = model("House");
        $this->view->assign("housetypeList", $this->model->getHousetypeList());
        $this->view->assign("yusuzongjiaList", $this->model->getYusuzongjiaList());
        $this->view->assign("statusList", $this->model->getStatusList());
    }
    /**
     * 查看
     */
    public function index()
    {
        //设置过滤方法
        $this->request->filter(['strip_tags']);
        if ($this->request->isAjax())
        {
            //如果发送的来源是Selectpage，则转发到Selectpage
            if ($this->request->request('pkey_name'))
            {
                return $this->selectpage();
            }
            list($where, $sort, $order, $offset, $limit) = $this->buildparams();
            $where1=[];
            if (!$this->auth->isSuperAdmin())
            {
                $where1=['admin_id'=>$this->auth->__get("id")];
            }

            $total = $this->model->where($where)
                ->where($where1)
                ->order($sort, $order)
                ->count();

            $list =$this->model->where($where)
                ->where($where1)
                ->order($sort, $order)
                ->limit($offset, $limit)
                ->select();

            $result = array("total" => $total, "rows" => $list);

            return json($result);
        }
        return $this->view->fetch();
    }
    /**
     * 默认生成的控制器所继承的父类中有index/add/edit/del/multi五个方法
     * 因此在当前控制器中可不用编写增删改查的代码,如果需要自己控制这部分逻辑
     * 需要将application/admin/library/traits/Backend.php中对应的方法复制到当前控制器,然后进行修改
     */

    /**
     * 编辑
     */
    public function add_house($ids)
    {
        $houseType = $this->request->get("houseType", "1");
        $row = $this->modelHouse->get($ids);
        //var_dump($row);
//        if (!$row)
//            $this->error(__('No Results were found'));
        if ($this->request->isPost()) {
            $params = $this->request->post("row/a");
            if ($params) {
                foreach ($params as $k => &$v) {
                    $v = is_array($v) ? implode(',', $v) : $v;
                }
                try {
                    //是否采用模型验证
                    if ($this->modelValidate) {
                        $name = basename(str_replace('\\', '/', get_class($this->model)));
                        $validate = is_bool($this->modelValidate) ? ($this->modelSceneValidate ? $name . '.add' : true) : $this->modelValidate;
                        $this->model->validate($validate);
                    }
                    $result = $this->model->save($params);
                    if ($result !== false) {
                        $this->success();
                    } else {
                        $this->error($this->model->getError());
                    }
                } catch (\think\exception\PDOException $e) {
                    $this->error($e->getMessage());
                }
            }
            $this->error(__('Parameter %s can not be empty', ''));
        }
        if (!is_null($row))
        {
            $houseType = $row->HouseType;
        }

        $this->view->assign("houseType", $houseType);
        //var_dump($houseType);
        $this->view->assign("row", $row);
        return $this->view->fetch();
    }
    public function add_Intention()
    {
        $houseType = $this->request->get("houseType", "1");
        //var_dump($row);
//        if (!$row)
//            $this->error(__('No Results were found'));
        if ($this->request->isPost()) {
            $params = $this->request->post("row/a");
            if ($params) {
                foreach ($params as $k => &$v) {
                    $v = is_array($v) ? implode(',', $v) : $v;
                }
                try {
                    //是否采用模型验证
                    if ($this->modelValidate) {
                        $name = basename(str_replace('\\', '/', get_class($this->model)));
                        $validate = is_bool($this->modelValidate) ? ($this->modelSceneValidate ? $name . '.add' : true) : $this->modelValidate;
                        $this->model->validate($validate);
                    }
                    $result = $this->model->save($params);
                    if ($result !== false) {
                        $this->success();
                    } else {
                        $this->error($this->model->getError());
                    }
                } catch (\think\exception\PDOException $e) {
                    $this->error($e->getMessage());
                }
            }
            $this->error(__('Parameter %s can not be empty', ''));
        }
        $this->view->assign("houseType", $houseType);
        //var_dump($houseType);
        return $this->view->fetch();
    }
}
