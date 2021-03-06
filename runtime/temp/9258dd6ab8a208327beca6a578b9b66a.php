<?php if (!defined('THINK_PATH')) exit(); /*a:7:{s:80:"/usr/share/nginx/haofangzhiye/public/../application/index/view/better/index.html";i:1507608352;s:81:"/usr/share/nginx/haofangzhiye/public/../application/index/view/layouts/index.html";i:1507608353;s:79:"/usr/share/nginx/haofangzhiye/public/../application/index/view/common/meta.html";i:1507608352;s:81:"/usr/share/nginx/haofangzhiye/public/../application/index/view/common/script.html";i:1507608352;s:82:"/usr/share/nginx/haofangzhiye/public/../application/index/view/layouts/header.html";i:1507608353;s:82:"/usr/share/nginx/haofangzhiye/public/../application/index/view/layouts/footer.html";i:1507608353;s:81:"/usr/share/nginx/haofangzhiye/public/../application/index/view/layouts/extra.html";i:1507608353;}*/ ?>
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

            <article class="alive-header" style="height: 50px;"></article>

            <article class="alive-body">
                <div id="betterNav" class="alive-flex alive-Level" style="width: 100%;height:400px;overflow: hidden;">
                    <div class="item alive-centerLevel" style="width:290px;">
                        <div class="itemIcon alive-center">
                            <img imgpath="/static/images/house.png"
                                 alt="" title=""
                                 src="/assets/img/house.png"/>
                        </div>
                        <div class="itemTitle">
                            <p style="text-align:center;line-height:1.75em;">
                                <span style="font-family:微软雅黑;">
                                    <span style="font-family:微软雅黑;font-size:20px;"><br></span>
                                </span>
                            </p>
                            <p style="text-align:center;">
                                <span style="font-family:微软雅黑;">
                                    <span style="font-family:微软雅黑;font-size:20px;">房子多</span><br>
                                </span>
                            </p>
                            <p style="text-align:center;">
                                <span style="font-family:微软雅黑;font-size:14px;color:#999999;">全国范围内，东西南北各个地方房子出租<br></span>
                            </p>
                            <p style="text-align:center;">
                                <span style="font-family:微软雅黑;font-size:14px;color:#999999;">20万房东共同见证服务</span>
                            </p>
                        </div>
                    </div>
                    <div class="item alive-centerLevel" style="width:290px;">
                        <div class="itemIcon alive-center">
                            <img imgpath="/static/images/pay.png"
                                 alt="" title=""
                                 src="/assets/img/pay.png"/>
                        </div>
                        <div class="itemTitle">
                            <p style="text-align:center;line-height:1.75em;">
                                <span style="font-family:微软雅黑;">
                                    <span style="font-size:20px;"><br></span>
                                </span>
                            </p>
                            <p style="text-align:center;">
                                <span style="font-family:微软雅黑;">
                                    <span style="font-size:20px;">能月付</span>
                                </span>
                            </p>
                            <p style="text-align:center;">
                                <span style="font-family:微软雅黑;font-size:14px;color:#999999;">房租月付无压力，点点链家就能帮您交租</span>
                            </p>
                            <p style="text-align:center;">
                                <span style="font-family:微软雅黑;font-size:14px;color:#999999;">housing租房，帮你住好一点<br></span>
                            </p>
                        </div>
                    </div>
                    <div class="item alive-centerLevel" style="width:290px;">
                        <div class="itemIcon alive-center">
                            <img imgpath="/static/images/ensure.png"
                                 alt="" title=""
                                 src="/assets/img/ensure.png"/>
                        </div>
                        <div class="itemTitle">
                            <p style="text-align:center;line-height:1.75em;">
                                <span style="font-family:微软雅黑;">
                                    <span style="font-size:20px;"><br></span>
                                </span>
                            </p>
                            <p style="text-align:center;">
                                <span style="font-family:微软雅黑;">
                                    <span style="font-size:20px;">全保真</span>
                                </span>
                            </p>
                            <p style="text-align:center;">
                                <span style="font-family:微软雅黑;font-size:14px;color:#999999;">真业主，真图片，真价格，真成交</span>
                            </p>
                            <p style="text-align:center;">
                                <span style="font-family:微软雅黑;font-size:14px;color:#999999;">全真是信息，找房0难度</span>
                            </p>
                        </div>
                    </div>
                    <div class="item alive-centerLevel" style="width:290px;">
                        <div class="itemIcon alive-center">
                            <img imgpath="/static/images/save.png"
                                 alt="" title=""
                                 src="/assets/img/save.png"/>
                        </div>
                        <div class="itemTitle">
                            <p style="text-align:center;line-height:1.75em;">
                                <span style="font-family:微软雅黑;">
                                    <span style="font-size:20px;"><br></span>
                                </span>
                            </p>
                            <p style="text-align:center;">
                                <span style="font-family:微软雅黑;">
                                    <span style="font-size:20px;">最省钱</span>
                                </span>
                            </p>
                            <p style="text-align:center;">
                                <span style="font-family:微软雅黑;font-size:14px;color:#999999;">租客不掏一分中介费，就有一对一专业服务<br></span>
                            </p>
                            <p style="text-align:center;">
                                <span style="font-family:微软雅黑;font-size:14px;color:#999999;">少花钱，才是硬道理<br></span>
                            </p>
                        </div>
                    </div>
                </div>
            </article>

            <article class="alive-footer" style="height: 50px;"></article>

        </section>

        <section class="alive-layout">

            <article class="alive-header" style="overflow: hidden;position: absolute;left: 0;right: 0;z-index: -1;">
                <img data-url="/assets/img/theme/better/theme-service-contact-bg.jpg" style="height: 300px;width: 100%;">
            </article>

            <article class="alive-body">
                <div class="alive-flex alive-upLevel" style="width:100%;height:300px;position: relative;overflow: hidden;">
                    <div class="alive-outer alive-flex alive-center" style="height:100%;">
                        <div class="">
                            <p style="text-align:center;">
                                <span style="font-family:微软雅黑;font-size:34px;color:#FFFFFF;">好房置业已为</span><span
                                    style="font-family:微软雅黑;font-size:50px;color:#FFFFFF;"> 6666 </span><span
                                    style="font-family:微软雅黑;font-size:34px;color:#FFFFFF;">家 装上满意的家</span><br>
                            </p>
                            <p style="text-align:center;"><br></p>
                            <p style="text-align:center;line-height:4em;"><span
                                    style="font-family:微软雅黑;font-size:26px;color:#FFFFFF;"><br></span>
                            </p>
                            <p style="text-align:center;line-height:1.75em;"><span
                                    style="font-family:微软雅黑;font-size:26px;color:#FFFFFF;"><br></span>
                            </p>
                            <p style="text-align:center;"><span
                                    style="font-family:微软雅黑;font-size:18px;color:#FFFFFF;">电话委托：400-000-0000</span>
                            </p>
                        </div>
                    </div>
                </div>
            </article>

            <article class="alive-footer" style="height: 100px;"></article>

        </section>

        <section class="alive-layout">

            <article class="alive-header" style="height: 100px;">
                <div class="alive-title" style="width: 100%;">
                    <div class="title">家装推荐</div>
                    <div class="extra"><p style="cursor:pointer;"></p></div>
                </div>
            </article>

            <article class="alive-body">
                <div id="jiazhuangDiv" class="alive-flex outer">
                    <table id="table1" class="table table-striped table-hover" width="100%">

                    </table>
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
<script id="itemtpl" type="text/html">

    <div class="col-sm-4 col-md-3 newsDiv" data-id="<%=item.Id%>">
        <% var image =item.titleimage? item.titleimage:"/assets/img/house_tmp.jpg"; %>
        <div class="thumbnail example ">
            <img src="<%=image%>" class="img-responsive" alt="<%=item.title%>">
            <div class="caption">
                <a href="#" class="btn-detail" data-id="<%=item.Id%>">
                    <h4><%=item.title%></h4>
                </a>
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