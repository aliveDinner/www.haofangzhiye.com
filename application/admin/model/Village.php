<?php

namespace app\admin\model;

use think\Model;

class Village extends Model
{
    // 表名
    protected $name = 'village';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = false;

    // 定义时间戳字段名
    protected $createTime = false;
    protected $updateTime = false;
    
    // 追加属性
    protected $append = [
        'BuildType_text'
    ];
    

    
    public function getBuildtypeList()
    {
        return ['banlou' => __('BuildType banlou'),'talou' => __('BuildType talou'),'pingfang' => __('BuildType pingfang')];
    }     


    public function getBuildtypeTextAttr($value, $data)
    {        
        $value = $value ? $value : $data['BuildType'];
        $list = $this->getBuildtypeList();
        return isset($list[$value]) ? $list[$value] : '';
    }




}
