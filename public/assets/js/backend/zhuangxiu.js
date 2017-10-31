define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'zhuangxiu/index',
                    add_url: 'zhuangxiu/add',
                    edit_url: 'zhuangxiu/edit',
                    del_url: 'zhuangxiu/del',
                    multi_url: 'zhuangxiu/multi',
                    table: 'zhuangxiu',
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
                        {field: 'titleimage', title: __('Titleimage'), formatter: Table.api.formatter.image},
                        {field: 'tag', title: __('Tag')},
                        {field: 'createtime', title: __('Createtime'), formatter: Table.api.formatter.datetime},
                        {field: 'isnew_switch', title: __('Isnew_switch'),formatter: Controller.api.formatter.IsCheck},
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
            formatter: {
                IsCheck: function (value, row, index) {
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