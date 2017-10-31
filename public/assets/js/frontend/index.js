/**
 * Created by wuyd on 2017/8/23.
 */
define(['jquery', 'bootstrap', 'frontend', 'table', 'form', 'template'], function ($, undefined, Frontend, Table, Form, Template) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'index/index',
                    add_url: '',
                    edit_url: '../admin/intention/add_house',
                    edit1_url: '../admin/intention/add_Intention',
                    del_url: '',
                    multi_url: '',
                    detail_url:'../../../index/house/detail/id/',
                }
            });

            var table1 = $("#table1");

            Template.helper("Moment", Moment);

            // 初始化表格
            table1.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url+'?houseType=1',
                templateView: true,
                columns: [

                ],
                //禁用默认搜索
                search: false,
                //启用普通表单搜索
                commonSearch: false,
                //可以控制是否默认显示搜索单表,false则隐藏,默认为false
                searchFormVisible: true,
                pagination:false,
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
                url: $.fn.bootstrapTable.defaults.extend.index_url+'?houseType=0',
                templateView: true,
                columns: [

                ],
                //禁用默认搜索
                search: false,
                //启用普通表单搜索
                commonSearch: false,
                //可以控制是否默认显示搜索单表,false则隐藏,默认为false
                searchFormVisible: false,
                pagination:false,
                showColumns:false,
                showToggle:false,
                showExport:false,
                //分页大小
                pageSize: 12
            });

            // 为表格绑定事件
            Table.api.bindevent(table2);
            //点击详情
            $(document).on("click", ".btn-detail[data-id]", function () {
                window.location=$.fn.bootstrapTable.defaults.extend.detail_url+ $(this).data('id');
            });

            //点击详情
            $(document).on("click", ".btn-intention[data-id]", function () {
                Frontend.api.open($.fn.bootstrapTable.defaults.extend.edit_url+'/ids/' + $(this).data('id'), __('Add'));
            });

            $(document).on("click", ".news-item", function () {
                window.location="../news/detail/id/"+ $(this).data('key');
            });
//点击详情
            $(document).on("click", ".itemDiv[data-id]", function () {
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