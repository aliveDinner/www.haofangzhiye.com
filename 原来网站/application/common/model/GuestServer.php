<?php

namespace app\common\model;

use app\common\model\Model;
use app\common\model\BackUser;
use app\common\model\Guest;

/**
 * This is the model class for table "{{%guest_server}}".
 *
 * @property integer $id
 * @property integer $is_delete
 * @property integer $guest_id
 * @property integer $back_user_id
 * @property string $created_at
 * @property string $updated_at
 *
 * @property BackUser $backUser
 * @property Guest $guest
 */
class GuestServer extends Model
{

    /**
     * 数据库表名
     * 加格式‘{{%}}’表示使用表前缀，或者直接完整表名
     * @author Sir Fu
     */
    protected $table = '{{%guest_server}}';

    protected $field = [
        'id',
        'is_delete',
        'guest_id',
        'back_user_id',
        'created_at',
        'updated_at',
    ];

    // 保存自动完成列表
    protected $auto = [];
    // 新增自动完成列表
    protected $insert = [];
    // 更新自动完成列表
    protected $update = [];

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['is_delete', 'guest_id', 'back_user_id'], 'integer'],
            [['guest_id', 'back_user_id', 'created_at', 'updated_at'], 'required'],
            [['created_at', 'updated_at'], 'safe'],
            [['back_user_id'], 'exist', 'skipOnError' => true, 'targetClass' => BackUser::tableNameSuffix(), 'targetAttribute' => ['back_user_id' => 'id']],
            [['guest_id'], 'exist', 'skipOnError' => true, 'targetClass' => Guest::tableNameSuffix(), 'targetAttribute' => ['guest_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'is_delete' => '时效;0=失效,1=有效;默认1;',
            'guest_id' => '客户表ID',
            'back_user_id' => '后台管理员ID',
            'created_at' => '创建时间',
            'updated_at' => '修改时间',
        ];
    }

    /**
     * @return \think\model\relation\HasOne
     */
    public function getBackUser()
    {
        return $this->hasOne(ucfirst(BackUser::tableNameSuffix()), 'back_user_id', 'id');
    }

    /**
     * @return \think\model\relation\HasOne
     */
    public function getGuest()
    {
        return $this->hasOne(Guest::tableNameSuffix(), ['id' => 'guest_id']);
    }
}
