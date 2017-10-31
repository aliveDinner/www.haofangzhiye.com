<?php

namespace app\manage\model;

use app\common\model\BuildingBase as BaseBuildingBase;
use app\manage\validate\BuildingBaseValidate;

use app\manage\model\City;
use app\manage\model\BuildingDetail;
use app\manage\model\HouseBetter;
use app\manage\model\House;

/**
 * This is the model class for table "{{%building_base}}".
 *
 * @property integer $id
 * @property integer $is_delete
 * @property integer $type
 * @property integer $city_id
 * @property string $name
 * @property string $address
 * @property string $created_at
 * @property string $updated_at
 *
 * @property City $city
 * @property BuildingDetail[] $buildingDetails
 * @property HouseBetter[] $houseBetters
 * @property House[] $newHouses
 */
class BuildingBase extends BaseBuildingBase
{

    /**
     * @return Object|\think\Validate
     */
    public static function getValidate(){
        return BuildingBaseValidate::load();
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
