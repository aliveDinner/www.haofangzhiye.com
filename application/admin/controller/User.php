<?php

namespace app\admin\controller;

use app\common\controller\Backend;

/**
 * 会员管理
 *
 * @icon fa fa-user-o
 */
class User extends Backend
{

    protected $noNeedRight = ['selectpage'];

    /**
     * User模型对象
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('User');
    }

    /**
     * 查看
     */
    public function index()
    {
        //设置过滤方法
        $this->request->filter(['strip_tags']);
        if ($this->request->isAjax()) {
            //如果发送的来源是Selectpage，则转发到Selectpage
            if ($this->request->request('pkey_name')) {
                return $this->selectpage();
            }
            list($where, $sort, $order, $offset, $limit) = $this->buildparams();
            $where1 = [];
            if (!$this->auth->isSuperAdmin()) {
                $where1 = ['admin_id' => $this->auth->__get("id")];
            }
            $total = $this->model
                ->where($where)
                ->where($where1)
                ->order($sort, $order)
                ->count();

            $list = $this->model
                ->where($where)
                ->where($where1)
                ->field(['password', 'salt', 'token'], true)
                ->order($sort, $order)
                ->limit($offset, $limit)
                ->select();

            $result = array("total" => $total, "rows" => $list);

            return json($result);
        }
        return $this->view->fetch();
    }

    /**
     *
     * @internal
     */
    public function add()
    {
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
                    $params = array_merge($params, ['password' => "", 'salt' => "", 'admin_id' => $this->auth->__get("id")]);
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
        return $this->view->fetch();
    }

    /**
     * 修改
     */
    public function edit($ids = NULL)
    {
        if ($this->request->isPost()) {
            $params = $this->request->post("row/a");
            if ($params['password']) {
                $params = array_merge($params, ['password' => "", 'salt' => ""]);
//                $password = $params['password'];
//                $salt = \fast\Random::alnum();
//                $params = array_merge($params, ['password' => \addons\user\library\Auth::instance()->getEncryptPassword($password, $salt), 'salt' => $salt]);
            } else {
                unset($params['password']);
            }
            $this->request->post(['row' => $params]);
        }
        return parent::edit($ids);
    }

    /**
     * 快捷搜索
     * @internal
     */
    public function selectpage()
    {
        $origin = parent::selectpage();
        $result = $origin->getData();
        $list = [];
        foreach ($result['list'] as $k => $v) {
            $list[] = ['id' => $v->id, 'nickname' => $v->nickname, 'username' => $v->username];
        }
        $result['list'] = $list;
        return json($result);
    }

}
