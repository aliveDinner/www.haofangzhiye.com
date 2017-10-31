/**
 * Created by wuyd on 2017/8/28.
 */
define(['jquery', 'bootstrap', 'table','frontend','form'], function ($, undefined,Table, Frontend,Form) {

    var Controller = {
        index: function () {

            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'index/index',
                    add_url: '',
                    edit_url: '../admin/intention/add_house',
                    del_url: '',
                    multi_url: '',
                    detail_url:'../house/detail/id/',
                }
            });




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