<?php

namespace app\admin\controller;

use app\common\controller\Backend;

use think\Controller;
use think\Request;

/**
 * 房源信息
 *
 * @icon fa fa-circle-o
 */
class House extends Backend
{
    protected $noNeedLogin =["sellhouse"];
    /**
     * House模型对象
     */
    protected $model = null;
    protected $searchFields = 'id,HouseName,BiaoTi';
    public function _initialize()
    {
        parent::_initialize();
        $this->modelValidate=true;
        $this->model = model('House');
        $this->view->assign("housesoucetypeList", $this->model->getHousesoucetypeList());
        $this->view->assign("housetypeList", $this->model->getHousetypeList());
        $this->view->assign("chaoxiangList", $this->model->getChaoxiangList());
        $this->view->assign("zhuzhaileixingList", $this->model->getZhuzhaileixingList());
        $this->view->assign("zhuangxiuleixingList", $this->model->getZhuangxiuleixingList());
        $this->view->assign("chanquannianxianList", $this->model->getChanquannianxianList());
        $this->view->assign("chanquanList", $this->model->getChanquanList());
        $this->view->assign("showstatusList", $this->model->getShowstatusList());
        $this->view->assign("statusList", $this->model->getStatusList());
    }
    
    /**
     * 默认生成的控制器所继承的父类中有index/add/edit/del/multi五个方法
     * 因此在当前控制器中可不用编写增删改查的代码,如果需要自己控制这部分逻辑
     * 需要将application/admin/library/traits/Backend.php中对应的方法复制到当前控制器,然后进行修改
     */
    public function sellhouse()
    {
        if ($this->request->isPost())
        {
            $params = $this->request->post("row/a");
            if ($params)
            {
                foreach ($params as $k => &$v)
                {
                    $v = is_array($v) ? implode(',', $v) : $v;
                }
                try
                {
                    //是否采用模型验证
                    if ($this->modelValidate)
                    {
                        $name = basename(str_replace('\\', '/', get_class($this->model)));
                        $validate = is_bool($this->modelValidate) ? ($this->modelSceneValidate ? $name . '.add' : true) : $this->modelValidate;
                        $this->model->validate($validate);
                    }
                    $result = $this->model->save($params);
                    if ($result !== false)
                    {
                        $this->success();
                    }
                    else
                    {
                        $this->error($this->model->getError());
                    }
                }
                catch (\think\exception\PDOException $e)
                {
                    $this->error($e->getMessage());
                }
            }
            $this->error(__('Parameter %s can not be empty', ''));
        }
        return $this->view->fetch();
    }

}
