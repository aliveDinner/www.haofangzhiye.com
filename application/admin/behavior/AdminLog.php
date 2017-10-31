<?php

namespace app\admin\behavior;

use think\Config;

class AdminLog
{

    public function run(&$params)
    {
        if (request()->isPost()&&request()->action()!="add_house"&&request()->action()!="add_intention")
        {
            \app\admin\model\AdminLog::record();
        }
    }

}
