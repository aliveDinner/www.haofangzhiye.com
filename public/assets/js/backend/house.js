define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'house/index',
                    add_url: 'house/add',
                    edit_url: 'house/edit',
                    del_url: 'house/del',
                    multi_url: 'house/multi',
                    table: 'house',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'Id',
                sortName: 'weigh',
                columns: [
                    [
                        {checkbox: true},
                        {field: 'Id', title: __('Id')},
                        {field: 'HouseName', title: __('HouseName')},
                        {field: 'BiaoTi', title: __('BiaoTi')},
                        {field: 'HouseSouceType_text', title: __('HouseSouceType'), operate:false},
                        {field: 'HouseType_text', title: __('HouseType'), operate:false},
                        {field: 'Adress_city', title: __('Adress_city')},
                        {field: 'Adress', title: __('Adress')},
                        {field: 'HuXing_Shi', title: __('HuXing_Shi')},
                        {field: 'HuXing_Ting', title: __('HuXing_Ting')},
                        {field: 'HuXing_Wei', title: __('HuXing_Wei')},
                        {field: 'JianZhuMianJi', title: __('JianZhuMianJi')},
                        {field: 'MianJi', title: __('MianJi')},
                        {field: 'LouCeng', title: __('LouCeng')},
                        {field: 'CengGao', title: __('CengGao')},
                        {field: 'Elevator_switch', title: __('Elevator_switch')},
                        {field: 'ChaoXiang_text', title: __('ChaoXiang'), operate:false},
                        {field: 'DanJia', title: __('DanJia')},
                        {field: 'FangJia', title: __('FangJia')},
                        {field: 'BiaoQian', title: __('BiaoQian')},
                        {field: 'ZhuZhaiLeiXing_text', title: __('ZhuZhaiLeiXing'), operate:false},
                        {field: 'ZhuangXiuLeiXing_text', title: __('ZhuangXiuLeiXing'), operate:false},
                        {field: 'ChanQuanNianXian_text', title: __('ChanQuanNianXian'), operate:false},
                        {field: 'ChanQuan_text', title: __('ChanQuan'), operate:false},
                        {field: 'JianZhuNianDai', title: __('JianZhuNianDai')},
                        {field: 'Images', title: __('Images'), formatter: Table.api.formatter.images},
                        {field: 'LianXiRen', title: __('LianXiRen')},
                        {field: 'LianXiDianHua', title: __('LianXiDianHua')},
                        {field: 'ShenFenZheng', title: __('ShenFenZheng')},
                        {field: 'ShowStatus_text', title: __('ShowStatus')},
                        {field: 'Status_text', title: __('Status')},
                        {field: 'CreateByUserId', title: __('CreateByUserId')},
                        {field: 'CreateByUser', title: __('CreateByUser')},
                        {field: 'createtime', title: __('Createtime'), formatter: Table.api.formatter.datetime},
                        {field: 'updatetime', title: __('Updatetime'), formatter: Table.api.formatter.datetime},
                        {field: 'IsHot_switch', title: __('IsHot_switch')},
                        {field: 'IsNew_switch', title: __('IsNew_switch')},
                        {field: 'IsZT_switch', title: __('IsZT_switch')},
                        {field: 'weigh', title: __('Weigh')},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
        },
        add: function () {
            Controller.api.bindevent();
        },
        edit: function () {
            Controller.api.bindevent();
        },
        api: {
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});