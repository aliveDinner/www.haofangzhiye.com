<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:80:"/usr/share/nginx/haofangzhiye/public/../application/home/view/index/opinion.html";i:1503420552;s:89:"/usr/share/nginx/haofangzhiye/public/../application/common/view/layouts/default-main.html";i:1503420551;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Cache-Control" content="no-transform">
    <meta name="renderer" content="webkit">
    <meta name="mobile-agent" content="format=html5;url=http://m.alivehouse.com/">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="_csrf_param" content="<?php echo !empty($_csrf_param)?$_csrf_param : ''; ?>">
    <meta name="_csrf_token" content="<?php echo !empty($_csrf_token)?$_csrf_token : ''; ?>">

    <title><?php echo !empty($meta_title)?$meta_title.' - ' : ''; ?>_TITLE_</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="_SHORTCUT_" type="image/x-icon">
    <link rel="canonical" href="/index/index.html">

    <script type="text/javascript" src="__JS__/jquery.js"></script>
    <script type="text/javascript" src="_LAYUI_/layui.js"></script>

    <!-- load css -->
    <link rel="stylesheet" type="text/css" href="_LAYUI_/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="__CSS__/layout.css" media="all">
    <link rel="stylesheet" type="text/css" href="__CSS__/home.css" media="all">
    <link rel="stylesheet" type="text/css" href="__CSS__/iconfont.css" media="all">

    <!-- Define base CSS -->
    <style id="styleWebSite" type="text/css">
        #header-content-container {
            width: 1200px;
        }

        #main-content-container {
            width: 1200px;
        }

        #footer-content-container {
            width: 1200px;
        }

        #extra-content-container {
            width: 1200px;
        }

        #memberBar {
            width: 1200px;
        }

        #webTop {
            width: 1200px;
        }

        #absTopForms {
            width: 1200px;
        }

        .webNavDefault {
            width: 1200px;
        }

        #webHeader {
            width: 1200px;
        }

        #absForms {
            width: 1200px;
        }

        div#webContainer {
            width: 1200px;
        }

        #absBottomForms {
            width: 1200px;
        }

        #webFooter {
            width: 1200px;
        }

        div.webNav .navMainContent {
            width: 1200px;
        }

        div.nav .navMainContent {
            width: 1200px;
        }

        .fullmeasureContent {
            width: 1200px;
        }

        #webBanner {
            width: 100%;
        }
    </style>

    <script>

        $(document).ready(function () {
            layui.use(['layer', 'util'], function () {
                var $ = layui.jquery,
                    layer = layui.layer,
                    util = layui.util;

                //回到顶部
                //使用内部工具组件
                util.fixbar({
                    top: true,
                    css: {right: 15, bottom: 55},
                    click: function (type) {
                        if (type === 'top') {
//                            layer.msg('返回顶层');
                        }
                    }
                });
            });
        });
    </script>

</head>
<body id="alive-site-body" lay-position="rel">


<section id="alive-site-main" class="alive-site-main">

    <article id="alive-site-web" class="alive-site-web">

        <!-- 中部 部区域开启 -->
        <section id="web-main-container" class="web-main-container">

            <!-- 右侧 主体内容开启 -->
            <article id="main-content-container" class="main-content-container">

                <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <title> [ Home ] </title>

    <style>
        .layui-form-item {
            margin-bottom: 24px;
            font-size: 14px;
        }
        .layui-form-item .layui-inline:nth-child(2) .layui-form-label{
            width: 60px !important;
        }

        .layui-form-item .layui-input-block.right-width {
            padding-right: 120px;
        }

        .layui-input-inline{
            width: 235px!important;
            margin-bottom: 5px;
        }
        .layui-form-item .layui-input-block input[name="address"]{
            width: 600px;
        }
        .layui-input:focus,.layui-textarea:focus{
            border-color: #0DBD9F !important;
        }

    </style>

</head>

<body>

<!-- This webContainerTop start 上 开始 -->
<section id="webContainerTop" style="display: none;">

    <!-- This absTopForms start -->
    <section id="absTopTable">

    </section>
    <!-- This absTopForms end -->

    <!-- This fullTopForms start -->
    <section id="fullTopTable">

    </section>
    <!-- This fullTopForms end -->

</section>
<!-- This webContainerTop end 上 结束 -->

<!-- This webContainerMiddle start 中 开始 -->
<section id="webContainerMiddle" class="webContainerMiddle">

    <!-- This webBannerTable start -->
    <section id="webBannerTable" class="webBannerTable flex">

        <!-- This bannerAbsTable start -->
        <section id="bannerAbsTable" class="absTopTable">

        </section>
        <!-- This bannerAbsTable end -->

        <div id="banner-body" class="flex">

            <!-- This bannerTopTable start -->
            <section id="bannerTopTable" class="topTable" style="display: none;">

                <!-- 左侧 区域开启 -->
                <section class="leftTable flex-top-left" style="display: none;">

                </section>
                <!-- 左侧 区域结束 -->

                <!-- 中间 区域开启 -->
                <section class="centerTable flex-top-center" style="display: none;">

                </section>
                <!-- 中间 区域结束 -->

                <!-- 右侧 区域开启 -->
                <section class="rightTable flex-top-right" style="display: none;">

                </section>
                <!-- 右侧 区域结束 -->

            </section>
            <!-- This bannerTopTable end -->

            <!-- This bannerMiddleTable start -->
            <section id="bannerMiddleTable" class="middleTable">

                <!-- 顶级主体 左侧 区域开启 -->
                <section class="leftTable flex-middle-left" style="display: none;">

                </section>
                <!-- 顶级主体 左侧 区域结束 -->

                <!-- 顶级主体 中间 区域导航开启 -->
                <section class="centerTable flex-middle-center">

                </section>
                <!-- 顶级主体 中间 区域导航结束 -->

                <!-- 顶级主体 右侧 区域导航开启 -->
                <section class="rightTable flex-middle-right" style="display: none;">

                </section>
                <!-- 顶级主体右侧区域导航结束 -->

            </section>
            <!-- This bannerMiddleTable end -->

            <!-- This bannerBottomTable start -->
            <section id="bannerBottomTable" class="bottomTable">

                <!-- 左侧 区域开启 -->
                <section class="leftTable flex-bottom-left" style="display: none;">

                </section>
                <!-- 左侧 区域结束 -->

                <!-- 中间 区域开启 -->
                <section class="centerTable flex-bottom-center" style="display: none;">

                </section>
                <!-- 中间 区域结束 -->

                <!-- 右侧 区域开启 -->
                <section class="rightTable flex-bottom-left" style="display: none;">

                </section>
                <!-- 右侧 区域结束 -->

            </section>
            <!-- This bannerBottomTable end -->

        </div>

    </section>
    <!-- This webBannerTable end -->

    <!-- This webBannerTable start -->
    <section id="webContentBody" class="webContentBody">

        <div class="alive-layout">

            <div class="alive-header" style="height: 50px;">
                <div style="width:100%;line-height: 40px;color: #ff6633;font-size: 26px;text-align: center;">告诉我们能帮你什么？</div>
            </div>

            <div class="alive-body">
                <div class="alive-flex alive-upLevel" style="width:100%;height:auto;position: relative;overflow: hidden;">
                    <form class="layui-form forms" id="defaultForm" action="/contact/create" method="post" style="padding: 15px 0">

                        <div class="layui-form-item">

                            <label class="layui-form-label"><span class="layui-color-danger">*</span>您的称呼:</label>
                            <div class="layui-inline">
                                <div class="layui-input-inline">
                                    <input type="text" value="" name="name" lay-verify="require" placeholder="您的称呼" maxlength="18" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-inline" style="margin-right: 0;">
                                <label class="layui-form-label"><span class="layui-color-danger"></span>现居地</label>
                                <div class="layui-input-block">
                                    <input type="text" value="" name="address" lay-verify="" placeholder="现居地" class="layui-input">
                                </div>
                            </div>
                        </div>

                        <div class="layui-form-item">

                            <label class="layui-form-label"><span class="layui-color-danger">*</span>联系方式:</label>
                            <div class="layui-inline">
                                <div class="layui-input-inline">
                                    <input type="text" value="" name="contact" lay-verify="exist" lay-group="contact" placeholder="联系方式" maxlength="11" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-inline">
                                <label class="layui-form-label"><span class="layui-color-danger"></span>邮箱</label>
                                <div class="layui-input-inline">
                                    <input type="text" value="" name="email" lay-verify="exist" lay-group="contact" placeholder="邮箱" class="layui-input" >
                                </div>
                            </div>
                            <div class="layui-inline">
                                <label class="layui-form-label"><span class="layui-color-danger"></span>微信</label>
                                <div class="layui-input-inline">
                                    <input type="text" value="" name="weChat" lay-verify="exist" lay-group="contact" placeholder="微信" class="layui-input">
                                </div>
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label"><span class="layui-color-danger"></span>联系内容:</label>
                            <div class="layui-input-block right-width">
                                <textarea name="content" lay-verify="" placeholder="我能帮助你什么？" class="layui-textarea" lay-height="auto"></textarea>
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <div class="layui-inline">
                                <label class="layui-form-label"><span class="layui-color-danger"></span>指定客服:</label>
                                <div class="layui-input-inline">
                                    <input type="hidden" value="" name="back_user_id" lay-verify="" placeholder="指定客服" class="layui-input" lay-search="refresh" lay-filter="key">
                                    <input type="text" value="" lay-verify="" placeholder="指定客服" class="layui-input" lay-filter="service">
                                </div>
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <div class="layui-inline">
                                <label class="layui-form-label"></label>
                                <button class="layui-btn" lay-submit="" lay-filter="submit">提交</button>
                                <button type="reset" class="layui-btn layui-btn-primary" lay-filter="reset" style="display: none;">重置</button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>

            <div class="alive-footer"></div>

        </div>

    </section>
    <!-- This webBannerTable end -->

</section>
<!-- This webContainerMiddle end 中 结束 -->

<!-- This webContainerBottom start 下 开始 -->
<section id="webContainerBottom" style="display: none;">

    <!-- This fullBottomForms start -->
    <section id="fullBottomTable">

    </section>
    <!-- This fullBottomForms end -->

    <!-- This absBottomForms start -->
    <section id="absBottomTable">

    </section>
    <!-- This absBottomForms end -->

</section>
<!-- This webContainerBottom end 下 结束 -->

<script>
    $(function () {
        var options = {
            form: '#defaultForm',
            success: function (data) {
                $('[lay-filter="reset"]').trigger('click');
            }
        };
        Site.submit(options);

        Site.search({
            url: '/ajax/getService',
            targetClass: '[lay-filter="service"]',          // 输入框目标元素
            parentClass: '.layui-input-inline',          // 父级类
            hiddenClass: '[name="back_user_id"]',          // 隐藏域input
            key:'name'
        });

    });
</script>

</body>
</html>

            </article>
            <!-- 右侧 主体内容结束 -->

        </section>
        <!-- 中部 区域结束 -->

    </article>

</section>

<!-- fakeLoader start -->
<div class="fakeloader"></div>
<!-- fakeLoader end -->


<!-- fixed Left-Top -->
<div id="flexLeftTop" class="flexLeftTop">
    <div id="floatLeftTopForms" class="forms sideForms floatForms">

    </div>
</div>

<!-- fixed Right-Top -->
<div id="flexRightTop" class="flexRightTop">
    <div id="floatRightTopForms" class="forms sideForms floatForms">

    </div>
</div>

<!-- fixed Left-Bottom -->
<div id="flexLeftBottom" class="flexLeftBottom">
    <div id="floatLeftBottomForms" class="forms sideForms floatForms">

    </div>
</div>

<!-- fixed Right-Bottom -->
<div id="flexRightBottom" class="flexRightBottom">
    <div id="floatRightBottomForms" class="forms sideForms floatForms">

    </div>
</div>

<!-- background music -->
<div id="bgMusic" class="bgMusic"></div>

<script src="__JS__/site.js"></script>

<script src="__JS__/home.js"></script>

</body>
</html>