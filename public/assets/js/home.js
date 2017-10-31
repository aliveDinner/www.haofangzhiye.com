/*!
 * Home.js
 * URL:http://
 * Only for Guest mode
 * Sort as
 * 		Utils/ModuleFunction/Other Global InitFunction
 */
var config = {
    layuiBase: '/assets/js/',
};

var _width = document.documentElement.clientWidth;//获取页面可见宽度
var _height = document.documentElement.clientHeight;//获取页面可见高度
var form;
if (typeof Home === "undefined") {
    Home = {};
}

/**
 * 配置
 * @type {{}}
 */
Home.config = {
    layuiBase: '/assets/js/',
    getCity:'/ajax/getCity',
};

/* 初始化操作 */
if (typeof isInit === "undefined") {
    isInit = false;
}
Home.init = function () {
    if (typeof Site === "undefined") {
        if(top.layui.layer !== "undefined" ){
            top.layui.layer.msg('未加载Site类,Home功能可能受限');
        }
    }

    if (!isInit){
        layui.use(['layer','form', 'laydate'], function () {
            var laydate = layui.laydate;
                form = layui.form();
            Home.layer = top.layui.layer ? top.layui.layer : layui.layer ;

            isInit = true;

            $(document).off('click', '[lay-filter="date"]').on('click', '[lay-filter="date"]:not([readonly]):not([disabled])', function () {
                var that = $(this);
                var date = {
                    elem: this,
                    istime: true,
                    format: that.attr('lay-format') || 'YYYY-MM-DD',
                    choose: function (dates) { //选择好日期的回调
                    }
                };
                laydate(date);
            });

            $(document).off('click', '[lay-filter="startDate"]').on('click', '[lay-filter="startDate"]:not([readonly]):not([disabled])', function () {
                var that = $(this);
                if (that.hasAttribute('readonly') || that.hasAttribute('disabled')){
                    return;
                }
                var date = {
                    elem: this,
                    istime: true,
                    format: "YYYY-MM-DD",
                    choose: function (dates) { //选择好日期的回调
                    }
                };
                laydate(date);
            });

            $(document).off('click', '[lay-filter="endDate"]').on('click', '[lay-filter="endDate"]:not([readonly]):not([disabled])', function () {
                var that = $(this);
                if (that.hasAttribute('readonly') || that.hasAttribute('disabled')){
                    return;
                }
                var date = {
                    elem: this,
                    istime: true,
                    format: "YYYY-MM-DD",
                    choose: function (dates) { //选择好日期的回调
                    }
                };
                laydate(date);
            });

            // 重置为空处理
            $(document).off('click', '[lay-filter="reset"]').on('click', '[lay-filter="reset"]', function (e) {
                e.preventDefault();
                var $form = $(this).closest('form');
                if ($form.length > 0) {
                    // select
                    $form.find('select:not([lay-reset])').each(function () {
                        $(this).val('');
                    });

                    // input
                    $form.find('input:not([lay-reset])').each(function () {
                        var that = $(this);
                        if (that.attr('type') == 'checkbox' || that.attr('type') == 'radio'){
                            this.checked = false;
                        }else {
                            that.val('');
                        }
                    });

                    // textarea
                    $form.find('textarea:not([lay-reset])').each(function () {
                        $(this).html('');
                    });

                    // input
                    $form.find('[lay-default]').each(function () {
                        var that = $(this);
                        if (that.attr('type') == 'checkbox' || that.attr('type') == 'radio'){
                            this.checked = true;
                        }else {
                            that.val(that.attr('lay-default'));
                        }
                    });
                }
                form.render();
            });

            // 重置搜索
            $(document).off('click', '[lay-filter="reset-reload"]').on('click', '[lay-filter="reset-reload"]', function (e) {
                e.preventDefault();
                window.location.href = window.location.pathname;
            });

            //全选 | 全不选
            form.on('checkbox(selectAll)',function (data) {
                var group = $(data.elem).attr('lay-group');
                var child = $(data.elem).parents('.layui-form').find('input[type="checkbox"][lay-group="'+group+'"]');
                child.each(function(index, item) {
                    item.checked = data.elem.checked;
                });
                form.render('checkbox');
            });

            // 二选一
            form.on('checkbox(the-one)',function (data) {
                var group = $(data.elem).attr('lay-group');
                var child = $(data.elem).parents('.layui-form').find('input[lay-filter="the-other"][lay-group="'+group+'"]');
                child.each(function(index, item) {
                    item.checked = false;
                });
                form.render();
            });

            // 二选一
            form.on('checkbox(the-other)',function (data) {
                var group = $(data.elem).attr('lay-group');
                var child = $(data.elem).parents('.layui-form').find('input[lay-filter="the-one"][lay-group="'+group+'"]');
                child.each(function(index, item) {
                    item.checked = false;
                });
                form.render();
            });

            // 二选一
            form.on('radio(the-one)',function (data) {
                var group = $(data.elem).attr('lay-group');
                var child = $(data.elem).parents('.layui-form').find('input[lay-filter="the-other"][lay-group="'+group+'"]');
                child.each(function(index, item) {
                    item.checked = false;
                });
                form.render();
            });

            // 二选一
            form.on('radio(the-other)',function (data) {
                var group = $(data.elem).attr('lay-group');
                var child = $(data.elem).parents('.layui-form').find('input[lay-filter="the-one"][lay-group="'+group+'"]');
                child.each(function(index, item) {
                    item.checked = false;
                });
                form.render();
            });

        });
    }

};

Home.render=function () {
    form.render();
}
Home.searchProduct = function () {

};

Home.searchProductByKey = function () {

};

Home.layer =  top.layui.layer ? top.layui.layer : layui.layer;


/**
 * 操作工厂
 * @param selector
 * @param options
 * @param url
 * @param key
 */
Home.action = function (selector,options,url,key){
    if (!selector){
        return;
    }
    var config = {
        scrollbar:false,
        type: 2,
        title: '操作提示',
        shade: 0.3,
        area: ['1050px', '62.8%'],
        content: undefined,
    };
    config = $.extend(config,options);
    var baseUrl = config.content;
    //操作
    $(document).off('click','[lay-filter="'+selector+'"]').on('click','[lay-filter="'+selector+'"]',function () {
        var that = $(this);
        var actionUrl = url || baseUrl || that.attr('lay-url');
        var id = that.closest('[data-key]').attr('data-key');
        if (!actionUrl || !id){
            layer.msg('地址无效');
            return;
        }else{
            key = key || 'id';
            config.content = baseUrl +'?'+key+'='+ id;
        }
        Home.layer.open(config);
    });
};

/**
 * 删除 （注意：与添加和编辑的参数顺序不一致）
 * @param selector
 * @param url
 * @param options
 */
Home.delete = function (selector,url,options){
    if (!selector){
        return;
    }
    var item;
    var param = {id:[]};
    var config = {
        title:'删除提示',
        area: ['600px','300px'],
        shade: ['0.372','#000'],
        shadeClose:true,
        content:'确实要删除选择项吗？',
        btn: ['确定', '取消'],
        btnAlign: 'c',
        btn2: function(index, layero){
            Home.layer.close(index);
        },
        yes:function(index) {
            Home.layer.close(index);
            var i;
            $.ajax({
                url:url,
                type:'POST',
                data:param,
                beforeSend:function () {
                    i = top.layer.load(1, {shade:0.1});
                },
                success:function (data) {
                    Home.layer.close(i);
                    if (data.status == 1){
                        if (param.id){
                            $.each(param.id,function (index,item) {
                                $('[data-key="'+item+'"]').remove();
                            })
                        }else {
                            item.closest('[data-key="'+id+'"]').remove();
                        }
                    }
                    if (data.info !== undefined){
                        Home.layer.msg(data.info);
                    }
                },
                error:function (data) {
                    Home.layer.close(i);
                    Home.layer.msg('删除失败');
                }
            });
            return false;
        }
    };
    config = $.extend(config,options);
    //删除
    $(document).off('click','[lay-filter="'+selector+'"]').on('click','[lay-filter="'+selector+'"]',function () {
        item = $(this);
        var id = item.closest('[data-key]').attr('data-key');
        param.id = [];
        var has = true;
        if (!id){
            has = false;
            param.id = Home.getSelectCheckboxValues('[lay-group="tableItem"]');
            if (param.id.length >0){
                has = true;
            }
        }else {
            param.id.push(id);
        }
        if (!has)
        {
            Home.layer.msg('请选择删除项');
            return false;
        }
        url = url || item.attr('lay-url');
        if (!url){
            Home.layer.msg('地址无效');
            return;
        }
        Home.layer.open(config);
    });
};

/**
 * 提交表单
 * @param _options
 */
Home.submit = function (_options){
    var options = $.extend(
        {
            form:'form[action]',  // form 提交 对应的选择器
            url:undefined,  // form 提交地址
            submit:'submit',  // 提交选择器
            success:undefined, // 提交成功执行回调,参数是返回数据
            isClose:true, // 提交成功后关闭弹出层
            isReload:true, // 提交成功后刷新当前窗口
            verify:{} // 自定义验证规则
        },_options);
    layui.use(['layer','forms'],function () {
        var layer = top.layui.layer || layui.layer;

        //绑定form提交
        var forms = layui.forms().create({ELEM:options.form});

        //自定义验证规则
        forms.verify( options.verify);

        //监听提交
        forms.on('submit('+options.submit+')', function (data) {
            var param = $(data.form).serialize(),$form = $(data.form),url = options.url || $form.attr('action'),index;
            if (url === undefined || url === ''){
                //没有提交地址 中断
                url = window.location.href;
            }

            $.ajax({
                url:url,
                type:'POST',
                data:param,
                beforeSend:function () {
                    index = layer.load(1, {shade:0.1});
                },
                success:function (data) {
                    layer.close(index);
                    if (data.msg !== undefined || data.info !== undefined){
                        layer.msg(data.msg || data.info);
                    }
                    if (data.code == '1' || data.status == '1'){
                        if(typeof options.success === 'function'){
                            options.success(data);
                        }

                        if(options.isClose){
                            layer.close(layer.getFrameIndex(window.name));
                        }

                        if(options.isReload){
                            Site.reLoad();
                        }

                    }
                },
                error:function (data) {
                    layer.close(index);
                    layer.msg('提交出错');
                }
            });
            //必须中断
            return false;
        });

    });
};

/**
 *
 * @param selector //组别
 * @param checked //类别是 选择 或 不选择
 * @returns {Array}
 */
Home.getSelectCheckboxValues = function (selector, checked) {
    selector = selector || '[lay-group="selected"]';
    var values = [];
    if (checked === 'all') {
        $('input' + selector + ':not([lay-filter="selectAll"])').each(function () {
            values.push($(this).val());
        });
    }else if (checked !== false) {
        $('input' + selector + ':not([lay-filter="selectAll"])' + ':checked').each(function () {
            values.push($(this).val());
        });
    } else {
        $('input' + selector + ':not([lay-filter="selectAll"])' + ':not(:checked)').each(function () {
            values.push($(this).val());
        });
    }
    return values;
};

/**
 * 手风琴
 * @param selector
 */
Home.accordion = function(selector)  {
    selector = selector || '.layui-accordion';
    var icon = ['&#xe602;','&#xe61a;'];
    $(document).off('click', selector+'[lay-for]').on('click', selector+'[lay-for]', function () {
        var that = $(this);
        var target = that.attr('lay-for');
        var status = that.attr('lay-status');
        status = (parseInt(status) === 0 ? 1: 0);
        that.find('i').html(icon[status]);
        that.attr('lay-status',status);
        $(target).stop().trigger('click');
    });
    $(selector+'[lay-for]').each(function () {
        var that = $(this);
        $(this).attr('lay-status') || $(this).attr('lay-status',0);
        that.html(that.text()+'<i class="layui-icon layui-colla-icon">'+icon[0]+'</i>');
    });
};
