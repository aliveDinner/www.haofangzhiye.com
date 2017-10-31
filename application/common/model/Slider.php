<?php

namespace app\common\model;

use think\Model;

class Slider extends Model
{
    // 表名
    protected $name = 'slider';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    
    // 追加属性
    protected $append = [
        'is_passed_text',
        'type_text',
        'app_text',
        'status_text'
    ];
    

    protected static function init()
    {
        self::afterInsert(function ($row) {
            $row->save(['weigh' => $row['id']]);
        });
    }

    
    public function getIsPassedList()
    {
        return ['1' => __('Is_passed 1'),'2' => __('Is_passed 2'),'3' => __('Is_passed 3')];
    }     

    public function getTypeList()
    {
        return ['1' => __('Type 1'),'2' => __('Type 2'),'3' => __('Type 3'),'4' => __('Type 4'),'5' => __('Type 5'),'6' => __('Type 6'),'7' => __('Type 7')];
    }     

    public function getAppList()
    {
        return ['1' => __('App 1'),'2' => __('App 2')];
    }     

    public function getStatusList()
    {
        return ['0' => __('Status 0'),'1' => __('Status 1'),'2' => __('Status 2')];
    }     


    public function getIsPassedTextAttr($value, $data)
    {        
        $value = $value ? $value : $data['is_passed'];
        $list = $this->getIsPassedList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getTypeTextAttr($value, $data)
    {        
        $value = $value ? $value : $data['type'];
        $list = $this->getTypeList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getAppTextAttr($value, $data)
    {        
        $value = $value ? $value : $data['app'];
        $list = $this->getAppList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getStatusTextAttr($value, $data)
    {        
        $value = $value ? $value : $data['status'];
        $list = $this->getStatusList();
        return isset($list[$value]) ? $list[$value] : '';
    }

    /**
     * @param array $where
     * @param int $limit
     * @param bool $isDefault
     * @return array
     */
    public  function getSlider($where = [],$limit = 6,$isDefault = false){
        $ret = [];
        $limit = $limit ? $limit : 6;
        if (!empty($where)){
            $time = "'".date('Y-m-d')."'";
            $condition = [
                'is_delete_switch'=>'1',
                'is_passed'=>'2',
                'status'=>'1',
            ];
            if (!$isDefault){
                $condition[] = ['exp',implode(' ',['`start_at`','<=',$time])];
                $condition[] = ['exp',implode(' ',['`end_at`','>=',$time])];
            }
            $where = array_merge($condition,$where);
            $ret = $this->where($where)->order('`weigh` ASC')->limit($limit)->select();
        }
        return $ret;
    }


    /**
     * @return \think\model\relation\HasOne
     */
    public function getBackUser()
    {
        return $this->hasOne(ucfirst(BackUser::tableNameSuffix()), 'id', 'back_user_id');
    }


}
