define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'housemanage/house/index',
                    add_url: 'housemanage/house/add',
                    edit_url: 'housemanage/house/edit',
                    del_url: 'housemanage/house/del',
                    multi_url: 'housemanage/house/multi',
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
                        {field: 'Id', title: __('Id'), operate:false},
                        {field: 'HouseName', title: __('HouseName'),operate: 'LIKE %...%', placeholder: '关键字，模糊搜索'},
                        {field: 'BiaoTi', title: __('BiaoTi'),operate: 'LIKE %...%', placeholder: '关键字，模糊搜索'},
                        {field: 'HouseSouceType_text', title: __('HouseSouceType'), searchList: {'0': __('HouseSouceType 0'),'1':__('HouseSouceType 1')}},
                        {field: 'HouseType_text', title: __('HouseType'),searchList:{'0':__('HouseType 0'),'1':__('HouseType 1'),'2':__('HouseType 2')}},
                        {field: 'Adress_city', title: __('Adress_city'),operate: 'LIKE %...%',data: 'data-toggle="city-picker"',style: 'max-width:200px;'},
                        {field: 'HuXing_Shi', title: __('HuXing_Shi')},
                        {field: 'HuXing_Ting', title: __('HuXing_Ting')},
                        {field: 'HuXing_Wei', title: __('HuXing_Wei')},
                        {field: 'JianZhuMianJi', title: __('JianZhuMianJi')},
                        {field: 'LouCeng', title: __('LouCeng')},
                        {field: 'CengGao', title: __('CengGao')},
                        {field: 'ChaoXiang_text', title: __('ChaoXiang'), operate:false},
                        {field: 'DanJia', title: __('DanJia')},
                        {field: 'FangJia', title: __('FangJia')},
                        {field: 'BiaoQian', title: __('BiaoQian'), operate:false},
                        {field: 'ZhuZhaiLeiXing_text', title: __('ZhuZhaiLeiXing'), operate:false},
                        {field: 'ZhuangXiuLeiXing_text', title: __('ZhuangXiuLeiXing'), operate:false},
                        {field: 'ChanQuanNianXian_text', title: __('ChanQuanNianXian'), operate:false},
                        {field: 'ChanQuan_text', title: __('ChanQuan'), operate:false},
                        {field: 'JianZhuNianDai', title: __('JianZhuNianDai')},
                        {field: 'MianJi', title: __('MianJi'), operate:false},
                        {field: 'LianXiRen', title: __('LianXiRen')},
                        {field: 'LianXiDianHua', title: __('LianXiDianHua')},
                        {field: 'ShenFenZheng', title: __('ShenFenZheng')},
                        {field: 'ShowStatus_text', title: __('ShowStatus'), searchList: {'0':__('ShowStatus 0'),'1':__('ShowStatus 1')}},
                        {field: 'Status_text', title: __('Status'), searchList: {'0': __('Status 0'),'1':__('Status 1'),'2' : __('Status 2'),'3': __('Status 3')}},
                        {field: 'CreateByUser', title: __('CreateByUser'),operate: 'LIKE %...%', placeholder: '关键字，模糊搜索'},
                        {field: 'updatetime', title: __('Updatetime'), formatter: Table.api.formatter.datetime, operate: 'BETWEEN', type: 'datetime', addclass: 'datetimepicker', data: 'data-date-format="YYYY-MM-DD"', style: 'min-width:90px;'},
                        {field: 'IsHot_switch', title: __('IsHot_switch'),formatter: Controller.api.formatter.IsCheck,type:'checkbox', style:'width:30px;margin-bottom:2px;'},
                        {field: 'IsNew_switch', title: __('IsNew_switch'),formatter: Controller.api.formatter.IsCheck,type:'checkbox', style:'width:30px;margin-bottom:2px;'},
                        {field: 'IsZT_switch', title: __('IsZT_switch'),formatter: Controller.api.formatter.IsCheck,type:'checkbox', style:'width:30px;margin-bottom:2px;'},
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
            formatter: {
                IsCheck: function (value, row, index) {
                    if(typeof value ==='string')
                        value=Number(value);
                    return "<a href='javascript:;' class='btn btn-" + (value ? "info" : "default") + " btn-xs btn-change' data-id='"
                        + row.id + "' data-params='ischeck=" + (value ? 0 : 1) + "'>" + (value ? __('Yes') : __('No')) + "</a>";
                }
            },
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});