<?php

namespace app\common\model;

use app\common\model\Model;
use app\common\model\TypePark;

/**
 * This is the model class for table "{{%type}}".
 *
 * @property integer $id
 * @property integer $is_delete
 * @property integer $type
 * @property string $name
 * @property string $description
 * @property string $created_at
 * @property string $updated_at
 *
 * @property TypePark[] $labelParks
 */
class Type extends Model
{

    /**
     * 数据库表名
     * 加格式‘{{%}}’表示使用表前缀，或者直接完整表名
     * @author Sir Fu
     */
    protected $table = '{{%type}}';

    protected $field = [
        'id',
        'is_delete',
        'type',
        'name',
        'unique',
        'order',
        'name',
        'description',
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
     * @return array
     */
    public static function getTypeList()
    {
        return self::T('type');
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            'rule'=>[
                ['type','number|in:1,2,3,4,5,6,7','类型 无效'],
                ['is_delete','in:0,1','时效 无效'],
                ['name','max:32'],
                ['description','max:255'],
            ],
            'msg'=>[
                'group.in'=> '此类型不允许',
            ]
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
            'type' => '父级类型:1=预定,2=客户,3=房东,4=新房,5=二手房,6=楼房,7=客服,8=;默认1;',
            'name' => '标签',
            'group' => '组别',
            'unique'=>'识别',
            'order' => '排序',
            'description' => '类型备注',
            'created_at' => '创建时间',
            'updated_at' => '修改时间',
        ];
    }

    /**
     * @return \think\model\relation\HasMany
     */
    public function getTypeParks()
    {
        return $this->hasMany(ucfirst(TypePark::tableNameSuffix()), 'id', 'type_id');
    }
}
