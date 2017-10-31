define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'question/index',
                    add_url: 'question/add',
                    edit_url: 'question/edit',
                    del_url: 'question/del',
                    multi_url: 'question/multi',
                    table: 'question',
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
                        {field: 'title', title: __('Title')},
                        {field: 'author', title: __('Author')},
                        {field: 'tag', title: __('Tag')},
                        {field: 'createtime', title: __('Createtime'), formatter: Table.api.formatter.datetime},
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