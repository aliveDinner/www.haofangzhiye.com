<?php

namespace app\common\model;

use think\Model;

class News extends Model
{
    // 表名
    protected $name = 'news';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = false;
    
    // 追加属性
    protected $append = [
        'newstype_text'
    ];
    

    protected static function init()
    {
        self::afterInsert(function ($row) {
            $row->save(['weigh' => $row['id']]);
        });
    }

    
    public function getNewstypeList()
    {
        return ['1' => __('Newstype 1'),'2' => __('Newstype 2'),'3' => __('Newstype 3')];
    }     


    public function getNewstypeTextAttr($value, $data)
    {        
        $value = $value ? $value : $data['newstype'];
        $list = $this->getNewstypeList();
        return isset($list[$value]) ? $list[$value] : '';
    }




}
