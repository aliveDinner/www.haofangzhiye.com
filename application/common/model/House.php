<?php

namespace app\common\model;

use think\Model;

class House extends Model
{
    // 表名
    protected $name = 'house';

    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';

    // 追加属性
    protected $append = [
        'HouseSouceType_text',
        'HouseType_text',
        'ChaoXiang_text',
        'ZhuZhaiLeiXing_text',
        'ZhuangXiuLeiXing_text',
        'ChanQuanNianXian_text',
        'ChanQuan_text',
        'ShowStatus_text',
        'Status_text'
    ];


    protected static function init()
    {
        self::afterInsert(function ($row) {
            $row->save(['weigh' => $row['Id']]);
        });
    }


    public function getHousesoucetypeList()
    {
        return ['0' => __('HouseSouceType 0'),'1' => __('HouseSouceType 1')];
    }

    public function getHousetypeList()
    {
        return ['0' => __('HouseType 0'),'1' => __('HouseType 1'),'2' => __('HouseType 2')];
    }

    public function getChaoxiangList()
    {
        return ['NB' => __('ChaoXiang NB'),'N' => __('ChaoXiang N'),'DN' => __('ChaoXiang DN'),'D' => __('ChaoXiang D'),'X' => __('ChaoXiang X'),'XN' => __('ChaoXiang XN'),'XB' => __('ChaoXiang XB'),'B' => __('ChaoXiang B'),'DB' => __('ChaoXiang DB'),'DX' => __('ChaoXiang DX')];
    }

    public function getZhuzhaileixingList()
    {
        return ['PTZZ' => __('ZhuZhaiLeiXing PTZZ'),'GY' => __('ZhuZhaiLeiXing GY'),'BS' => __('ZhuZhaiLeiXing BS'),'PF' => __('ZhuZhaiLeiXing PF'),'SHY' => __('ZhuZhaiLeiXing SHY'),'QT' => __('ZhuZhaiLeiXing QT')];
    }

    public function getZhuangxiuleixingList()
    {
        return ['MP' => __('ZhuangXiuLeiXing MP'),'JDZX' => __('ZhuangXiuLeiXing JDZX'),'ZDZX' => __('ZhuangXiuLeiXing ZDZX'),'JZX' => __('ZhuangXiuLeiXing JZX'),'HHZX' => __('ZhuangXiuLeiXing HHZX')];
    }

    public function getChanquannianxianList()
    {
        return ['Y70' => __('ChanQuanNianXian Y70'),'Y50' => __('ChanQuanNianXian Y50'),'Y40' => __('ChanQuanNianXian Y40')];
    }

    public function getChanquanList()
    {
        return ['SPF' => __('ChanQuan SPF'),'SZLY' => __('ChanQuan SZLY'),'JJSY' => __('ChanQuan JJSY'),'SYQ' => __('ChanQuan SYQ'),'GF' => __('ChanQuan GF'),'QT' => __('ChanQuan QT')];
    }

    public function getShowstatusList()
    {
        return ['0' => __('ShowStatus 0'),'1' => __('ShowStatus 1')];
    }

    public function getStatusList()
    {
        return ['0' => __('Status 0'),'1' => __('Status 1'),'2' => __('Status 2'),'3' => __('Status 3')];
    }
    public function getRoomList()
    {
        return ['1' =>  '一居','2' => '二居','3' => '三居','4' => '四居','5' => '五居','6'=>'五居以上'];
    }
    public function getParlourList()
    {
        return ['1' =>  '一厅','2' => '二厅','3' => '二厅以上'];
    }
    public function getToiletList()
    {
        return ['1' =>  '一卫','2' => '二卫','3' => '二卫以上'];
    }
    public function getPriceList()
    {
        return ['1' =>  '50万以内','2' => '50-70万','3' => '70-100万','4' => '100-130万','5' => '130-160万','6'=>'160-200万','7'=>'200万以上'];
    }
    public function getMianJiList()
    {
        return ['1' =>  '50㎡以内','2' => '50-70㎡','3' => '70-100㎡','4' => '100-130㎡','5' => '130-160㎡','6'=>'160-200㎡','7'=>'200㎡以上'];
    }
    public function getCreateTimeList()
    {
        return ['1' =>  '一天内发布','3' => '三天内发布','7' => '一个星期内发布','21' => '三个星期内发布','31' => '一个月内发布','32'=>'一个月以上发布'];
    }

    public function getHousesoucetypeTextAttr($value, $data)
    {
        $value = $value ? $value : $data['HouseSouceType'];
        $list = $this->getHousesoucetypeList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getHousetypeTextAttr($value, $data)
    {
        $value = $value ? $value : $data['HouseType'];
        $list = $this->getHousetypeList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getChaoxiangTextAttr($value, $data)
    {
        $value = $value ? $value : $data['ChaoXiang'];
        $list = $this->getChaoxiangList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getZhuzhaileixingTextAttr($value, $data)
    {
        $value = $value ? $value : $data['ZhuZhaiLeiXing'];
        $list = $this->getZhuzhaileixingList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getZhuangxiuleixingTextAttr($value, $data)
    {
        $value = $value ? $value : $data['ZhuangXiuLeiXing'];
        $list = $this->getZhuangxiuleixingList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getChanquannianxianTextAttr($value, $data)
    {
        $value = $value ? $value : $data['ChanQuanNianXian'];
        $list = $this->getChanquannianxianList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getChanquanTextAttr($value, $data)
    {
        $value = $value ? $value : $data['ChanQuan'];
        $list = $this->getChanquanList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getShowstatusTextAttr($value, $data)
    {
        $value = $value ? $value : $data['ShowStatus'];
        $list = $this->getShowstatusList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getStatusTextAttr($value, $data)
    {
        $value = $value ? $value : $data['Status'];
        $list = $this->getStatusList();
        return isset($list[$value]) ? $list[$value] : '';
    }




}
