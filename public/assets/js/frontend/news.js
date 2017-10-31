/**
 * Created by wuyd on 2017/8/23.
 */
define(['jquery', 'bootstrap', 'frontend', 'table', 'form', 'template'], function ($, undefined, Frontend, Table, Form, Template) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'news/index',
                    add_url: '',
                    edit_url: '../admin/intention/add_house',
                    del_url: '',
                    multi_url: '',
                    question_url: 'news/getQuestion',
                    detail_url:'../news/detail/id/',
                }
            });

            var table1 = $("#table1");

            Template.helper("Moment", Moment);

            // 初始化表格
            table1.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url+'?newsType=2',
                templateView: true,
                columns: [

                ],
                //禁用默认搜索
                search: false,
                //启用普通表单搜索
                commonSearch: false,
                //可以控制是否默认显示搜索单表,false则隐藏,默认为false
                searchFormVisible: true,
                pagination:true,
                showColumns:false,
                showToggle:false,
                showExport:false,

                //分页大小
                pageSize: 12
            });

            // 为表格绑定事件
            Table.api.bindevent(table1);




            var table2 = $("#table2");

            Template.helper("Moment", Moment);

            // 初始化表格
            table2.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url+'?newsType=1',
                showHeader:false,
                columns: [
                    {field: 'title', title: __('Title'),align:'left',formatter:formatOperat},
                    {field: 'createtime', title: __('Createtime'), formatter: Table.api.formatter.datetime}
                ],
                //禁用默认搜索
                search: false,
                //启用普通表单搜索
                commonSearch: false,
                //可以控制是否默认显示搜索单表,false则隐藏,默认为false
                searchFormVisible: false,
                pagination:true,
                showColumns:false,
                showToggle:false,
                showExport:false,
                //分页大小
                pageSize: 12,
                onClickRow: function (row, $element, field)
                {
                    window.location=$.fn.bootstrapTable.defaults.extend.detail_url+ row.Id;
                }
            });
            //alert($("#table2 thead").html());
            $("#table2 thead").css("display","none");
            // 为表格绑定事件
            Table.api.bindevent(table2);
            var table3 = $("#table3");

            Template.helper("Moment", Moment);

            // 初始化表格
            table3.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.question_url,
                showHeader:false,
                columns: [
                    {field: 'title', title: __('Title'),align:'left',formatter:formatOperat},
                    {field: 'createtime', title: __('Createtime'), formatter: Table.api.formatter.datetime}
                ],
                //禁用默认搜索
                search: false,
                //启用普通表单搜索
                commonSearch: false,
                //可以控制是否默认显示搜索单表,false则隐藏,默认为false
                searchFormVisible: false,
                pagination:true,
                showColumns:false,
                showToggle:false,
                showExport:false,
                //分页大小
                pageSize: 12,
                onClickRow: function (row, $element, field)
                {
                    window.location=$.fn.bootstrapTable.defaults.extend.detail_url+ row.Id;
                }
            });
            function formatOperat(value, row) {
                return '<i class="fa fa-gg" style="margin-right: 10px;"></i>'+value;
            }
            $("#table3 thead").css("display","none");

            // 为表格绑定事件
            Table.api.bindevent(table3);
            //点击详情
            $(document).on("click", ".newsDiv[data-id]", function () {
                window.location=$.fn.bootstrapTable.defaults.extend.detail_url+ $(this).data('id');
            });

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