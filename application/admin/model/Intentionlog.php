<?php

namespace app\admin\model;

use think\Model;

class Intentionlog extends Model
{
    // 表名
    protected $name = 'intentionlog';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = false;
    
    // 追加属性
    protected $append = [
        'logtype_text'
    ];
    

    
    public function getLogtypeList()
    {
        return ['1' => __('Logtype 1'),'2' => __('Logtype 2'),'3' => __('Logtype 3'),'4' => __('Logtype 4')];
    }     


    public function getLogtypeTextAttr($value, $data)
    {        
        $value = $value ? $value : $data['logtype'];
        $list = $this->getLogtypeList();
        return isset($list[$value]) ? $list[$value] : '';
    }




}
