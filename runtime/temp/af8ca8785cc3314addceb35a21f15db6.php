<?php if (!defined('THINK_PATH')) exit(); /*a:7:{s:79:"/usr/share/nginx/haofangzhiye/public/../application/index/view/index/index.html";i:1507608354;s:81:"/usr/share/nginx/haofangzhiye/public/../application/index/view/layouts/index.html";i:1507608353;s:79:"/usr/share/nginx/haofangzhiye/public/../application/index/view/common/meta.html";i:1507608352;s:81:"/usr/share/nginx/haofangzhiye/public/../application/index/view/common/script.html";i:1507608352;s:82:"/usr/share/nginx/haofangzhiye/public/../application/index/view/layouts/header.html";i:1507608353;s:82:"/usr/share/nginx/haofangzhiye/public/../application/index/view/layouts/footer.html";i:1507608353;s:81:"/usr/share/nginx/haofangzhiye/public/../application/index/view/layouts/extra.html";i:1507608353;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
<title><?php echo (isset($title) && ($title !== '')?$title:''); ?></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Cache-Control" content="no-transform">
<meta name="mobile-agent" content="format=html5;url=http://m.alivehouse.com/">
<meta name="author" content="">
<meta name="keywords" content="">
<meta name="description" content="">

<link rel="shortcut icon" href="__CDN__/assets/img/favicon.png" />
<link rel="canonical" href="/index/index/index.html">
<!-- Loading Bootstrap -->
<link href="__CDN__/assets/css/frontend<?php echo \think\Config::get('app_debug')?'':'.min'; ?>.css?v=<?php echo \think\Config::get('site.version'); ?>" rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
  <script src="__CDN__/assets/js/html5shiv.js"></script>
  <script src="__CDN__/assets/js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
    var require = {
        config:  <?php echo json_encode($config); ?>
    };
</script>
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

    <script src="__CDN__/assets/libs/jquery/dist/jquery.min.js"></script>
<script src="__CDN__/assets/libs/layui/build/layui.js"></script>
<script src="__CDN__/assets/js/site.js"></script>

<script src="__CDN__/assets/js/home.js"></script>
<script src="__CDN__/assets/js/require.js" data-main="__CDN__/assets/js/require-frontend<?php echo \think\Config::get('app_debug')?'':'.min'; ?>.js?v=<?php echo $site['version']; ?>"></script>


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
                    <img src="/assets/img/house-logo.png" alt="LOGO" title="好房置业" style="position:absolute;width: 140px;height: 140px;top: -60px;">
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
                        <a hidefocus="true" style="outline:none;" href="/index/index/index.html" target="_self" onclick=""><span class="itemName">首页</span></a>
                    </span>

                    <span class="item" lat-filter="nav-house">
                        <a hidefocus="true" style="outline:none;" href="/index/house/search.html" target="_self" onclick=""><span class="itemName">新房</span></a>
                    </span>

                    <span class="item" lat-filter="nav-hand-house">
                        <a hidefocus="true" style="outline:none;" href="/index/handhouse/search.html" target="_self" onclick=""><span class="itemName">二手房</span></a>
                    </span>

                    <span class="item" lat-filter="nav-retal-house">
                        <a hidefocus="true" style="outline:none;" href="/index/retalhouse/search.html" target="_self" onclick=""><span class="itemName">租房</span></a>
                    </span>

                    <span class="item" lat-filter="nav-news">
                        <a hidefocus="true" style="outline:none;" href="/index/news/index.html" target="_self" onclick=""><span class="itemName">房产资讯</span></a>
                    </span>

                    <span class="item" lat-filter="nav-better">
                        <a hidefocus="true" style="outline:none;" href="/index/better/index.html" target="_self" onclick=""><span class="itemName">家装</span></a>
                    </span>

                    <span class="item" lat-filter="nav-contact">
                        <a hidefocus="true" style="outline:none;" href="/index/contact/index.html" target="_self" onclick=""><span class="itemName">联系我们</span></a>
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
    <link rel="stylesheet" type="text/css" href="__CDN__/assets/css/bootstrap.min.css" media="all">
    <style>
        input {
            padding: 0;
            margin: 0;
        }

        li {
            list-style: none;
        }

        .search {
            position: absolute;

            left: 50%;
            margin-left: -340px;
            background: #767676;
            background: rgba(0, 0, 0, 0.5);
            border-radius: 6px;
            border: 1px solid #706f6e;
            width: 648px;
            padding: 11px 16px;
            z-index: 18;
        }

        .search .topnav {
            position: relative;
            height: 37px;
            margin-bottom: 0;
            z-index: 99;
        }

        .search .topnav li {
            float: left;
            color: #ffffff;
            line-height: 37px;
            border: 1px solid transparent;
            border-bottom: none;
            padding: 0 23px;
            font-size: 18px;
            cursor: pointer;
        }

        .search li:hover {
            color: #efcd4b;
        }

        .search li.current {
            background: #fff;
            border-color: #efcd4b;
            cursor: default;
            color: #000;
        }

        .search .txt {
            border: 1px solid #efcd4b;
            margin-bottom: 12px;
            position: relative;
        }

        .search .txt input {
            border: none;
        }

        .search .btn {
            float: right;
        }

        .search .txt .buildname {
            color: #969696;
            padding-left: 30px;
            line-height: 40px;
            height: 40px;
            width: 524px;
        }

        .search .txt .btn {
            width: 88px;
            text-align: center;
            color: #b11b1c;
            font-size: 20px;
            height: 40px;
            line-height: 40px;
            cursor: pointer;
            background: #efcd4b;
        }

        .search .txt ul {
            display: none;
            position: absolute;
            top: 40px;
            left: -1px;
            width: 557px;
            border: 1px solid #dfdfdf;
            background: #fff;
            z-index: 12;
        }

        .search .txt li {
            line-height: 26px;
            padding: 0 30px;
        }

        .search .txt li:hover {
            background: #eee;
        }

        .clearfix {
            zoom: 1;
            clear: both;
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
    <article id="webBannerTable" class="webBannerTable flex" style="min-height: 300px;">

        <!-- This bannerAbsTable start -->
        <section id="bannerAbsTable" class="absTopTable">

        </section>
        <!-- This bannerAbsTable end -->

        <section id="banner-body" style="display: block;min-height: 300px;">

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

            <hr/>
            <article class="alive-header" style="height: 115px;">
                <div class="search">
                    <!--无新房的样式-->
                    <ul class="topnav clearfix">
                        <li class="nav1 current" id="home1">新房</li>
                        <li class="nav2" id="home2">二手房</li>
                        <li class="nav2" id="home3">租房</li>
                    </ul>

                    <div class="txt search_txt">
                        <input type="text" tp="new" autocomplete="off" placeholder="请输入关键字（楼盘名或地点）？" id="txtSearch"
                               value="<?php echo \think\Request::instance()->get('keyword'); ?>" class="buildname searchInput">
                        <input type="button" value="搜索" id="btnSearch" class="btn ss">
                        <ul class="js-searchlist mai mai1" style="display: none;"></ul>
                    </div>

                </div>
                <!--<div class="search-body">-->
                <!--<div class="layui-form-item" style="padding: 0 35px;">-->
                <!--<input class="layui-input search-input" type="text" name="keyword" id="txtSearch" value="<?php echo \think\Request::instance()->get('keyword'); ?>" style="width:940px;display: inline-block;" placeholder="请输入区域或小区名开始找房" >-->
                <!--<select id="roomSel"  class="layui-btn layui-btn-primary" style="height: 38px;width: 80px">-->
                <!--<option value="0">新房</option>-->
                <!--<option value="1">二手房</option>-->
                <!--</select>-->
                <!--<button id="btnSearch" class="search-submit layui-btn layui-btn-danger" >搜索</button>-->
                <!--</div>-->
                <!--</div>-->
            </article>

            <article class="alive-body">
                <hr/>
                <div id="homeService" class="alive-flex alive-level"
                     style="width:100%;margin-top:16px;position: relative;overflow: hidden;">
                    <div class="item" style="width: 25%;">
                        <div class="alive-level half" style="height:100%;">
                            <div class="alive-center service-title"><a>新房</a></div>
                            <div class="alive-upLevel half">
                                <div class="alive-middleLeft service-extra"><a class="alive-active zixun_new">我要咨询</a>
                                </div>
                                <div class="alive-middleLeft service-extra"><a class="alive-active"
                                                                               href="/index/house/search.html">新房房源</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item" style="width: 25%;">
                        <div class="alive-level half" style="height:100%;">
                            <div class="alive-center service-title"><a>二手房</a></div>
                            <div class="alive-upLevel half">
                                <div class="alive-middleLeft service-extra"><a class="alive-active zixun_hand">我要咨询</a>
                                </div>
                                <div class="alive-middleLeft service-extra"><a class="alive-active zixun_send">我要卖房</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item" style="width: 25%;">
                        <div class="alive-level half" style="height:100%;">
                            <div class="alive-center service-title"><a>租房</a></div>
                            <div class="alive-upLevel half">
                                <div class="alive-middleLeft service-extra"><a class="alive-active zixun_retal">我要咨询</a>
                                </div>
                                <div class="alive-middleLeft service-extra"><a class="alive-active"
                                                                               href="/index/retalhouse/search.html">我要租房</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item" style="width: 25%;">
                        <div class="alive-level half" style="height:100%;">
                            <div class="alive-center service-title"><a>客服</a></div>
                            <div class="alive-upLevel half">
                                <div class="alive-middleLeft service-extra"><a class="alive-active zixun">我要咨询</a></div>
                                <div class="alive-middleLeft service-extra"><a class="alive-active"
                                                                               href="/index/contact/index.html">金牌顾问</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </article>

            <article class="alive-footer" style="height: 50px;"></article>

        </section>

        <section class="alive-layout">

            <article class="alive-header" style="height: 100px;">
                <div class="alive-title" style="width: 100%;">
                    <div class="title">最新房源</div>
                    <div class="extra"><p>100%真实房源 无虚假</p></div>
                </div>
            </article>

            <article class="alive-body">
                <div class="alive-flex alive-upLevel" style="width:100%;position: relative;overflow: hidden;">
                    <div class="alive-outer">
                        <div class="alive-flex" style="position: relative;">
                            <table id="table2" class="table table-striped table-hover" width="100%">
                            </table>
                        </div>
                    </div>
                </div>
            </article>

            <article class="alive-footer" style="height: 50px;"></article>

        </section>

        <section class="alive-layout">

            <article class="alive-header"
                     style="display:block;overflow: hidden;position: absolute;left: 0;right: 0;z-index: -1;">
                <img data-url="/assets/img/theme/home/theme-orange-bg.jpg" style="height: 500px;width: 100%;">
            </article>

            <article class="alive-body" style="background-color: rgba(0,0,0,0)">
                <div class="alive-flex alive-centerLevel"
                     style="width:100%;height:500px;position: relative;overflow: hidden;">
                    <div class="alive-layout">

                        <div class="alive-header"></div>

                        <div class="alive-body">
                            <div id="homeSecondHandHouseHot" class="alive-flex" style="width: 100%;height: 350px;">
                                <?php if(is_array($HotHouse) || $HotHouse instanceof \think\Collection || $HotHouse instanceof \think\Paginator): $i = 0; $__LIST__ = $HotHouse;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$model): $mod = ($i % 2 );++$i;?>
                                <div class="item">
                                    <div class="itemIcon">
                                        <a hidefocus="true" href="../../../index/house/detail/id/<?php echo $model['Id']; ?>"
                                           target="_blank">
                                            <img alt="<?php echo $model['HouseName']; ?>" data-url="<?php echo explode(',',$model['Images'])[0]; ?>"
                                                 title="">
                                            <div class="bottom-desc">
                                                <?php echo empty($model['BiaoTi'])?$model['HouseName']:$model['BiaoTi']; ?>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="itemTitle" style="height: 50px;">
                                        <span style="float: left;"><?php echo empty($model['BiaoTi'])?$model['HouseName']:$model['BiaoTi']; ?></span>
                                        <span style="float: right"><?php echo $model['HuXing_Shi']; ?>室<?php echo $model['HuXing_Ting']; ?>厅<?php echo $model['HuXing_Wei']; ?>卫| <?php echo $model['MianJi']; ?>m² | <?php echo __('ZhuangXiuLeiXing '.$model['ZhuangXiuLeiXing']); ?></span>
                                    </div>
                                </div>
                                <?php endforeach; endif; else: echo "" ;endif; ?>
                            </div>
                        </div>

                        <div class="alive-footer"></div>

                    </div>
                </div>
            </article>

            <article class="alive-footer" style="height: 50px;"></article>

        </section>


        <section class="alive-layout">

            <article class="alive-header" style="height: 100px;">
                <div class="alive-title" style="width: 100%;">
                    <div class="title">二手好房</div>
                    <div class="extra"><p>100%真实房源 无虚假</p></div>
                </div>
            </article>

            <article class="alive-body">
                <div class="alive-flex alive-upLevel"
                     style="width:100%;min-height:350px;position: relative;overflow: hidden;">
                    <div class="alive-layout">

                        <div class="alive-header"></div>

                        <div class="alive-body">
                            <div id="homeSecondHandHouse" class="alive-flex outer" style="width: 100%;">
                                <table id="table1" class="table table-striped table-hover">

                                </table>
                            </div>
                        </div>

                        <div class="alive-footer"></div>

                    </div>
                </div>
            </article>

            <article class="alive-footer"></article>

        </section>
        <section class="alive-layout">

            <article class="alive-header"
                     style="background-color:rgba(33,33,33,0.3);overflow: hidden;position: absolute;left: 0;right: 0;z-index: -1;">
                <img data-url="/assets/img/theme/home/theme-service-bg.jpg" style="height: 240px;width: 100%;">
            </article>

            <article class="alive-body" style="background-color: rgba(0,0,0,0)">
                <div class="alive-flex alive-centerLevel"
                     style="width:100%;height:240px;position: relative;overflow: hidden;">
                    <div class="alive-layout">

                        <div class="alive-header"></div>

                        <div class="alive-body">
                            <div id="moreHouse" class="alive-flex" style="width: 100%;height: 240px;">
                                <p style="text-align:left;line-height:5em;">
                                    <strong>
                                            <span style="font-family:微软雅黑;">
                                                <span style="font-family:微软雅黑;font-size:39px;color:#FFFFFF;">
                                                    提供最新资讯
                                                </span>
                                            </span>
                                    </strong>
                                    <span style="font-family:微软雅黑;">
                                            <span style="font-family:微软雅黑;font-size:39px;">
                                            </span>
                                            <br>
                                        </span>
                                </p>
                                <p style="text-align:left;line-height:5em;">
                                        <span style="font-family:微软雅黑;font-size:22px;color:#FFFFFF;">
                                            尽在好房置业
                                        </span>
                                </p>
                            </div>
                        </div>

                        <div class="alive-footer"></div>

                    </div>
                </div>
            </article>

            <article class="alive-footer" style="height: 50px;"></article>

        </section>

        <section class="alive-layout newsLeftList">

            <article class="alive-header" style="height: 100px;">
                <div class="alive-title" style="width: 100%;">
                    <div class="title">最新资讯</div>
                    <div class="extra"><p style="cursor:pointer;">更多资讯</p></div>
                </div>
            </article>

            <article class="alive-body">
                <div class="alive-flex alive-Level"
                     style="width:100%;height:500px;position: relative;overflow: hidden;">
                    <div style="width: 100%">
                        <table class="layui-table" lay-skin="nob" lay-bg="none" style="width: 100%">
                            <thead>
                            </thead>
                            <tbody>
                            <?php if(is_array($news) || $news instanceof \think\Collection || $news instanceof \think\Paginator): $i = 0; $__LIST__ = $news;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$model): $mod = ($i % 2 );++$i;?>
                            <tr class="news-item" data-key="<?php echo $model['Id']; ?>">
                                <td width="20">
                                    <i class="fa fa-gg"></i>
                                </td>
                                <td width="5" style="padding: 0;">

                                </td>
                                <td>
                                    <div lay-filter="tooltitle" lay-text="" class="layui-summary"
                                    >
                                        <?php echo $model['title']; ?>
                                    </div>
                                </td>
                                <td style="width: 150px;"><?php echo date("Y-m-d H:i",$model['createtime']); ?></td>
                            </tr>
                            <?php endforeach; endif; else: echo "" ;endif; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </article>

            <article class="alive-footer"></article>

        </section>
        <section class="alive-layout questionRightList">

            <article class="alive-header" style="height: 100px;">
                <div class="alive-title" style="width: 100%;">
                    <div class="title">常见问题</div>
                    <div class="extra"><p style="cursor:pointer;">更多问题</p></div>
                </div>
            </article>

            <article class="alive-body">
                <div class="alive-flex alive-Level"
                     style="width:100%;height:500px;position: relative;overflow: hidden;">
                    <div style="width: 100%">
                        <table class="layui-table" lay-skin="nob" lay-bg="none" style="width: 100%">
                            <thead>
                            </thead>
                            <tbody>
                            <?php if(is_array($questions) || $questions instanceof \think\Collection || $questions instanceof \think\Paginator): $i = 0; $__LIST__ = $questions;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$model): $mod = ($i % 2 );++$i;?>
                            <tr class="news-item" data-key="<?php echo $model['Id']; ?>">
                                <td width="20">
                                    <i class="fa fa-gg"></i>
                                </td>
                                <td width="5" style="padding: 0;">

                                </td>
                                <td>
                                    <div lay-filter="tooltitle" lay-text="" class="layui-summary"
                                    >
                                        <?php echo $model['title']; ?>
                                    </div>
                                </td>
                                <td style="width: 150px;"><?php echo date("Y-m-d H:i",$model['createtime']); ?></td>
                            </tr>
                            <?php endforeach; endif; else: echo "" ;endif; ?>
                            </tbody>
                        </table>
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
<script type="application/javascript">
    var searchtype="home1";
    $(function () {
        var data = JSON.parse('<?php echo $slider; ?>');
        var options = {
            "banner": "#webBanner",
//        "width": 1200,
//        "height": 487,
            "playTime": 6000,
            "animateTime": 628,
            "interval": 6000,
            "btnType": 1,
            "targetType": "2",
            "wideScreen": true,
            "autoPlay": true
        };
        Site.initBanner(data, options);
        $(".topnav li").click(function () {

            $(this).siblings().removeClass("current");
            $(this).addClass("current");
            searchtype = $(this).attr("id");
        })
        $("#btnSearch").click(function () {
            var keyword = $("#txtSearch").val();
            if (searchtype == "home1") {
                window.location = "../../../index/house/search?keyword=" + keyword;
            }
            else if (searchtype == "home2") {
                window.location = "../../../index/handhouse/search?keyword=" + keyword;
            }
            else {
                window.location = "../../../index/retalhouse/search?keyword=" + keyword;
            }
        });
        /* var index;
         $(document).on('mouseover','.news-item[data-key]',function () {
         var that = $(this);
         if (index == that.attr('data-key')){
         return;
         }else {
         index = that.attr('data-key');
         }
         var img = $('img','.news-item[data-key]');
         var href= img.attr('src'),alt = img.attr('alt'),src = img.attr('src'),
         desc = $('[lay-text]','.news-item[data-key]').attr('lay-text');
         var html = '<div><a hidefocus="true" href="'+href+'" target="_blank"> ' +
         '<img alt="'+alt+'" src="'+src+'" title="" style="width: 300px; height: inherit;">' +
         '</a><p style="width: 300px; line-height: 20px;font-size: 14px;padding: 0 10px;">'+desc+'</p></a></div>';
         $('.news-show').html(html);
         });*/
    });

</script>
<script id="itemtpl" type="text/html">

    <div class="col-sm-4 col-md-3" style="min-width: 297px;">
        <% var imagearr =item.Images.split(','); %>
        <% var image =(imagearr&&imagearr.length>0)? imagearr[0]:"/assets/img/house_tmp.jpg"; %>
        <div class="thumbnail ">

            <img src="<%=image%>" class="itemDiv" data-id="<%=item.Id%>" alt="<%=item.BiaoTi%>">
            <div class="caption" style="width: 100%;">
                <h4><%=item.HouseName%></h4>
                <p class="text-muted"><span>面积:<%=item.JianZhuMianJi%>m²</span> <span class="floatRight">价格:<%=item.FangJia%>万元</span>
                </p>
                <p class="text-muted">地址:<%=item.Adress_city%></p>
                <p>
                    <!--详情的事件需要在JS中手动绑定-->
                    <a href="#" class="btn btn-primary btn-success btn-detail" data-id="<%=item.Id%>"><i
                            class="fa fa-camera"></i> 详情</a>

                    <!--如果需要响应编辑或删除事件，可以给元素添加 btn-edit或btn-del的类和data-id这个属性值-->
                    <a href="#" class="btn btn-danger btn-intention floatRight" data-id="<%=item.Id%>"><i
                            class="fa fa-pencil"></i> 预约看房</a>

                </p>
            </div>
        </div>
    </div>
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
                        <a hidefocus="true" class="item-two zixun_new" >
                            <div class="floatImgWrap">
                                <img class="float_in_img " src="/assets/img/shadow-buy-house.png">
                            </div>
                        </a>
                        <a class="item-two zixun_new">买新房</a>
                    </div>

                    <div class="item">
                        <a hidefocus="true" class="item-two zixun_hand">
                            <div class="floatImgWrap">
                                <img class="float_in_img " src="/assets/img/shadow-sale-house.png">
                            </div>
                        </a>
                        <a class="item-two zixun_hand">买二手房</a>
                    </div>

                    <div class="item">
                        <a hidefocus="true" class="item-two zixun_send">
                            <div class="floatImgWrap">
                                <img class="float_in_img " src="/assets/img/shadow-rent-house.png">
                            </div>
                        </a>
                        <a class="item-two zixun_send">我要卖房</a>
                    </div>

                    <div class="item">
                        <a hidefocus="true" class="item-two"  href="/index/contact/index.html">
                            <div class="floatImgWrap">
                                <img class="float_in_img " src="/assets/img/shadow-manage-money.png">
                            </div>
                        </a>
                        <a class="item-two"  href="/index/contact/index.html">金牌客服</a>
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
                                <img src="/assets/img/beianIcon.png" width="20" height="20" />
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


</body>
</html>