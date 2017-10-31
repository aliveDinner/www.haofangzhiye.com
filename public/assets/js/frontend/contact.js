/**
 * Created by wuyd on 2017/8/28.
 */
define(['jquery', 'bootstrap', 'frontend', 'table', 'template'], function ($, undefined, Frontend,Table,Template) {

    var Controller = {
        index: function () {
            Table.api.init({
                extend: {
                    index_url: 'Contact/zhiyeguwen',
                    add_url: '',
                    edit_url: '',
                    del_url: '',
                    multi_url: '',
                    detail_url:'',
                }
            });
            var table1 = $("#table1");

            Template.helper("Moment", Moment);

            // 初始化表格
            table1.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
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
            var $items = $('#ContactTabs>ul>li');
            $items.mouseover(function() {
                $items.removeClass('selected');
                $(this).addClass('selected');

                var index = $items.index($(this));
                $('#ContactTabs>div').hide().eq(index).show();
            }).eq(0).mouseover();

        },
        search:function () {

            //点击详情
            $(document).on("click", ".btn-detail[data-id]", function () {
                //Backend.api.open('example/bootstraptable/detail/ids/' + $(this).data('id'), __('Detail'));
            });
//点击详情
            $(document).on("click", ".btn-intention[data-id]", function () {
                Frontend.api.open('../admin/intention/add_house/ids/' + $(this).data('id'), __('Add'));
            });
            $(".houseTitle_a").on("click",function () {
                var id=$(this).attr("data-id");
                window.location='../house/detail/id/'+id;
            });
            Controller.api.bindevent();
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