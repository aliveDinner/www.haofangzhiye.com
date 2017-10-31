<?php

namespace app\manage\model;

use app\common\model\HouseHostServer as BaseHouseHostServer;
use app\manage\validate\HouseHostServerValidate;

use app\manage\model\BackUser;
use app\manage\model\HouseHost;

/**
 * This is the model class for table "{{%house_host_server}}".
 *
 * @property integer $id
 * @property integer $is_delete
 * @property integer $house_host_id
 * @property integer $back_user_id
 * @property string $created_at
 * @property string $updated_at
 *
 * @property BackUser $backUser
 * @property HouseHost $houseHost
 */
class HouseHostServer extends BaseHouseHostServer
{

    /**
     * @return Object|\think\Validate
     */
    public static function getValidate(){
        return HouseHostServerValidate::load();
    }

    /**
     * @param $data
     * @param string $scene
     * @return bool
     */
    public static function check($data,$scene = ''){
        $validate = self::getValidate();

        //设定场景
        if (is_string($scene) && $scene !== ''){
            $validate->scene($scene);
        }

        return $validate->check($data);
    }
}
