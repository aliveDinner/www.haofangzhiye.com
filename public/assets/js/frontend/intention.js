define(['jquery', 'bootstrap', 'frontend', 'table', 'form'], function ($, undefined, Frontend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'intention/index',
                    add_url: 'intention/add',
                    edit_url: 'intention/edit',
                    del_url: 'intention/del',
                    multi_url: 'intention/multi',
                    table: 'intention',
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
                        {field: 'house_city', title: __('House_city')},
                        {field: 'house_area', title: __('House_area')},
                        {field: 'house_id', title: __('House_id')},
                        {field: 'housename', title: __('Housename')},
                        {field: 'yusuzongjia_text', title: __('Yusuzongjia'), operate:false},
                        {field: 'user_id', title: __('User_id')},
                        {field: 'username', title: __('Username')},
                        {field: 'userphone', title: __('Userphone')},
                        {field: 'admin_id', title: __('Admin_id')},
                        {field: 'adminname', title: __('Adminname')},
                        {field: 'status', title: __('Status'), formatter: Table.api.formatter.status},
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