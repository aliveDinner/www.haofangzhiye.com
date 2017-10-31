<?php

namespace app\common\model;

use app\common\model\Model;
use app\common\model\BuildingBase;

/**
 * This is the model class for table "hfzy_building_detail".
 *
 * @property integer $id
 * @property integer $is_delete
 * @property integer $building_base_id
 * @property string $description
 * @property string $reason
 * @property string $feature
 * @property string $featureExtra
 * @property string $decoration
 * @property string $decorationExtra
 * @property string $saleStatus
 * @property integer $priceMin
 * @property integer $priceMax
 * @property integer $priceAvg
 * @property string $priceSum
 * @property string $priceSumType
 * @property string $status
 * @property string $buildingType
 * @property string $buildingTypeExtra
 * @property double $buildingArea
 * @property double $houseArea
 * @property integer $areaMax
 * @property integer $areaMin
 * @property integer $buildingNum
 * @property integer $houseNum
 * @property integer $parkingNum
 * @property string $started_at
 * @property string $joined_at
 * @property string $weight
 * @property string $address
 * @property string $url
 * @property string $url_icon
 * @property string $adTitle
 * @property double $FAR
 * @property double $poolRate
 * @property string $structure
 * @property string $wall
 * @property string $builders
 * @property string $developer
 * @property string $investor
 * @property string $contacter
 * @property string $contacterTel
 * @property string $saleTel
 * @property string $saleAddress
 * @property string $propertyName
 * @property string $propertyFee
 * @property string $created_by
 * @property string $created_at
 * @property string $updated_by
 * @property string $updated_at
 *
 * @property BuildingBase $buildingBase
 */
class BuildingDetail extends Model
{

    /**
     * 数据库表名
     * 加格式‘{{%}}’表示使用表前缀，或者直接完整表名
     * @author Sir Fu
     */
    protected $table = '{{%building_detail}}';

    protected $field = [
        'id',
        'is_delete',
        'building_base_id',
        'description',
        'reason',
        'feature',
        'featureExtra',
        'decoration',
        'decorationExtra',
        'saleStatus',
        'priceMin',
        'priceMax',
        'priceAvg',
        'priceSum',
        'priceSumType',
        'status',
        'buildingType',
        'buildingTypeExtra',
        'buildingArea',
        'houseArea',
        'areaMax',
        'areaMin',
        'buildingNum',
        'houseNum',
        'parkingNum',
        'started_at',
        'joined_at',
        'weight',
        'address',
        'url',
        'url_icon',
        'adTitle',
        'FAR',
        'poolRate',
        'structure',
        'wall',
        'builders',
        'developer',
        'investor',
        'contacter',
        'contacterTel',
        'saleTel',
        'saleAddress',
        'propertyName',
        'propertyFee',
        'created_by',
        'created_at',
        'updated_by',
        'updated_at',
    ];

    // 保存自动完成列表
    protected $auto = [];
    // 新增自动完成列表
    protected $insert = [];
    // 更新自动完成列表
    protected $update = [];
    // 楼盘类型
    public $typeList = [
        '1'=>'住宅',
        '2'=>'公寓',
        '3'=>'商铺',
        '4'=>'酒店',
        '5'=>'酒店式公寓',
        '6'=>'别墅',
        '7'=>'海景房',
        '8'=>'景观房',
        '9'=>'写字楼',
    ];
    // 楼盘特色
    public $featureList = [
        '1'=>'特色别墅',
        '2'=>'养老居所',
        '3'=>'高档小区',
        '4'=>'景观居所',
        '5'=>'宜居生态',
        '6'=>'花园洋房',
        '7'=>'投资地产',
        '8'=>'创意地产',
        '9'=>'水景地产',
        '10'=>'低密居住',
    ];
    // 装修情况
    public $decorationList = [
        '1'=>'毛坯',
        '2'=>'简易装修',
        '3'=>'中档装修',
        '4'=>'精装修',
    ];
    // 建筑形式
    public $buildingTypeList = [
        '1'=>'底层',
        '2'=>'多层',
        '3'=>'小高层',
        '4'=>'高层',
    ];
    // 权重设置
    public $weightList = [
        '1'=>'热销',
        '2'=>'优惠',
        '3'=>'最新',
        '4'=>'置顶',
        '5'=>'推荐',
    ];
    // 销售状态
    public $saleStatusList = [
        '1'=>'待售',
        '2'=>'预售',
        '3'=>'在售',
        '4'=>'尾售',
        '5'=>'已售完',
        '6'=>'停售',
    ];

    //房型
    public $chamberList = [
        '1'=>'一室',
        '2'=>'一室',
        '3'=>'三室',
        '4'=>'四室',
        '5'=>'五室',
        '6'=>'五室以上',
    ];
    // 总价范围
    public $priceSumTypeList = [
        '1'=>'30万以下',
        '2'=>'30-50万',
        '3'=>'50-80万',
        '4'=>'80-120万',
        '5'=>'120-160万',
        '6'=>'160-200万',
        '7'=>'200-300万',
        '8'=>'300-500万',
        '9'=>'500-1000万',
        '10'=>'1000万以上',
    ];
    // 状态/现房期房
    public $statusList = [
        '1'=>'期房',
        '2'=>'准现房',
        '3'=>'现房',
        '4'=>'成熟小区',
    ];
    // 总价
    public $priceSumList = [
        '1'=>'30万以下',
        '2'=>'30-50万',
        '3'=>'50-80万',
        '4'=>'80-120万',
        '5'=>'120-160万',
        '6'=>'160-200万',
        '7'=>'200-300万',
        '8'=>'300-500万',
        '9'=>'500-1000万',
        '10'=>'1000万以上',
    ];
    // 均价
    public $priceAvgList = [
        '1'=>'4000元以下',
        '2'=>'4000-6000元',
        '3'=>'6000-8000元',
        '4'=>'8000-1万',
        '5'=>'1-1.2万',
        '6'=>'1.2-1.5万',
        '7'=>'1.5-2万',
        '8'=>'2-3万',
        '9'=>'3万以上',
    ];
    // 开盘日期
    public $dateList = [
        '1'=>'本月开盘',
        '2'=>'本月开盘',
        '3'=>'下月开盘',
        '4'=>'三月内开盘',
        '5'=>'六月内开盘',
        '6'=>'前三月已开',
        '7'=>'前六月已开',
    ];
    // 排序
    public $orderList = [
        '1'=>'单价由高到低',
        '2'=>'单价由低到高',
        '3'=>'开盘时间倒序',
        '4'=>'开盘时间顺序',
        '5'=>'入住时间倒序',
        '6'=>'入住时间顺序',
        '7'=>'面积从大到小',
        '8'=>'面积从小到大',
    ];

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            'rule'=>[
                ['is_delete','in:0,1','时效 无效'],
                ['building_base_id','number','楼盘 无效'],
                ['description','max:255',],
                ['address','max:255',],
                ['url','max:255',],
            ],
            'msg'=>[],
            'data'=>[
                [['is_delete', 'building_base_id', 'priceMin', 'priceMax', 'priceAvg', 'areaMax', 'areaMin', 'buildingNum', 'houseNum', 'parkingNum'], 'integer'],
                [['building_base_id', 'address', 'created_at', 'updated_at'], 'required'],
                [['buildingArea', 'houseArea', 'FAR', 'poolRate'], 'number'],
                [['started_at', 'joined_at', 'created_at', 'updated_at'], 'safe'],
                [['description', 'reason', 'address', 'url', 'url_icon', 'adTitle', 'structure', 'wall'], 'string', 'max' => 255],
                [['feature', 'featureExtra', 'decoration', 'decorationExtra', 'saleStatus', 'priceSum', 'priceSumType', 'status', 'buildingType', 'buildingTypeExtra', 'weight'], 'string', 'max' => 150],
                [['builders', 'developer', 'investor', 'contacter', 'contacterTel', 'saleTel', 'saleAddress', 'propertyName', 'propertyFee'], 'string', 'max' => 50],
                [['created_by', 'updated_by'], 'string', 'max' => 20],
                [['building_base_id'], 'exist', 'skipOnError' => true, 'targetClass' => BuildingBase::className(), 'targetAttribute' => ['building_base_id' => 'id']],
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
            'building_base_id' => '楼盘表ID',
            'description' => '详细描述',
            'reason' => '推荐理由',
            'feature' => '楼盘特色',
            'featureExtra' => '其他楼盘特色',
            'decoration' => '装修情况',
            'decorationExtra' => '其他装修情况',
            'saleStatus' => '销售状态',
            'priceMin' => '楼盘起价',
            'priceMax' => '楼盘最高价',
            'priceAvg' => '楼盘均价',
            'priceSum' => '单套总价',
            'priceSumType' => '单套总价范围',
            'status' => '现房期房',
            'buildingType' => '建筑形式',
            'buildingTypeExtra' => '其他建筑形式',
            'buildingArea' => '占地面积',
            'houseArea' => '建筑面积',
            'areaMax' => '单套最大面积',
            'areaMin' => '单套最小面积',
            'buildingNum' => '总栋数',
            'houseNum' => '总套数',
            'parkingNum' => '停车位',
            'started_at' => '开盘日期',
            'joined_at' => '入住日期',
            'weight' => '权重设置',
            'address' => '详细地址',
            'url' => '楼盘封面',
            'url_icon' => '楼盘封面缩略图',
            'adTitle' => '楼盘广告语',
            'FAR' => '容积率',
            'poolRate' => '绿化率',
            'structure' => '结构',
            'wall' => '外墙',
            'builders' => '承建商',
            'developer' => '开发商',
            'investor' => '投资商',
            'contacter' => '现场接待人',
            'contacterTel' => '现场接待人',
            'saleTel' => '售楼处电话',
            'saleAddress' => '售楼处地址',
            'propertyName' => '物业公司',
            'propertyFee' => '物业费',
            'created_by' => '创建者',
            'created_at' => '修改时间',
            'updated_by' => '更新者',
            'updated_at' => '修改时间',
        ];
    }

    /**
     * @return \think\model\relation\HasOne
     */
    public function getBuildingBase()
    {
        return $this->hasOne(BuildingBase::tableNameSuffix(), ['id' => 'building_base_id']);
    }
}
