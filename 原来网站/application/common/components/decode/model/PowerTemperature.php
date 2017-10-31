<?php

namespace app\common\components\decode\model;

use app\common\model\Model;
use app\common\components\decode\validate\GpsValidate;

class PowerTemperature extends Model {

    /**
     * @var string
     */
    protected $pk = 'id';

    // 数据表字段信息 留空则自动获取
    protected $field = [
        'id',
        'alarm_flag',
        'status',
        'lng',
        'lat',
        'high',
        'speed',
        'orientation',
        'create_time',
        'remark',
        'is_delete',
        'update_time',
    ];

    /**
     * @return string
     */
    public static function tableName()
    {
        return parent::getTablePrefix().'gps';
    }

    /**
     * 自动验证规则
     * @author Sir Fu
     */
    protected $_validate = [];

    /**
     * 自动完成规则
     * @author Sir Fu
     */
    protected $_auto = [];

    /**
     * @param array $data
     * @param array $where
     * @param null $sequence
     * @return false|int
     */
    public function save($data = [], $where = [], $sequence = null)
    {

        $ret = false;
        $options = [''];

//        $validate = new GpsValidate();
//        $newData = $this->getInitData($data,$options);
//        $result = $validate->check($newData);
//
//        if ($result){
//            $ret = parent::save($newData, $where, $sequence); // TODO: Change the autogenerated stub
//        }

        return $ret;
    }

    /**
     * @param array $data
     * @param array $options
     * @return array
     */
    public function getInitData($data = [],$options = [])
    {

        $newData = [];

        return $newData;
    }

}