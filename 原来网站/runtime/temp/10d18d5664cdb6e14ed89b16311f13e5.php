<?php if (!defined('THINK_PATH')) exit(); /*a:5:{s:77:"/usr/share/nginx/haofangzhiye/public/../application/home/view/news/index.html";i:1503420553;s:90:"/usr/share/nginx/haofangzhiye/public/../application/common/view/layouts/default-index.html";i:1503420551;s:91:"/usr/share/nginx/haofangzhiye/public/../application/common/view/layouts/default-header.html";i:1503420551;s:91:"/usr/share/nginx/haofangzhiye/public/../application/common/view/layouts/default-footer.html";i:1503420551;s:90:"/usr/share/nginx/haofangzhiye/public/../application/common/view/layouts/default-extra.html";i:1503420551;}*/ ?>
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
                    bar1: '&#xe606;',
                    bar2: '&#xe607;',
                    css: {right: 15, bottom: 55},
                    click: function (type) {
                        if (type === 'bar1') {
                            contact();
                        } else if (type === 'bar2') {
                            opinion();
                        } else if (type === 'top') {
//                            layer.msg('返回顶层');
                        }
                    }
                });

                function contact() {
                    layer.open({
                        scrollbar: false,
                        type: 2,
                        title: false,
                        shade: 0.3,
                        area: ['1230px', '630px'],
                        content: "<?php echo url('contact/contact'); ?>"
                    });
                }

                function opinion() {
                    layer.open({
                        scrollbar: false,
                        type: 2,
                        title: false,
                        shade: 0.3,
                        area: ['1230px', '630px'],
                        content: "<?php echo url('index/opinion'); ?>"
                    });
                }

                $(document).on('click','[lay-filter="contact"]',contact);

                $(document).on('click','[lay-filter="opinion"]',opinion);
            });
        });
    </script>

</head>
<body id="alive-site-body" lay-position="rel">


<section id="alive-site-main" class="alive-site-main">

    <article id="alive-site-web" class="alive-site-web">

        <!-- 顶部 区域开启 -->
        <section id="web-header-container" class="web-header-container">

            <!-- 顶部 主体内容开启 -->
<section id="header-content-container" class="header-content-container flex">

    <!-- 顶级 全屏操作 容器 开始 -->
    <article id="header-full-container">

    </article>
    <!-- 顶级 全屏操作 容器 结束 -->

    <article class="header-body">

        <!-- This headerAbsTable start -->
        <section id="headerAbsTable" class="absTopTable">

            <div id="headerAbs" class="forms sideForms absForms">
                <div style="position:absolute;"></div><!-- for ie6 -->

            </div>

        </section>
        <!-- This headerAbsTable end -->

        <!-- This headerTopTable start -->
        <section id="headerTopTable" class="topTable">

            <!-- 左侧 区域开启 -->
            <article class="leftTable flex-top-left">

            </article>
            <!-- 左侧 区域结束 -->

            <!-- 中间 区域开启 -->
            <article class="centerTable flex-top-center">

            </article>
            <!-- 中间 区域结束 -->

            <!-- 右侧 区域开启 -->
            <article class="rightTable flex-top-left">

            </article>
            <!-- 右侧 区域结束 -->

        </section>
        <!-- This headerTopTable end -->

        <!-- This headerMiddleTable start -->
        <section id="headerMiddleTable" class="middleTable">

            <!-- 顶级主体 左侧 logo区域开启 -->
            <article id="headerLeft" class="leftTable flex-middle-left">

                <div id="corpTitle" class="corpTitle" style="position: relative;">
                    <img src="/static/images/house-logo.png" alt="LOGO" title="好房置业" style="position:absolute;width: 140px;height: 140px;top: -60px;">
                    <span style="padding-left: 160px;">Hao Fang Zhi Ye</span>
                </div>

            </article>
            <!-- 顶级主体 左侧 logo区域结束 -->

            <!-- 顶级主体 中间 区域导航开启 -->
            <article id="headerCenter" class="centerTable flex-middle-center" style="display: none;">

                <div id="headerHeaderZone" class="headerZone">
                    <div class="headerZone-bg"></div>
                </div>
                <div id="headerMenu" class="headerMenu">

                </div>

            </article>
            <!-- 顶级主体 中间 区域导航结束 -->

            <!-- 顶级主体 右侧 区域导航开启 -->
            <article id="headerRight" class="rightTable flex-middle-right">

                <div id="headerNav" class="headerNav" lay-select="nav-<?php echo !empty($nav)?$nav : 'home'; ?>">

                    <span class="item" lat-filter="nav-home">
                        <a hidefocus="true" style="outline:none;" href="/index/index.html" target="_self" onclick=""><span class="itemName">首页</span></a>
                    </span>

                    <span class="item" lat-filter="nav-house">
                        <a hidefocus="true" style="outline:none;" href="/house/index.html" target="_self" onclick=""><span class="itemName">新房</span></a>
                    </span>

                    <span class="item" lat-filter="nav-hand-house">
                        <a hidefocus="true" style="outline:none;" href="/hand_house/index.html" target="_self" onclick=""><span class="itemName">二手房</span></a>
                    </span>

                    <span class="item" lat-filter="nav-news">
                        <a hidefocus="true" style="outline:none;" href="/news/index.html" target="_self" onclick=""><span class="itemName">房产资讯</span></a>
                    </span>

                    <span class="item" lat-filter="nav-better">
                        <a hidefocus="true" style="outline:none;" href="/better/index.html" target="_self" onclick=""><span class="itemName">家装</span></a>
                    </span>

                    <span class="item" lat-filter="nav-contact">
                        <a hidefocus="true" style="outline:none;" href="/contact/index.html" target="_self" onclick=""><span class="itemName">联系我们</span></a>
                    </span>

                </div>

            </article>
            <!-- 顶级主体右侧区域导航结束 -->

        </section>
        <!-- This headerMiddleTable end -->

        <!-- This headerBottomTable start -->
        <section id="headerBottomTable" class="bottomTable">

            <!-- 左侧 区域开启 -->
            <article class="leftTable flex-bottom-left" style="display: none;">

            </article>
            <!-- 左侧 区域结束 -->

            <!-- 中间 区域开启 -->
            <article id="headerBottom" class="centerTable flex-bottom-center">

            </article>
            <!-- 中间 区域结束 -->

            <!-- 右侧 区域开启 -->
            <article class="rightTable flex-bottom-left" style="display: none;">

            </article>
            <!-- 右侧 区域结束 -->

        </section>
        <!-- This headerBottomTable end -->

    </article>

</section>
<!-- 顶部 主体内容结束 -->








        </section>
        <!-- 顶级 区域结束 -->

        <!-- 中部 部区域开启 -->
        <section id="web-main-container" class="web-main-container">

            <!-- 右侧 主体内容开启 -->
            <article id="main-content-container" class="main-content-container">

                <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <title> [ Home ] </title>

</head>

<body>

<!-- This webContainerTop start 上 开始 -->
<section id="webContainerTop" style="display: none;">

    <!-- This absTopForms start -->
    <article id="absTopTable">

    </article>
    <!-- This absTopForms end -->

    <!-- This fullTopForms start -->
    <article id="fullTopTable">

    </article>
    <!-- This fullTopForms end -->

</section>
<!-- This webContainerTop end 上 结束 -->

<!-- This webContainerMiddle start 中 开始 -->
<section id="webContainerMiddle" class="webContainerMiddle">

    <!-- This webBannerTable start -->
    <article id="webBannerTable" class="webBannerTable flex" style="min-height: 300px;">

        <!-- This bannerAbsTable start -->
        <section id="bannerAbsTable" class="absTopTable">

        </section>
        <!-- This bannerAbsTable end -->

        <section id="banner-body" class="flex" style="display: block;min-height: 300px;">

            <!-- This bannerTopTable start -->
            <article id="bannerTopTable" class="topTable" style="display: none;">

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

            </article>
            <!-- This bannerTopTable end -->

            <!-- This bannerMiddleTable start -->
            <article id="bannerMiddleTable" class="middleTable">

                <!-- 顶级主体 左侧 区域开启 -->
                <section class="leftTable flex-middle-left" style="display: none;">

                </section>
                <!-- 顶级主体 左侧 区域结束 -->

                <!-- 顶级主体 中间 区域导航开启 -->
                <section class="centerTable flex-middle-center">

                    <div id="webBanner" style="width: 1200px; overflow: hidden; height: 300px;"></div>

                </section>
                <!-- 顶级主体 中间 区域导航结束 -->

                <!-- 顶级主体 右侧 区域导航开启 -->
                <section class="rightTable flex-middle-right" style="display: none;">

                </section>
                <!-- 顶级主体右侧区域导航结束 -->

            </article>
            <!-- This bannerMiddleTable end -->

            <!-- This bannerBottomTable start -->
            <article id="bannerBottomTable" class="bottomTable">

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

            </article>
            <!-- This bannerBottomTable end -->

        </section>

    </article>
    <!-- This webBannerTable end -->

    <!-- This webBannerTable start -->
    <article id="webContentBody" class="webContentBody">

        <section class="alive-layout">

            <article class="alive-header" style="height: 100px;"></article>

            <article class="alive-body">
                <div id="buildHot" class="alive-flex alive-upLevel" style="width:100%;min-height:600px;position: relative;overflow: hidden;">
                    <div class="alive-flex" style="position: relative;">

                        <div class="item alive-item-outer" style="width: 350px;height: 350px;">
                            <div class="itemIcon">
                                <a hidefocus="true" href="/static/uploads/ima05.jpg" target="_blank">
                                    <img alt="汇景新城急租" data-url="/static/uploads/ima05.jpg" title=""
                                         style="width: 350px; height: 211px;">
                                </a>
                            </div>
                            <div class="alive-upLevel itemTitle" style="height: 140px;">
                                <div class="key">
                                    <p><a class="alive-active"><span>房产中介套路深 虚假宣传渗透交易每个环节深 虚假宣传渗透交易每个环节深 虚假宣传渗透交易每个环节深 虚假宣传渗透交易每个环节</span></a></p>
                                </div>
                                <div class="detail">
                                    <p>“不租房不搬家，不足以谈北漂。”把最后一包行李拖进新租的房子，小段终于松了一口气。这是她来到北京三年第三次搬家，从</p>
                                </div>
                            </div>
                        </div>

                        <div class="item alive-item-outer" style="width: 350px;height: 350px;">
                            <div class="itemIcon">
                                <a hidefocus="true" href="/static/uploads/ima05.jpg" target="_blank">
                                    <img alt="汇景新城急租" data-url="/static/uploads/ima05.jpg" title=""
                                         style="width: 350px; height: 211px;">
                                </a>
                            </div>
                            <div class="alive-upLevel itemTitle" style="height: 140px;">
                                <div class="key">
                                    <p><a class="alive-active"><span>房产中介套路深 虚假宣传渗透交易每个环节深 虚假宣传渗透交易每个环节深 虚假宣传渗透交易每个环节深 虚假宣传渗透交易每个环节</span></a></p>
                                </div>
                                <div class="detail">
                                    <p>“不租房不搬家，不足以谈北漂。”把最后一包行李拖进新租的房子，小段终于松了一口气。这是她来到北京三年第三次搬家，从</p>
                                </div>
                            </div>
                        </div>

                        <div class="item alive-item-outer" style="width: 350px;height: 350px;">
                            <div class="itemIcon">
                                <a hidefocus="true" href="/static/uploads/ima05.jpg" target="_blank">
                                    <img alt="汇景新城急租" data-url="/static/uploads/ima05.jpg" title=""
                                         style="width: 350px; height: 211px;">
                                </a>
                            </div>
                            <div class="alive-upLevel itemTitle" style="height: 140px;">
                                <div class="key">
                                    <p><a class="alive-active"><span>房产中介套路深 虚假宣传渗透交易每个环节深 虚假宣传渗透交易每个环节深 虚假宣传渗透交易每个环节深 虚假宣传渗透交易每个环节</span></a></p>
                                </div>
                                <div class="detail">
                                    <p>“不租房不搬家，不足以谈北漂。”把最后一包行李拖进新租的房子，小段终于松了一口气。这是她来到北京三年第三次搬家，从</p>
                                </div>
                            </div>
                        </div>

                        <div class="item alive-item-outer" style="width: 350px;height: 350px;">
                            <div class="itemIcon">
                                <a hidefocus="true" href="/static/uploads/ima05.jpg" target="_blank">
                                    <img alt="汇景新城急租" data-url="/static/uploads/ima05.jpg" title=""
                                         style="width: 350px; height: 211px;">
                                </a>
                            </div>
                            <div class="alive-upLevel itemTitle" style="height: 140px;">
                                <div class="key">
                                    <p><a class="alive-active"><span>房产中介套路深 虚假宣传渗透交易每个环节深 虚假宣传渗透交易每个环节深 虚假宣传渗透交易每个环节深 虚假宣传渗透交易每个环节</span></a></p>
                                </div>
                                <div class="detail">
                                    <p>“不租房不搬家，不足以谈北漂。”把最后一包行李拖进新租的房子，小段终于松了一口气。这是她来到北京三年第三次搬家，从</p>
                                </div>
                            </div>
                        </div>

                        <div class="item alive-item-outer" style="width: 350px;height: 350px;">
                            <div class="itemIcon">
                                <a hidefocus="true" href="/static/uploads/ima05.jpg" target="_blank">
                                    <img alt="汇景新城急租" data-url="/static/uploads/ima05.jpg" title=""
                                         style="width: 350px; height: 211px;">
                                </a>
                            </div>
                            <div class="alive-upLevel itemTitle" style="height: 140px;">
                                <div class="key">
                                    <p><a class="alive-active"><span>房产中介套路深 虚假宣传渗透交易每个环节深 虚假宣传渗透交易每个环节深 虚假宣传渗透交易每个环节深 虚假宣传渗透交易每个环节</span></a></p>
                                </div>
                                <div class="detail">
                                    <p>“不租房不搬家，不足以谈北漂。”把最后一包行李拖进新租的房子，小段终于松了一口气。这是她来到北京三年第三次搬家，从</p>
                                </div>
                            </div>
                        </div>

                        <div class="item alive-item-outer" style="width: 350px;height: 350px;">
                            <div class="itemIcon">
                                <a hidefocus="true" href="/static/uploads/ima05.jpg" target="_blank">
                                    <img alt="汇景新城急租" data-url="/static/uploads/ima05.jpg" title=""
                                         style="width: 350px; height: 211px;">
                                </a>
                            </div>
                            <div class="alive-upLevel itemTitle" style="height: 140px;">
                                <div class="key">
                                    <p><a class="alive-active"><span>房产中介套路深 虚假宣传渗透交易每个环节深 虚假宣传渗透交易每个环节深 虚假宣传渗透交易每个环节深 虚假宣传渗透交易每个环节</span></a></p>
                                </div>
                                <div class="detail">
                                    <p>“不租房不搬家，不足以谈北漂。”把最后一包行李拖进新租的房子，小段终于松了一口气。这是她来到北京三年第三次搬家，从</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </article>

            <article class="alive-footer"></article>

        </section>

        <section class="alive-layout">

            <article class="alive-header" style="height: 25px;"></article>

            <article class="alive-body">
                <div id="buildTimeLine" class="alive-line alive-outer" style="height:640px;">
                    <div class="alive-flex alive-outer" style="position: relative;">

                        <div class="alive-line-item alive-level" style="height:100px;">
                            <div class="level-left line-left line-title" style="width:200px;vertical-align:top;">
                                <a class="alive-active" hidefocus="true" href="" target="_blank">2017/05/15</a>
                            </div>
                            <div class="level-right line-right alive-level">
                                <div class="level-left line-icon">
                                    <div class="circleOuter">
                                        <div class="circle"></div>
                                    </div>
                                </div>
                                <div class="level-right line-content">
                                    <div class="content-title itemTitle">
                                        <a class="alive-active" hidefocus="true" href="" target="_blank" title="">房企当下拿地 到底是"馅饼"还是"陷阱"？</a>
                                    </div>
                                    <div class="content-body itemDetail">
                                        <p class="summary">统计显示，仅7月前10天，全国单幅地块成交金额超过5亿的地块达29宗，其中溢价率超50%的地王达18宗。一二线城市...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="hideLine" style="width: 100%;">

                        <div class="alive-line-item alive-level" style="height:100px;">
                            <div class="level-left line-left line-title" style="width:200px;vertical-align:top;">
                                <a class="alive-active" hidefocus="true" href="" target="_blank">2017/05/15</a>
                            </div>
                            <div class="level-right line-right alive-level">
                                <div class="level-left line-icon">
                                    <div class="circleOuter">
                                        <div class="circle"></div>
                                    </div>
                                </div>
                                <div class="level-right line-content">
                                    <div class="content-title itemTitle">
                                        <a class="alive-active" hidefocus="true" href="" target="_blank" title="">房企当下拿地 到底是"馅饼"还是"陷阱"？</a>
                                    </div>
                                    <div class="content-body itemDetail">
                                        <p class="summary">统计显示，仅7月前10天，全国单幅地块成交金额超过5亿的地块达29宗，其中溢价率超50%的地王达18宗。一二线城市...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="hideLine" style="width: 100%;">

                        <div class="alive-line-item alive-level" style="height:100px;">
                            <div class="level-left line-left line-title" style="width:200px;vertical-align:top;">
                                <a class="alive-active" hidefocus="true" href="" target="_blank">2017/05/15</a>
                            </div>
                            <div class="level-right line-right alive-level">
                                <div class="level-left line-icon">
                                    <div class="circleOuter">
                                        <div class="circle"></div>
                                    </div>
                                </div>
                                <div class="level-right line-content">
                                    <div class="content-title itemTitle">
                                        <a class="alive-active" hidefocus="true" href="" target="_blank" title="">房企当下拿地 到底是"馅饼"还是"陷阱"？</a>
                                    </div>
                                    <div class="content-body itemDetail">
                                        <p class="summary">统计显示，仅7月前10天，全国单幅地块成交金额超过5亿的地块达29宗，其中溢价率超50%的地王达18宗。一二线城市...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="hideLine" style="width: 100%;">

                        <div class="alive-line-item alive-level" style="height:100px;">
                            <div class="level-left line-left line-title" style="width:200px;vertical-align:top;">
                                <a class="alive-active" hidefocus="true" href="" target="_blank">2017/05/15</a>
                            </div>
                            <div class="level-right line-right alive-level">
                                <div class="level-left line-icon">
                                    <div class="circleOuter">
                                        <div class="circle"></div>
                                    </div>
                                </div>
                                <div class="level-right line-content">
                                    <div class="content-title itemTitle">
                                        <a class="alive-active" hidefocus="true" href="" target="_blank" title="">房企当下拿地 到底是"馅饼"还是"陷阱"？</a>
                                    </div>
                                    <div class="content-body itemDetail">
                                        <p class="summary">统计显示，仅7月前10天，全国单幅地块成交金额超过5亿的地块达29宗，其中溢价率超50%的地王达18宗。一二线城市...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="hideLine" style="width: 100%;">

                        <div class="alive-line-item alive-level" style="height:100px;">
                            <div class="level-left line-left line-title" style="width:200px;vertical-align:top;">
                                <a class="alive-active" hidefocus="true" href="" target="_blank">2017/05/15</a>
                            </div>
                            <div class="level-right line-right alive-level">
                                <div class="level-left line-icon">
                                    <div class="circleOuter">
                                        <div class="circle"></div>
                                    </div>
                                </div>
                                <div class="level-right line-content">
                                    <div class="content-title itemTitle">
                                        <a class="alive-active" hidefocus="true" href="" target="_blank" title="">房企当下拿地 到底是"馅饼"还是"陷阱"？</a>
                                    </div>
                                    <div class="content-body itemDetail">
                                        <p class="summary">统计显示，仅7月前10天，全国单幅地块成交金额超过5亿的地块达29宗，其中溢价率超50%的地王达18宗。一二线城市...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="hideLine" style="width: 100%;">

                        <hr class="upLine" style="height:100%;left: 222px;">
                    </div>
                </div>
            </article>

            <article class="alive-footer"></article>

        </section>

    </article>
    <!-- This webBannerTable end -->

</section>
<!-- This webContainerMiddle end 中 结束 -->

<!-- This webContainerBottom start 下 开始 -->
<section id="webContainerBottom" style="display: none;">

    <!-- This fullBottomForms start -->
    <article id="fullBottomTable">

    </article>
    <!-- This fullBottomForms end -->

    <!-- This absBottomForms start -->
    <article id="absBottomTable">

    </article>
    <!-- This absBottomForms end -->

</section>
<!-- This webContainerBottom end 下 结束 -->

<script>

    $(function () {
        var data = JSON.parse('<?php echo $slider; ?>');
        var options = {
            "banner": "#webBanner",
            "height": 300,
            "isWidth":true,
            "playTime": 6000,
            "animateTime": 628,
            "interval": 6000,
            "btnType": 1,
            "targetType": "2",
//            "wideScreen": true,
//            "autoPlay":true,
            hiddenBar: true,//设置是否隐藏底部导航条
            hiddenControl: true,//设置隐藏左右切换按钮
        };
        Site.initBanner(data,options);

    });

</script>

</body>
</html>

            </article>
            <!-- 右侧 主体内容结束 -->

        </section>
        <!-- 中部 区域结束 -->


        <!-- 底部 区域开启 -->
        <section id="web-footer-container" class="web-footer-container">

            <!-- 底部 主体内容开启 -->
<section id="footer-content-container" class="footer-content-container flex">

    <!-- 底部 全屏操作 容器 开始 -->
    <article id="footer-full-container">

    </article>
    <!-- 底部 全屏操作 容器 结束 -->

    <article class="footer-body">

        <!-- This footerAbsTable start -->
        <section id="footerAbsTable" class="absTopTable">

            <div id="footerAbs" class="forms sideForms absForms">
                <div style="position:absolute;"></div><!-- for ie6 -->

            </div>

        </section>
        <!-- This footerAbsTable end -->

        <!-- This footerTopTable start -->
        <section id="footerTopTable" class="topTable" style="display: none;">

            <!-- 左侧 区域开启 -->
            <article class="leftTable flex-top-left">

            </article>
            <!-- 左侧 区域结束 -->

            <!-- 中间 区域开启 -->
            <article class="centerTable flex-top-center">

            </article>
            <!-- 中间 区域结束 -->

            <!-- 右侧 区域开启 -->
            <article class="rightTable flex-top-right">

            </article>
            <!-- 右侧 区域结束 -->

        </section>
        <!-- This footerTopTable end -->

        <!-- This footerMiddleTable start -->
        <section id="footerMiddleTable" class="middleTable">

            <!-- 顶级主体 左侧 区域开启 -->
            <article class="leftTable flex-middle-left" style="display: none;">

            </article>
            <!-- 顶级主体 左侧 区域结束 -->

            <!-- 顶级主体 中间 区域导航开启 -->
            <article class="centerTable flex-middle-center">

                <div id="footerMiddle">

                    <div class="item">
                        <a hidefocus="true" class="item-two" href="<?php echo url('contact/index'); ?>" target="_blank">
                            <div class="floatImgWrap">
                                <img class="float_in_img " src="/static/images/shadow-buy-house.png">
                            </div>
                        </a>
                        <a class="item-two" href="<?php echo url('contact/index'); ?>" target="_blank">购买意愿</a>
                    </div>

                    <div class="item">
                        <a hidefocus="true" class="item-two" lay-filter="opinion">
                            <div class="floatImgWrap">
                                <img class="float_in_img " src="/static/images/shadow-sale-house.png">
                            </div>
                        </a>
                        <a class="item-two" lay-filter="opinion">我要卖房</a>
                    </div>

                    <div class="item">
                        <a hidefocus="true" class="item-two" href="<?php echo url('contact/index'); ?>" target="_blank">
                            <div class="floatImgWrap">
                                <img class="float_in_img " src="/static/images/shadow-rent-house.png">
                            </div>
                        </a>
                        <a class="item-two" href="<?php echo url('contact/index'); ?>" target="_blank">留言求购</a>
                    </div>

                    <div class="item">
                        <a hidefocus="true" class="item-two" href="<?php echo url('contact/hotService'); ?>" target="_blank">
                            <div class="floatImgWrap">
                                <img class="float_in_img " src="/static/images/shadow-manage-money.png">
                            </div>
                        </a>
                        <a class="item-two" href="<?php echo url('contact/hotService'); ?>" target="_blank">金牌客服</a>
                    </div>

                </div>

            </article>
            <!-- 顶级主体 中间 区域导航结束 -->

            <!-- 顶级主体 右侧 区域导航开启 -->
            <article class="rightTable flex-middle-right" style="display: none;">

            </article>
            <!-- 顶级主体右侧区域导航结束 -->

        </section>
        <!-- This footerMiddleTable end -->

        <!-- This footerBottomTable start -->
        <section id="footerBottomTable" class="bottomTable">

            <!-- 左侧 区域开启 -->
            <article class="leftTable flex-bottom-left" style="display: none;">

            </article>
            <!-- 左侧 区域结束 -->

            <!-- 中间 区域开启 -->
            <article class="centerTable flex-bottom-center">
                <div id="footerContent">
                    <div class="item footerInfo">
                        <p>Copyright<font face="Arial">©</font>2017-2017 好房置业 版权所有</p>
                    </div>
                    <div class="item footerSupport" id="footerSupport">
                        <span class="footerMobile">
                            <a class="alive-active" hidefocus="true" href="http://www.alivehouse.com/" target="_blank">手机版</a>
                        </span>
                        <span class="footerSep">|</span>
                        <span id="footerbeian">
                            <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=Q20170614101523">
                                <img src="/static/images/beianIcon.png" width="20" height="20" />
                                 <span class="alive-active">备案信息</span>
                            </a>
                        </span>
                        <span id="footerbeianinfo">
                            <a class="alive-active" href="http://www.miitbeian.gov.cn/" target="_blank" rel="nofollow">
                                Q20170614101523
                            </a>
                        </span>

                        <span class="footerSep">|</span>
                        <span id="footerLogin" class="footerLogin">
                            <a class="alive-active" name="popupLogin" hidefocus="true" href="/" onclick="return false;">登录</a>
                        </span>
                        <span class="bgplayerButton" id="bgplayerButton" style="display:none;"></span>
                    </div>
                </div>
            </article>
            <!-- 中间 区域结束 -->

            <!-- 右侧 区域开启 -->
            <article class="rightTable flex-bottom-left" style="display: none;">

            </article>
            <!-- 右侧 区域结束 -->

        </section>
        <!-- This footerBottomTable end -->

    </article>

</section>
<!-- 底部 主体内容结束 -->


        </section>
        <!-- 底部 区域结束 -->


        <!-- 其他 区域开启 -->
        <section id="web-extra-container" class="web-extra-container">

            <!-- 其他 主体内容开启 -->

            <!-- 其他 主体内容开启 -->
<section id="extra-content-container" class="extra-content-container flex"  style="display: none;">

    <!-- 其他 全屏操作 容器 开始 -->
    <article id="extra-full-container" style="display: none;">

    </article>
    <!-- 其他 全屏操作 容器 结束 -->

    <article class="extra-body" style="display: none;">

        <!-- This extraAbsTable start -->
        <section id="extraAbsTable" class="absTopTable" style="display: none;">

            <div id="extraAbs" class="forms sideForms absForms">
                <div style="position:absolute;"></div><!-- for ie6 -->

            </div>

        </section>
        <!-- This extraAbsTable end -->

        <!-- This extraTopTable start -->
        <section id="extraTopTable" class="topTable" style="display: none;">

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
        <!-- This extraTopTable end -->

        <!-- This extraMiddleTable start -->
        <section id="extraMiddleTable" class="middleTable">

            <!-- 顶级主体 左侧 区域开启 -->
            <article class="leftTable flex-middle-left" style="display: none;">

            </article>
            <!-- 顶级主体 左侧 区域结束 -->

            <!-- 顶级主体 中间 区域导航开启 -->
            <article class="centerTable flex-middle-center"  style="display: none;">

            </article>
            <!-- 顶级主体 中间 区域导航结束 -->

            <!-- 顶级主体 右侧 区域导航开启 -->
            <article class="rightTable flex-middle-right" style="display: none;">

            </article>
            <!-- 顶级主体右侧区域导航结束 -->

        </section>
        <!-- This extraMiddleTable end -->

        <!-- This extraBottomTable start -->
        <section id="extraBottomTable" class="bottomTable">

            <!-- 左侧 区域开启 -->
            <article class="leftTable flex-bottom-left" style="display: none;">

            </article>
            <!-- 左侧 区域结束 -->

            <!-- 中间 区域开启 -->
            <article class="centerTable flex-bottom-center" style="display: none;">

            </article>
            <!-- 中间 区域结束 -->

            <!-- 右侧 区域开启 -->
            <article class="rightTable flex-bottom-left" style="display: none;">

            </article>
            <!-- 右侧 区域结束 -->

        </section>
        <!-- This extraBottomTable end -->

    </article>

</section>
<!-- 其他 主体内容结束 -->


            <!-- 其他 主体内容结束 -->

        </section>
        <!-- 其他 区域结束 -->

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

<script>
    $(function () {
        //导航标识
        var $headerNav = $('#headerNav');
        var selected = $headerNav.attr('lay-select');
        if (selected || selected !== '') {
            $headerNav.find('.item[lat-filter="' + selected + '"]').addClass('itemSelected');
        }
    });
</script>

</body>
</html>