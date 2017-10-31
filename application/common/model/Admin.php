<?php

namespace app\common\model;

use think\Model;
use think\Session;

class Admin extends Model
{

    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';
    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';

    /**
     * 重置用户密码
     * @author baiyouwen
     */
    public function resetPassword($uid, $NewPassword)
    {
        $passwd = $this->encryptPassword($NewPassword);
        $ret = $this->where(['id' => $uid])->update(['password' => $passwd]);
        return $ret;
    }

    // 密码加密
    protected function encryptPassword($password, $salt = '', $encrypt = 'md5')
    {
        return $encrypt($password . $salt);
    }

    public function getusertypeList()
    {
        return ['0' => __('usertype 0'),'1' => __('usertype 1'),'2' => __('usertype 2'),'3' => __('usertype 3')];
    }
    public function getusertypeTextAttr($value, $data)
    {
        $value = $value ? $value : $data['usertype'];
        $list = $this->getusertypeList();
        return isset($list[$value]) ? $list[$value] : '';
    }
}
