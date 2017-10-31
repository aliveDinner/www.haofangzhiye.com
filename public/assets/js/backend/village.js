define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'village/index',
                    add_url: 'village/add',
                    edit_url: 'village/edit',
                    del_url: 'village/del',
                    multi_url: 'village/multi',
                    table: 'village',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'Id',
                sortName: 'Id',
                columns: [
                    [
                        {checkbox: true},
                        {field: 'Id', title: __('Id')},
                        {field: 'VillageName', title: __('VillageName')},
                        {field: 'Price', title: __('Price')},
                        {field: 'BuildYear', title: __('BuildYear')},
                        {field: 'BuildType_text', title: __('BuildType'), operate:false},
                        {field: 'VillagePosition', title: __('VillagePosition')},
                        {field: 'PropertyCompany', title: __('PropertyCompany')},
                        {field: 'Developers', title: __('Developers')},
                        {field: 'Images', title: __('Images'), formatter: Table.api.formatter.images},
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