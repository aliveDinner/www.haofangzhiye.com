<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:79:"/usr/share/nginx/haofangzhiye/public/../application/manage/view/index/home.html";i:1503420558;s:88:"/usr/share/nginx/haofangzhiye/public/../application/common/view/layouts/manage-main.html";i:1503420551;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Cache-Control" content="no-transform">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="url" content="">
    <meta name="_csrf_param" content="<?php echo !empty($_csrf_param)?$_csrf_param : ''; ?>">
    <meta name="_csrf_token" content="<?php echo !empty($_csrf_token)?$_csrf_token : ''; ?>">
    <meta name="cachedKey" content="<?php echo !empty($_SESSION['_auth_token_'])?$_SESSION['_auth_token_'] : ''; ?>">

    <!-- Favicon -->
    <link rel="shortcut icon" href="_SHORTCUT_" type="image/x-icon">

    <!-- load css -->
    <link rel="stylesheet" type="text/css" href="_LAYUI_/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="__CSS__/layout.css" media="all">
    <link rel="stylesheet" type="text/css" href="__CSS__/back.css" media="all">
    <link rel="stylesheet" type="text/css" href="__CSS__/iconfont.css" media="all">

    <!-- For site js -->
    <script type="text/javascript" src="__JS__/jquery.js"></script>
    <script type="text/javascript" src="_LAYUI_/layui.js"></script>

    <title><?php echo !empty($meta_title)?$meta_title.' - ' : ''; ?>_TITLE_</title>

</head>
<body>

<div class="wrap">

    <div class="container"  id="container">

        <div class="layui-layout layui-layout-back-main" id="layui_layout" style="padding:0 15px 15px 15px;">

            <!-- 右侧主体内容开启 -->
            <!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>表单</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">

</head>

<body>
<div>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>Do it ! </legend>

        <form class="layui-form" id="default-form" action="/ajax/uploader.html?file=file" method="post" enctype="multipart/form-data">
            <div class="layui-form-item">
                <label class="layui-form-label">单文件上传</label>
                <?php echo "设为推荐";  ?>
                <div class="layui-input-inline">
                    <input type="file" name="file" >
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">单文件上传</label>
                <div class="layui-input-inline">
                    <input type="file" name="build" class="layui-upload-file">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">多文件上传</label>
                <div class="layui-input-block" style="padding-right: 120px;">
                    <input type="file" name="build[]" multiple lay-multi="true" class="layui-upload-file">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">手机号码</label>
                <div class="layui-input-inline">
                    <input type="text" lay-verify="layAjax" lay-url="/ajax/phone" lay-error="已存在手机号" class="layui-input" />
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" type="submit">立即提交</button>
                </div>
            </div>
        </form>
        <form class="layui-form" id="form-login">

            <div class="layui-form-item">
                <label class="layui-form-label">图片懒加载</label>
                <div class="layui-input-block checkbox-left">
                    <div lay-filter="loading" lay-src="/static/images/default-user.png" lay-class="user-images"
                         lay-title="个人信息" lay-alt="我的头像" style="width: 100%;">
                    </div>
                    <a data-url="/user/view.html?iframe=true" class="img" lay-filter="url" data-title="个人信息">
                        <div lay-filter="loading" lay-src="/static/images/default-user.png" lay-class="user-images"
                             lay-title="个人信息" lay-alt="我的头像" style="width: 100%;">
                        </div>
                    </a>
                    <button class="btn btn-primary btn-lg" lay-submit="">查询</button>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">复选框</label>
                <div class="layui-input-block checkbox-left">
                    <input type="checkbox" name="like[write]" title="写作" lay-verify="checked" lay-filter="like" lay-error="至少选择一个兴趣" />
                    <input type="checkbox" name="like[read]" title="阅读" checked=""  lay-verify="checked" lay-filter="like" lay-error="至少选择一个兴趣" />
                    <input type="checkbox" name="like[game]" title="游戏"  lay-verify="checked" lay-filter="like" lay-error="至少选择一个兴趣" />
                    <button class="layui-btn" lay-filter="get">获取多选值</button>
                </div>
                <script>

                    $(function () {
                        $(document).on('click','[lay-filter="get"]',function () {
                            var value = [];
                            $('[name^="like"]:checked').each(function(){
                                value.push($(this).attr('title'));
                            });
                            alert(JSON.stringify(value));
                        })
                    });

                </script>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">开关-关</label>
                <div class="layui-input-block">
                    <input type="checkbox" name="close" lay-skin="switch" title="开关">
                    <input type="checkbox" name="xxx" lay-skin="switch">
                    <input type="checkbox" name="yyy" lay-skin="switch" lay-text="ON|OFF" checked>
                    <input type="checkbox" name="zzz" lay-skin="switch" lay-text="开启|关闭">
                    <input type="checkbox" name="aaa" lay-skin="switch" disabled>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">开关-开</label>
                <div class="layui-input-block">
                    <input type="checkbox" checked="" name="open" lay-skin="switch" lay-filter="switchTest" title="开关">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">单选框</label>
                <div class="layui-input-block">
                    <input type="radio" name="sex" value="是" title="是" checked="">
                    <input type="radio" name="sex" value="否" title="否">
                    <input type="radio" name="sex" value="禁" title="禁用" disabled="">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">分组选择框</label>
                <div class="layui-input-inline">
                    <select name="quiz" lay-search="refresh" lay-filter="quest">
                        <option value="">请选择问题</option>
                        <optgroup label="城市记忆">
                            <option value="你工作的第一个城市">你工作的第一个城市</option>
                        </optgroup>
                        <optgroup label="学生时代">
                            <option value="你的工号">你的工号</option>
                            <option value="你最喜欢的老师">你最喜欢的老师</option>
                        </optgroup>
                    </select>
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">城市：</label>
                    <style>
                        .layui-form-selected dl {
                            min-height: 50px;
                        }
                    </style>
                    <div class="layui-input-inline">
                        <select name="city" lay-search="refresh" lay-filter="city">
                            <option value="">请选择</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">搜索：</label>
                    <div class="layui-input-inline">
                        <input type="hidden" name="key" value="4" data-value="4" lay-verify="required" placeholder="请输入关键词" class="layui-input inputHide" lay-search="refresh" lay-filter="key" />
                        <input type="text" value="儋州" data-value="儋州" lay-verify="required" placeholder="请输入关键词" class="layui-input inputKey"/>
                    </div>
                </div>
            </div>

            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">普通文本域</label>
                <div class="layui-input-block">
                    <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">编辑器</label>
                <div class="layui-input-block">
                    <textarea class="layui-textarea layui-hide" name="content" lay-verify="content"
                              id="LAY_demo_editor"></textarea>
                </div>
            </div>
            <div class="layui-collapse">
                <div class="layui-form-item">
                    <label class="layui-form-label">销售状态：</label>
                    <div class="layui-input-block">
                        <input type="radio" name="sale" value="不限" title="不限" checked="">
                        <input type="checkbox" lay-skin="primary" title="待售">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">均&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价：</label>
                    <div class="layui-input-block">
                        <div class="layui-inline">
                            <div class="layui-input-inline" style="width: 150px;">
                                <select name="modules" lay-verify="required" lay-search="">
                                    <option value="1">不限</option>
                                    <option value="2">50万</option>
                                    <option value="3">80万</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">总&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价：</label>
                            <div class="layui-input-inline" style="width: 150px;">
                                <select name="modules" lay-verify="required" lay-search="">
                                    <option value="1">不限</option>
                                    <option value="2">100万</option>
                                    <option value="3">130万</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">开盘日期：</label>
                            <div class="layui-input-inline" style="width: 150px;">
                                <select name="modules" lay-verify="required" lay-search="">
                                    <option value="1">不限</option>
                                    <option value="2">form</option>
                                    <option value="3">layim</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">面积：</label>
                            <div class="layui-input-inline" style="width: 70px;">
                                <input type="text" name="price_min" autocomplete="off" class="layui-input">
                            </div>
                            <div class="layui-form-mid">-</div>
                            <div class="layui-input-inline" style="width: 70px;">
                                <input type="text" name="price_max" autocomplete="off" class="layui-input">
                            </div>
                            <span style="line-height: 38px;">(㎡)</span>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">范围</label>
                            <div class="layui-input-inline" style="width: 100px;">
                                <input type="text" name="price_min" placeholder="￥" autocomplete="off"
                                       class="layui-input">
                            </div>
                            <div class="layui-form-mid">-</div>
                            <div class="layui-input-inline" style="width: 100px;">
                                <input type="text" name="price_max" placeholder="￥" autocomplete="off"
                                       class="layui-input">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit="" lay-filter="submit">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>

        分割线
        <hr>

        <form class="layui-form layui-form-pane" action="">
            <div class="layui-form-item">
                <label class="layui-form-label">输入框</label>
                <div class="layui-input-block">
                    <input type="text" name="title" required="" lay-verify="required" placeholder="请输入标题"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码框</label>
                <div class="layui-input-inline">
                    <input type="password" name="password" required="" lay-verify="required" placeholder="请输入密码"
                           autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">辅助文字</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">选择框</label>
                <div class="layui-input-block">
                    <select name="city" lay-verify="required" lay-filter="city">
                        <option value=""></option>
                        <option value="0">北京</option>
                        <option value="1">上海</option>
                        <option value="2">广州</option>
                        <option value="3">深圳</option>
                        <option value="4">杭州</option>
                    </select>
                    <div class="layui-unselect layui-form-select">
                        <div class="layui-select-title">
                            <input type="text" placeholder="请选择" value="" readonly="" class="layui-input layui-unselect">
                            <i class="layui-edge"></i></div>
                        <dl class="layui-anim layui-anim-upbit">
                            <dd lay-value="0" class="">北京</dd>
                            <dd lay-value="1" class="">上海</dd>
                            <dd lay-value="2" class="">广州</dd>
                            <dd lay-value="3" class="">深圳</dd>
                            <dd lay-value="4" class="">杭州</dd>
                        </dl>
                    </div>
                </div>
            </div>
            <div class="layui-form-item" pane="">
                <label class="layui-form-label">开关</label>
                <div class="layui-input-block">
                    <input type="checkbox" name="switch" lay-skin="switch">
                    <div class="layui-unselect layui-form-switch" lay-skin="_switch"><em></em><i></i></div>
                </div>
            </div>
            <div class="layui-form-item" pane="">
                <label class="layui-form-label">单选框</label>
                <div class="layui-input-block">
                    <input type="radio" name="sex" value="男" title="男">
                    <div class="layui-unselect layui-form-radio"><i class="layui-anim layui-icon"></i><span>男</span>
                    </div>
                    <input type="radio" name="sex" value="女" title="女" checked="">
                    <div class="layui-unselect layui-form-radio layui-form-radioed"><i
                            class="layui-anim layui-icon"></i><span>女</span></div>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">文本域</label>
                <div class="layui-input-block">
                    <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <button class="layui-btn" lay-submit="" lay-filter="formDemoPane">立即提交</button>
            </div>
        </form>

        分割线
        <hr>

        <table class="layui-table">
            <colgroup>
                <col width="150">
                <col width="200">
                <col>
            </colgroup>
            <thead>
            <tr>
                <th>昵称</th>
                <th>加入时间</th>
                <th>签名</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>贤心</td>
                <td>2016-11-29</td>
                <td>人生就像是一场修行</td>
            </tr>
            <tr>
                <td>许闲心</td>
                <td>2016-11-28</td>
                <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
            </tr>
            <tr>
                <td>sentsin</td>
                <td>2016-11-27</td>
                <td> Life is either a daring adventure or nothing.</td>
            </tr>
            </tbody>
        </table>

        <table class="layui-table" lay-skin="line">
            <colgroup>
                <col width="150">
                <col width="200">
                <col>
            </colgroup>
            <thead>
            <tr>
                <th>昵称</th>
                <th>加入时间</th>
                <th>签名</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>贤心</td>
                <td>2016-11-29</td>
                <td>人生就像是一场修行</td>
            </tr>
            <tr>
                <td>贤心</td>
                <td>2016-11-29</td>
                <td>人生就像是一场修行</td>
            </tr>
            <tr>
                <td>贤心</td>
                <td>2016-11-29</td>
                <td>人生就像是一场修行</td>
            </tr>
            </tbody>
        </table>

        <table class="layui-table" lay-skin="row">
            <colgroup>
                <col width="150">
                <col width="200">
                <col>
            </colgroup>
            <thead>
            <tr>
                <th>昵称</th>
                <th>加入时间</th>
                <th>签名</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>贤心</td>
                <td>2016-11-29</td>
                <td>人生就像是一场修行</td>
            </tr>
            <tr>
                <td>贤心</td>
                <td>2016-11-29</td>
                <td>人生就像是一场修行</td>
            </tr>
            <tr>
                <td>贤心</td>
                <td>2016-11-29</td>
                <td>人生就像是一场修行</td>
            </tr>
            </tbody>
        </table>

        <table class="layui-table" lay-even="" lay-skin="nob">
            <colgroup>
                <col width="150">
                <col width="200">
                <col>
            </colgroup>
            <thead>
            <tr>
                <th>昵称</th>
                <th>加入时间</th>
                <th>签名</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>贤心</td>
                <td>2016-11-29</td>
                <td>人生就像是一场修行</td>
            </tr>
            <tr>
                <td>贤心</td>
                <td>2016-11-29</td>
                <td>人生就像是一场修行</td>
            </tr>
            <tr>
                <td>贤心</td>
                <td>2016-11-29</td>
                <td>人生就像是一场修行</td>
            </tr>
            </tbody>
        </table>

        分割线
        <hr>

        <blockquote class="layui-elem-quote">引用区域的文字</blockquote>
        <blockquote class="layui-elem-quote layui-quote-nm">引用区域的文字</blockquote>

        分割线
        <hr>

        <fieldset class="layui-elem-field">
            <legend>字段集区块 - 默认风格</legend>
            <div class="layui-field-box">
                内容区域
            </div>
        </fieldset>

        <fieldset class="layui-elem-field layui-field-title">
            <legend>字段集区块 - 横线风格</legend>
            <div class="layui-field-box">
                内容区域
            </div>
        </fieldset>

        <fieldset class="layui-elem-field layui-field-title">
            <legend>相册</legend>
            <div class="layui-field-box">
                <div id="layer-photos-demo" class="layer-photos-demo" style="overflow: hidden;">
                    <img layer-pid="01" layer-src="/static/uploads/theme/theme-banner.jpg" src="/static/images/upload-img.png" alt="图片名1" style="height:200px;width: 200px;">
                    <img layer-pid="02" layer-src="/static/uploads/theme/theme-banner-contact.jpg" src="/static/images/upload-img.png" alt="图片名2" style="height:200px;width: 200px;">
                    <img layer-pid="03" layer-src="/static/uploads/theme/theme-benner-home.jpg" src="/static/images/upload-img.png" alt="图片名3" style="height:200px;width: 200px;">
                </div>
            </div>
        </fieldset>
        <hr>
        分割线

        <pre class="layui-code" lay-title="" lay-height="" lay-skin="" lay-encode="">
            var shazi = '';
        </pre>

    </fieldset>

</div>
<script>
    layui.config({
        base: '/static/js/',
    }).use(['layedit', 'laydate', 'forms','uploader','search'], function () {
        var forms = layui.forms(),
            layer = layui.layer,
            layedit = layui.layedit,
            laydate = layui.laydate;
        var uploader = layui.uploader({
            elem:'.layui-upload-file',
            url: '/ajax/uploader?file=build',
            isAjax:true,
            max:5,
            success: function (res, input) {
                console.log(res);
                if(res.code == '0' && res.msg){
                    layer.msg(res.msg);
                }
            }
        });

        var search = layui.search({
            url: '/ajax/getCity',
            targetClass: '.inputKey',          // 输入框目标元素
            parentClass: '.layui-input-inline',          // 父级类
            hiddenClass: '.inputHide',          // 隐藏域input
            key:'name'
        });

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');
        //自定义验证规则
        forms.verify({
            title: function (value, item) {
                if (value.length < 5) {
                    return '标题至少得5个字符啊';
                }
            },
            pass: [/(.+){6,12}$/, '密码必须6到12位'],
            content: function (value, item) {
                layedit.sync(editIndex);
            },
            password: [/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,10}$/, '密码格式错误'],
            ajax: function (value, item) {
                var message = true;
                console.log(item.name);
                $.ajax({
                    url: "/user/index",
                    type: 'POST',
                    async: false,
                    data: {uaername: value},
                    success: function (back) {
                        if (back == '1') {
                            message = "登录名已存在";
                        }
                    }
                });
                return message;
            },
            checked: function (value, item) {
                var $this = $(item);
                if (!$this.checked){
                    var filter = $this.attr('lay-filter');
                    var message = $this.attr('lay-error') || '至少选择一个'+$this.attr('name');
                    var checked = $('input[lay-filter="'+filter+'"]:checked');
                    if (checked.length <= 0){
                        return message;
                    }
                }
            }
        });

        // 重置为空处理
        $(document).on('click', '[lay-filter="reset"]', function (e) {
            e.preventDefault();
            var $form = $(this).closest('form');
            if ($form.length > 0) {
                // select
                $form.find('select:not([lay-reset])').each(function () {
                    $(this).val('');
                });

                // input
                $form.find('input:not([lay-reset])').each(function () {
                    $(this).val('');
                });

                // textarea
                $form.find('textarea:not([lay-reset])').each(function () {
                    $(this).html('');
                });
            }
            forms.render();
        });

        //全选 | 全不选
        forms.on('checkbox(selectAll)',function (data) {
            var group = $(data.elem).attr('lay-group');
            var child = $(data.elem).parents('.layui-form').find('input[type="checkbox"][lay-group="'+group+'"]');
            child.each(function(index, item) {
                item.checked = data.elem.checked;
            });
            forms.render('checkbox');
        });

        //删除
        $(document).on('click','[lay-filter="delete"]',function () {
            var that = $(this);
            var id = that.closest('[data-key]').attr('data-key');
            var url = $config.deleteUrl+'/id/'+id;
            if (id === undefined)
            {
                layer.msg('找不到删除项');
                return false;
            }
            var param = {};
            layer.open({
                title:'删除提示',
                area: ['600px','300px'],
                shade: ['0.372','#000'],
                shadeClose:true,
                content:'确实要删除选择项吗？',
                btn: ['确定', '取消'],
                btnAlign: 'c',
                btn2: function(index, layero){
                    layer.close(index);
                },
                yes:function(index) {
                    layer.close(index);
                    var i;
                    $.ajax({
                        url:url,
                        type:'POST',
                        data:param,
                        beforeSend:function () {
                            i = top.layer.load(1, {shade:0.1});
                        },
                        success:function (data) {
                            top.layer.close(i);
                            if (data.status == 1){
                                that.closest('[data-key]').remove();
                            }
                            if (data.info !== undefined){
                                top.layer.msg(data.info);
                            }
                        },
                        error:function (data) {
                            top.layer.close(i);
                            top.layer.msg('Most people can not see this message, please share with us! <br> 【God is a girl, please treat her as a lover】');
                        }
                    });
                    return false;
                }
            });
        });

        //绑定form提交
        forms.set({ELEM:'#default-form'});

        /**
         * 自定义验证规则
         * exist 使用方式 lay-verify="exist" lay-group="XXX" lay-error="XXX"
         * checked 使用方式 lay-verify="checked" lay-group="XXX" lay-error="XXX"
         */
        forms.verify({
            exist: function (value, item) {
                var $this = $(item);
                if (!$this.checked || (!$this.is('input[type="checkbox"]') && $.trim(value) === '')){
                    var group = $this.attr('lay-group');
                    var message = $this.attr('lay-error') || '至少选择一个 '+$this.attr('name');
                    var pass = false;
                    //检查checkbox radio类型
                    var checked = $('input[lay-group="'+group+'"]:checked');
                    if (checked.length > 0){
                        pass = true;
                    }else {
                        //检查其他类型
                        $('input[lay-group="'+group+'"][type!="checkbox"][type!="radio"]').each(function () {
                            if($.trim($this.val()) !== ''){
                                pass = true;
                            }
                        });
                    }
                    if (!pass){
                        return message;
                    }
                }
            },
            checked: function (value, item) {
                var $this = $(item);
                if (!$this.checked){
                    var group = $this.attr('lay-group');
                    var message = $this.attr('lay-error') || '至少选择一个 '+$this.attr('name');
                    var checked = $('input[lay-group="'+group+'"]:checked');
                    if (checked.length <= 0){
                        return message;
                    }
                }
            },
            layAjax: function (value, item) {
                var $this = $(item);
                var message = $this.attr('lay-error') || '验证不通过';
                var url = $this.attr('lay-error') || '';
                var hasAjax = $this.attr('lay-hasAjax') || false;
                var name = $this.attr('name') || 'key';
                var param = '&'+name+'='+value;
                if (!hasAjax && url !== ''){
                    $.ajax({
                        url: url,
                        type: 'POST',
                        data: param,
                        async: false,
                        success: function (data) {
                            console.log(data);
                            if (data.code == '1') {
                                $this.attr('lay-hasAjax','true');
                                if(data.msg !== undefined){
                                    message = data.msg;
                                }
                            }
                        }
                    });
                    return message;
                }
            },
        });

        //监听提交
        forms.on('submit(demo)', function (data) {
            console.log(data);
            var param = data.field || {},$form = $(data.form),url = $form.attr('action'),index;
            if (url === undefined || url === ''){
                url = $config.url;
            }

            $.ajax({
                url:url,
                type:'POST',
                data:param,
                beforeSend:function () {
                    index = top.layer.load(1, {shade:0.1});
                },
                success:function (data) {
//                    console.log(data);
                    top.layer.close(index);
                    if (data.info !== undefined){
                        top.layer.msg(data.info);
                        if (data.status == '1'){
                            top.window.isReload = true;
                            top.layer.close(top.layer.getFrameIndex(window.name));
                        }
                    }
                },
                error:function (data) {
                    top.layer.close(index);
                    top.layer.msg('Most people can not see this message, please share with us! <br> 【God is a girl, please treat her as a lover】');
                }
            });
        });

        Site.imgLoading();

        var json = {
            "title": "", //相册标题
            "id": 123, //相册id
            "start": 0, //初始显示的图片序号，默认0
            "data": [   //相册包含的图片，数组格式
                {
                    "alt": "图片名",
                    "pid": 666, //图片id
                    "src": "/static/images/upload-img.png", //原图地址
                    "thumb": "/static/images/upload-img.png" //缩略图地址
                },
                {
                    "alt": "图片名",
                    "pid": 667, //图片id
                    "src": "/static/images/upload-img.png", //原图地址
                    "thumb": "/static/images/upload-img.png" //缩略图地址
                }
            ]
        };

        Site.photos({
            photos: '#layer-photos-demo',
            full:true,
            tab: function (pic, layero) {
                top.layer.msg(pic.alt,{
                    offset: 't',
                }) //当前图片的一些信息
            }
        });

    });
</script>

</body>

</html>
            <!-- 右侧主体内容结束 -->

        </div>
    </div>

</div>

<!-- 加载js文件-->
<!--  全局 -->
<script type="text/javascript" src="__JS__/site.js"></script>
<script type="text/javascript" src="__JS__/back.js"></script>
<script>
    layui.use(['layer', 'util'], function() {
        var $ = layui.jquery,
            layer = layui.layer,
            util = layui.util;

        var top = false, bar1 = false, bar2 = false,
        metaUtil = $('meta[name="util"]').attr('content');
        if (metaUtil !== undefined && metaUtil === 'true'){
            top = true;
            bar1 = true;
            bar2 = true;
        }

        //回到顶部
        //使用内部工具组件
        util.fixbar({
            top: top,
            // bar1: bar1,
//            bar2: bar2,
            css: {right: 15, bottom: 15},
            click: function(type){
                if(type === 'bar1'){
                    layer.msg('工具一');
                }else if (type === 'bar2'){
                    layer.msg('工具二');
                }
            }
        });

    });
</script>

</body>
</html>

