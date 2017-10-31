define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'user/index',
                    add_url: 'user/add',
                    edit_url: 'user/edit',
                    del_url: 'user/del',
                    multi_url: 'user/multi',
                    table: 'user',
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
                        {field: 'username', title: __('Username')},
                        {field: 'nickname', title: __('Nickname')},
                        {field: 'email', title: __('Email')},
                        {field: 'mobile', title: __('Mobile')},
                        {field: 'level', title: __('Level')},
                        {field: 'gender', title: __('Gender'), formatter: function (value) {
                                return value == '1' ? __('Male') : __('Female');
                            }},
                        {field: 'birthday', title: __('Birthday')},
                       {field: 'status_text', title: __('Status')},
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