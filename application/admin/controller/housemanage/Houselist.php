<?php

namespace app\admin\controller\housemanage;

use app\common\controller\Backend;

use think\Controller;
use think\Request;

/**
 * 房源信息
 *
 * @icon fa fa-circle-o
 */
class Houselist extends Backend
{
    
    /**
     * House模型对象
     */
    protected $model = null;
    protected $searchFields = 'id,HouseName,BiaoTi';
    public function _initialize()
    {
        parent::_initialize();
        $this->modelValidate=true;
        $this->loadlang("house");
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
    

}
