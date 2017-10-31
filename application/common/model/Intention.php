<?php

namespace app\common\model;

use think\Model;

class Intention extends Model
{
    // 表名
    protected $name = 'intention';

    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';

    // 追加属性
    protected $append = [
        'housetype_text',
        'yusuzongjia_text',
        'status_text'
    ];



    public function getHousetypeList()
    {
        return ['0' => __('Housetype 0'),'1' => __('Housetype 1'),'2' => __('Housetype 2')];
    }

    public function getYusuzongjiaList()
    {
        return ['0' => __('Yusuzongjia 0'),'1' => __('Yusuzongjia 1'),'2' => __('Yusuzongjia 2'),'3' => __('Yusuzongjia 3'),'4' => __('Yusuzongjia 4'),'5' => __('Yusuzongjia 5'),'6' => __('Yusuzongjia 6'),'7' => __('Yusuzongjia 7'),'8' => __('Yusuzongjia 8')];
    }

    public function getStatusList()
    {
        return ['0' => __('Status 0'),'1' => __('Status 1'),'2' => __('Status 2'),'3' => __('Status 3'),'4' => __('Status 4')];
    }


    public function getHousetypeTextAttr($value, $data)
    {
        $value = $value ? $value : $data['housetype'];
        $list = $this->getHousetypeList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getYusuzongjiaTextAttr($value, $data)
    {
        $value = $value ? $value : $data['yusuzongjia'];
        $list = $this->getYusuzongjiaList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getStatusTextAttr($value, $data)
    {
        $value = $value ? $value : $data['status'];
        $list = $this->getStatusList();
        return isset($list[$value]) ? $list[$value] : '';
    }



}
