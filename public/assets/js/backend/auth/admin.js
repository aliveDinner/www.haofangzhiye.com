define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'auth/admin/index',
                    add_url: 'auth/admin/add',
                    edit_url: 'auth/admin/edit',
                    del_url: 'auth/admin/del',
                    multi_url: 'auth/admin/multi',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                columns: [
                    [
                        {field: 'state', checkbox: true, },
                        {field: 'id', title: 'ID'},
                        {field: 'username', title: __('Username')},
                        {field: 'nickname', title: __('Nickname')},
                        {field: 'groups_text', title: __('Group'), operate:false, formatter: Table.api.formatter.label},
                        {field: 'usertype_text', title: __('usertype'), operate:false},
                        {field: 'email', title: __('Email')},
                        {field: 'qq', title: __('qq')},
                        {field: 'mobile', title: __('mobile')},
                        {field: 'GoldConsultant_switch', title: __('GoldConsultant_switch'),formatter: Controller.api.formatter.GoldConsultant_switch},
                        {field: 'status', title: __("Status"), formatter: Table.api.formatter.status},
                        {field: 'logintime', title: __('Login time'), formatter: Table.api.formatter.datetime},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: function (value, row, index) {
                                if(row.id == 1){
                                    return '';
                                }
                                return Table.api.formatter.operate.call(this, value, row, index);
                            }}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
        },
        add: function () {
            Form.api.bindevent($("form[role=form]"));
        },
        edit: function () {
            Form.api.bindevent($("form[role=form]"));
        },
        api: {
            formatter: {

                GoldConsultant_switch: function (value, row, index) {
                    return "<a href='javascript:;' class='btn btn-" + (value ? "info" : "default") + " btn-xs btn-change' data-id='"
                        + row.id + "' data-params='isgold=" + (value ? 0 : 1) + "'>" + (value ? __('Yes') : __('No')) + "</a>";
                }
            },
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});