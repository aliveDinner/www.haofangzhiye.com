<?php

namespace app\admin\validate;

use think\Validate;

class Village extends Validate
{
    /**
     * 验证规则
     */
    protected $rule = [
        //'VillageName' => 'require|unique:village',
    ];
    /**
     * 提示消息
     */
    protected $message = [
    ];
    /**
     * 验证场景
     */
    protected $scene = [
        'add'  => ['VillageName' => 'require|unique:village'],
        'edit' => [],
    ];
    
}
