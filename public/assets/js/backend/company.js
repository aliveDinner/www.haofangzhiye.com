define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'company/index',
                    add_url: 'company/add',
                    edit_url: 'company/edit',
                    del_url: 'company/del',
                    multi_url: 'company/multi',
                    table: 'company',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'id',
                sortName: 'id',
                columns: [
                    [
                        {checkbox: true},
                        {field: 'id', title: __('Id')},
                        {field: 'companyname', title: __('Companyname')},
                        {field: 'contactphone', title: __('Contactphone')},
                        {field: 'contactphone1', title: __('Contactphone1')},
                        {field: 'contact', title: __('Contact')},
                        {field: 'qq', title: __('Qq')},
                        {field: 'email', title: __('Email')},
                        {field: 'wechat', title: __('Wechat')},
                        {field: 'adress', title: __('Adress')},
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