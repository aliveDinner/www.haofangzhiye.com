<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:80:"/usr/share/nginx/haofangzhiye/public/../application/manage/view/login/login.html";i:1503420559;}*/ ?>

<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="url" content="">
    <meta name="mobile-agent" content="format=html5;url=http://m.wofang.com/">

    <!-- Favicon -->
    <link rel="shortcut icon" href="_SHORTCUT_" type="image/x-icon">

    <!-- For site css -->

    <script type="text/javascript" src="__JS__/jquery.js"></script>
    <script type="text/javascript" src="_LAYUI_/layui.js"></script>

    <!-- load css -->
    <link rel="stylesheet" type="text/css" href="_LAYUI_/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="__CSS__/iconfont.css" media="all">

    <script>
        // 判断当前的window对象是否是top对象 //防止网页被嵌入框架 （Frame）代码 或者 iframe 检查到登录失效不能回到顶层。
        if (window != top) {
            // 如果不是，将top对象的网址自动导向被嵌入网页的网址
            top.location.href = window.location.href;
        }
    </script>

    <style type="text/css">
        .signwrapper {
            /*background-color: #1c77ac;*/
            background-color: #f4f4f4;
            background-image: url(/static/images/light.png);
            background-repeat: no-repeat;
            background-position: center;
            background-attachment: fixed;
            background-size: cover;
        }
        .sign-overlay {
            background-color: #ffffff;
            background-image: url(/static/images/loginbg.png);
            /*background-image: url(/static/uploads/theme/login/login-hot.jpg);*/
            background-repeat: no-repeat;
            background-position: bottom;
            background-attachment: fixed;
            background-size: cover;
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: 100;
            opacity: 0.372;
        }
        .signwrapper.signwrapper-blue{
            background-color: #1c77ac;
        }
        .sign-overlay.sign-overlay-red{
            background-color: #ff6633;
        }
        .sign-overlay[data-type="hot"]{
            background-color: #f4f4f4;
            background-image: url(/static/uploads/theme/login/hot.jpg);
            background-position: center;
            opacity: 0.8;
        }
        .sign-overlay[data-type="phone"]{
            background-color: #f4f4f4;
            background-image: url(/static/uploads/theme/login/phone.jpg);
            opacity: 0.6;
        }
        .sign-overlay[data-type="phone-1"]{
            background-color: #f4f4f4;
            background-image: url(/static/uploads/theme/login/phone-1.jpg);
            opacity: 0.6;
        }
        /*云*/
        .signpanel {
            width:100%;
            height:100%;
            position:absolute;
            z-index:200;
            opacity: 0.628;
        }
        .cloud {
            position:absolute;
            top:0px;
            left:0px;
            width:100%;
            height:100%;
            background:url(/static/images/cloud.png) no-repeat;
            z-index:201;
            opacity:0.5;
        }
        #cloud2 {z-index:202;}

        /*渐变*/
        /*.signpanel {*/
            /*background-image: -webkit-linear-gradient(left, transparent 0%, #1b1f27 100%);*/
            /*background-image: -o-linear-gradient(left, transparent 0%, #1b1f27 100%);*/
            /*background-image: linear-gradient(to right, transparent 0%, #1b1f27 100%);*/
            /*background-repeat: repeat-x;*/
            /*filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00000000', endColorstr='#ff1b1f27', GradientType=1);*/
            /*position: fixed;*/
            /*top: 0;*/
            /*right: 0;*/
            /*bottom: 0;*/
            /*left: 0;*/
            /*z-index: 200;*/
            /*opacity: .75;*/
        /*}*/
        .signin {
            width: 440px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            z-index: 300;
        }
        #Login .separator,.login-title h2{
            font-size: 20px;
        }
        #Login a{
            font-size: 20px;
            color: #000;
            position: relative;
            text-decoration: none;
        }
        #Login a:hover{
            opacity: 0.628;
        }
        #Login a:focus{
            outline:none;
        }
        #Login a:before{
            content: "";
            position: absolute;
            width: 100%;
            height: 1px;
            bottom: 0;
            left: 0;
            background-color: #000;
            visibility: hidden;
            -webkit-transform: scaleX(0);
            transform: scaleX(0);
            -webkit-transition: all 0.3s ease-in-out 0s;
            transition: all 0.3s ease-in-out 0s;
            top: 1.2em;
            box-sizing: border-box;
        }
        #content-body{
            background: #5d5d5d;
        }
        #Login .field{
            display: flex;
            width: 370px;
            height: 36px;
            padding: 28px !important;
            margin: auto;
        }
        #Login .layui-form-item{
            position: relative;
            margin: auto;
        }
        #Login .layui-form-item label{
            top: 25%;
            left: 10px;
            position: absolute;
            background: rgba(0,0,0,0);
        }
        #Login .layui-form-item .field-success{
            top: 25%;
            right: 10px;
            position: absolute;
            background: #f4f4f4;
        }
        #Login #Submit_1{
            width: 304px;
            height: 36px;
            padding: 3px 15px;
            font-size: 20px;
            text-align: center;
            background: #f4f4f4;
        }
        #Login #Submit_1:hover{
            opacity: 0.628;
        }
        #Login .links-field{
            padding-top: 5px !important;
        }
        #content-body{
            background: rgba(0,0,0,0);
        }
        #StandardUsername input{
            background: rgba(0,0,0,0);
        }
        #username_1 i:before{
            background: rgba(0,0,0,0);
            color: #00a0b7;
        }
        #Login .login-text{
            width: 304px;
            height: 36px;
            margin: auto;
            padding: 3px 32px;
            border: none;
            vertical-align: middle;
            font-size: 18px;
            color: #fff;
            line-height: 20px;
            background: #f4f4f4;
        }
        #Login .login-text{
            background: rgba(0,0,0,0);
            border: none;
            border-bottom: 1px solid #FFF;
            text-align: center;
        }
        #Login .login-text:hover{
            border-bottom: 1px solid #f4f4f4;
        }
        #Login #StandardSubmit .login-text{
            background: rgba(0,0,0,0.3);
            border: 1px solid rgba(0,0,0,0);
            border-radius: 2px;
            opacity: 0.8;
        }
        #Login #StandardSubmit .login-text:hover{
            cursor: pointer;
            opacity: 0.9;
        }
        input:-webkit-autofill{
            background: rgba(0,0,0,0) !important;
            color: #FFF !important;
        }
        input:-webkit-autofill{
            background: rgba(0,0,0,0) !important;
            color: #FFF !important;
        }
    </style>

    <title>登录</title>

</head>
<body class="signwrapper">

<div class="sign-overlay" data-type="hot"></div>
<div class="signpanel">
    <div id="cloud1" class="cloud" style="background-position: 700px 100px;"></div>
    <div id="cloud2" class="cloud" style="background-position: 250px 460px;"></div>
</div>

<div class="wrap signin">

    <div class="container"  id="container">

        <div class="layui-layout layui-layout-back" id="layui_layout">

            <section id="content-container" style="display:flex; position:fixed;top: 0px;left: 0px;right: 0px;bottom: 0px;">
                <div id="content-body" class="signin" style="margin:-25px auto auto;width: 440px;min-height: 400px;">

                    <!--login box begin-->
                    <div class="login-title">
                        <h2 style="text-align:center; color: #FFF; margin-bottom: 0;padding-top: 15px;"> 登录 </h2>
                    </div>

                    <form id="Login" class="layui-form" action="/login/login" method="post">

                        <?php echo token(); ?>

                        <div class="field username-field">
                            <div class="layui-form-item">
                                <label for="username_1"> <i class="fa fa-user" title="会员名称"></i></label>
                                <span id="StandardUsername">
                                    <input type="text"  name="username" id="username_1" class="login-text Username" value="" maxlength="32" placeholder="会员名称 | 邮箱 | 手机号" >
                                </span>
                                <span class="field-success" style="display: none;">
                                    <i class="fa fa-check-square"></i>
                                 </span>
                            </div>
                        </div>

                        <div class="field password-field">
                            <div class="layui-form-item">
                                <label id="password-label" for="password_1"><i class="fa fa-key" title="登录密码"></i></label>
                                <span id="StandardPassword">
                                    <input type="password" name="password" id="password_1"  class="login-text" maxlength="40" placeholder="登录密码" >
                                </span>
                                <span class="field-success" style="display: none;">
                                    <i class="fa fa-check-square"></i>
                                </span>
                            </div>
                        </div>

                        <!--<div class="field password-field">-->
                        <!--<div class="layui-form-item">-->
                        <!--<label id="verify-label" for="password_1"><i class="fa fa-key" title="验证码"></i></label>-->
                        <!--<span id="verify">-->
                        <!--<input type="text" name="password" id="verify_1" class="login-text" maxlength="4" tabindex="2" autocomplete="off" placeholder="验证码" aria-label="验证码">-->
                        <!--<div><img src="" alt="captcha" /></div>-->
                        <!--</span>-->
                        <!--<span class="field-success" style="display: none;">-->
                        <!--<i class="fa fa-success"></i>-->
                        <!--</span>-->
                        <!--</div>-->
                        <!--</div>-->

                        <div class="field submit-field">
                            <div class="layui-form-item">
                                 <span id="StandardSubmit">
                                     <input type="button" value="确定登录" id="Submit_1" title="确定登录" class="login-text" lay-submit="" lay-filter="submit" />
                                 </span>
                            </div>
                        </div>

                        <div class="field links-field" style="display: none;">
                            <div class="layui-form-item">
                        <span id="StandardLinks">
                            <a href="/user/reset.html?from_site=0&amp;lang=zh_CN&amp;login_id=1"tabindex="6" class="forget-pwd" target="_blank"> 忘记密码</a>
                            <span class="separator" style="color:#000;"> | </span>
                            <a href="/user/register.html?from=login" class="register" target="_blank" tabindex="7">免费注册</a>
                        </span>
                            </div>
                        </div>

                        <ul class="entries" style="display: none;">
                            <li id="OtherLogin" class="other-login">
                                <a href="#" tabindex="4" class="weibo-login"><i class="fa fa-wechat"></i>微信登录</a>
                                <a href="#" tabindex="5" class="qq-login"><i class="fa fa-qq"></i> QQ登录</a>
                            </li>
                        </ul>

                    </form>

                </div>
            </section>

        </div>
    </div>

</div>

<script>
    window.onload = function () {
        $('.fa').html('');
    };
    var _width = document.documentElement.clientWidth;//获取页面可见宽度
    var offsetX1 = 700;
    var offsetX2 = 250;

    /// 飘动
    var Interval = setInterval(function() {
        if (offsetX1 >= _width) {
            offsetX1 =  -580;
        }

        if (offsetX2 >= _width) {
            offsetX2 =  -580;
        }

        offsetX1 += 1.1;
        offsetX2 += 1;
        $('.signpanel #cloud1').css("background-position", offsetX1 + "px 100px");
        $('.signpanel #cloud2').css("background-position", offsetX2 + "px 460px");
    }, 70);

    $(function(){
        $('#username_1').trigger('focus');
    });

    layui.use(['layer','form'],function () {
        var layer = top.layui.layer || layui.layer;
        //绑定form提交
        var form = layui.form();

        //自定义验证规则
        form.verify({

        });


        var onSubmit = false;
        $(document).on('keyup',function (e) {
            //如提交中,阻止提交
            if(onSubmit){
                return;
            }
            //键盘事件
            var keyCode = e.keyCode;
            if (keyCode === 13) {
                $('[lay-filter="submit"]').trigger('click');
            }
        });

        //监听提交
        form.on('submit(submit)', function (data) {
            var param = $(data.form).serialize(),$form = $(data.form),url = $form.attr('action'),index;
            if (url === undefined || url === ''){
                //没有提交地址 中断
                url = window.location.href;
            }

            var username = $('input[name="username"]',$form).val();
            var password = $('input[name="password"]',$form).val();

            if (username.replace(/(^\s*)|(\s*$)/g, '') === ''){
                $('input[name="username"]',$form).val('');
                layer.msg('登录账号不能为空');
                return;
            }

            if (password === ''){
                layer.msg('密码不能为空');
                return;
            }

            $.ajax({
                url:url,
                type:'POST',
                data:param,
                beforeSend:function () {
                    onSubmit = true;
                    index = layer.load(1, {shade:0.1});
                },
                success:function (data) {
                    onSubmit = false;
                    layer.close(index);
                    if (data.info !== undefined){
                        layer.msg(data.info);
                    }
                    if (data.status == '1' && data.url !== undefined){
                        window.location.href = data.url;
                    }
                },
                error:function (data) {
                    onSubmit = false;
                    layer.close(index);
                    layer.msg('登录失败');
                }
            });
            //必须中断
            return false;
        });

    });
</script>

</body>
</html>
