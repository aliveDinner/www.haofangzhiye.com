<?php

namespace app\index\controller;

use app\common\controller\Frontend;


/**
 * 默认控制器
 * @author Sir Fu
 */
class Better extends Frontend
{
    //广告类别
    private $sliderType = 6;
    // 资讯类别
    private $newsType = 6;
    protected $slider_model = null;
    private $model = null;

    public function _initialize()
    {
        parent::_initialize(); // TODO: Change the autogenerated stub
        $this->model = model("Zhuangxiu");
        $this->slider_model = model('Slider');
        $this->assign('nav', 'better');
    }

    /**
     * 默认方法
     * @author Sir Fu
     */
    public function index()
    {
        if ($this->request->isAjax())
        {

            list($where, $sort, $order, $offset, $limit) = $this->buildparams(NULL);
            //var_dump($where);die();
            //$where['HouseType']=['=',1];
            $total = $this->model
                ->where($where)
                ->order($sort, $order)
                ->count();
            $list = $this->model
                ->where($where)
                ->order($sort, $order)
                ->limit($offset, $limit)
                ->select();
            $result = array("total" => $total, "rows" => $list);

            return json($result);
        }
        $list = [];
        $sliderwhere = ['type'=>$this->sliderType];

        $slider = $this->slider_model->getSlider($sliderwhere,6,true);
        foreach ($slider as $item){
            $list[] = [
                'title'=>$item['title'],
                'desc'=>$item['description'],
                'target'=>$item['target'],
                'url'=>$item['url_image'],
            ];
        }
        //var_dump($slider);die();
        $slider = json_encode($list);
        $this->view->assign("slider",$slider);
        return $this->view->fetch();

    }
    public function detail($id)
    {
        $news = $this->model->get(['Id'=>$id]);
        //var_dump($house);die();
        $this->view->assign("row",$news);
        return $this->fetch();
    }
}