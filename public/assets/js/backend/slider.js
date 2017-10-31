define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'slider/index',
                    add_url: 'slider/add',
                    edit_url: 'slider/edit',
                    del_url: 'slider/del',
                    multi_url: 'slider/multi',
                    table: 'slider',
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
                        {field: 'is_delete_switch', title: __('Is_delete_switch')},
                        {field: 'is_passed_text', title: __('Is_passed'), operate:false},
                        {field: 'back_user_id', title: __('Back_user_id')},
                        {field: 'type_text', title: __('Type'), operate:false},
                        {field: 'url_image', title: __('Url_image'), formatter: Table.api.formatter.image},
                        {field: 'url_icon_image', title: __('Url_icon_image'), formatter: Table.api.formatter.image},
                        {field: 'target', title: __('Target')},
                        {field: 'title', title: __('Title')},
                        {field: 'start_at', title: __('Start_at')},
                        {field: 'end_at', title: __('End_at')},
                        {field: 'weigh', title: __('Weigh')},
                        {field: 'app_text', title: __('App'), operate:false},
                        {field: 'status', title: __('Status'), formatter: Table.api.formatter.status},
                        {field: 'isDefault_switch', title: __('IsDefault_switch')},
                        {field: 'createtime', title: __('Createtime'), formatter: Table.api.formatter.datetime},
                        {field: 'updatetime', title: __('Updatetime'), formatter: Table.api.formatter.datetime},
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