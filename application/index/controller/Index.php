<?php

namespace app\index\controller;

use app\common\controller\Frontend;
use think\Log;

class Index extends Frontend
{
    //广告类别
    private $sliderType = 2;
    protected $model = null;
    protected $slider_model=null;
    protected $newsModel=null;
    private $modelQuestion = null;
    public function _initialize()
    {
        parent::_initialize();
        $this->loadlang('house');
        $this->model = model('House');
        $this->modelQuestion=model("Question");
        $this->slider_model = model('Slider');
        $this->newsModel=model("News");
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
            $houseType=$this->request->get("houseType",'0');
            //var_dump($where);die();
            //$where['HouseType']=['=',1];
            $total = $this->model
                ->where(['HouseType'=>$houseType])
                ->where($where)
                ->order($sort, $order)
                ->count();
            $list = $this->model
                ->where(['HouseType'=>$houseType])
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
        $news = $this->newsModel->where("isnew_switch",true)->limit(10)->select();
        $questions = $this->modelQuestion->where([])->limit(10)->select();
        $hotHouse=$this->model->where('IsHot_switch',true)->select();
        $this->view->assign("HotHouse",$hotHouse);
        $this->view->assign("questions",$questions);
        $this->view->assign("slider",$slider);
        $this->view->assign("news",$news);
        return $this->view->fetch();
    }

    /**
     * 默认方法
     * @author Sir Fu
     */
    public function homeAction()
    {
        return view('index/index-box');
    }

    /**
     * @description The APP 全局MISS路由，一个父级操作.
     * @return string
     */
    public function missAction()
    {
        return view('index/index');
    }
}
