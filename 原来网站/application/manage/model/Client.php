<?php

namespace app\manage\model;

use app\common\model\Client as BaseClient;
use app\manage\validate\ClientValidate;

use app\manage\model\ClientServer;
use app\manage\model\DealOrder;
use app\manage\model\Walk;

/**
 * This is the model class for table "{{%client}}".
 *
 * @property integer $id
 * @property integer $is_delete
 * @property integer $server
 * @property string $ID_cards
 * @property string $real_name
 * @property string $phone
 * @property string $nickname
 * @property string $address
 * @property string $email
 * @property string $avatar
 * @property integer $region_id
 * @property integer $type
 * @property integer $level
 * @property string $created_at
 * @property string $updated_at
 *
 * @property ClientServer[] $clientServers
 * @property DealOrder[] $takeOrders
 * @property Walk[] $walks
 */
class Client extends BaseClient
{

    /**
     * @return Object|\think\Validate
     */
    public static function getValidate(){
        return ClientValidate::load();
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
