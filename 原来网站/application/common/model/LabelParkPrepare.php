<?php

namespace app\common\model;

use app\common\model\Label;
use app\common\model\LabelPark;
use app\common\validate\LabelParkValidate;

/**
 * This is the model class for table "{{%label_park}}".
 *
 * @property integer $id
 * @property integer $is_delete
 * @property integer $label_id
 * @property integer $target_id
 * @property integer $group
 * @property string $name
 * @property string $description
 * @property string $created_at
 * @property string $updated_at
 *
 * @property Label $label
 */
class LabelParkPrepare extends LabelPark
{

    public $type = '1';

    /**
     * 数据库表名
     * 加格式‘{{%}}’表示使用表前缀，或者直接完整表名
     * @author Sir Fu
     */
    protected $table = '{{%label_park_prepare}}';

    /**
     * @return Object|\think\Validate
     */
    public static function getValidate(){
        return LabelParkValidate::load();
    }
}

