<?php if (!defined('THINK_PATH')) exit(); /*a:7:{s:80:"/usr/share/nginx/haofangzhiye/public/../application/index/view/house/search.html";i:1507608353;s:81:"/usr/share/nginx/haofangzhiye/public/../application/index/view/layouts/index.html";i:1507608353;s:79:"/usr/share/nginx/haofangzhiye/public/../application/index/view/common/meta.html";i:1507608352;s:81:"/usr/share/nginx/haofangzhiye/public/../application/index/view/common/script.html";i:1507608352;s:82:"/usr/share/nginx/haofangzhiye/public/../application/index/view/layouts/header.html";i:1507608353;s:82:"/usr/share/nginx/haofangzhiye/public/../application/index/view/layouts/footer.html";i:1507608353;s:81:"/usr/share/nginx/haofangzhiye/public/../application/index/view/layouts/extra.html";i:1507608353;}*/ ?>
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
    <script type="text/javascript">
        var selCity = "";
        $(function () {
            $(".ciytDiv a").click(function () {
                $(this).addClass("action").siblings().removeClass("action");
                if ($(this).attr("ctm-data-idx") == 1)
                    selCity = "";

                else {
                    var str = $(this).html();
                    selCity = str.substr(0, str.length - 1);
                }
                $("#selCity").val(selCity);
            });
        });
    </script>
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
    <article id="webBannerTable" class="webBannerTable flex">

        <!-- This bannerAbsTable start -->
        <section id="bannerAbsTable" class="absTopTable">

        </section>
        <!-- This bannerAbsTable end -->

        <section id="banner-body" class="flex" style="display: block;">

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

            <article class="alive-header">
                <form class="layui-form search-box" action="" method="get" id="searchForm">
                    <div class="search-container">
                        <div class="search-body">
                            <div class="layui-form-item" style="padding: 0 35px;">
                                <input class="layui-input search-input" type="text" name="keyword"
                                       value="<?php echo \think\Request::instance()->get('keyword'); ?>" style="width:960px;display: inline-block;"
                                       placeholder="请输入区域或小区名开始找房">
                                <button type="submit" class="search-submit layui-btn layui-btn-danger"
                                        lay-filter="submit">搜索
                                </button>
                                <label class="layui-btn layui-btn-primary" lay-filter="reset">重置</label>
                            </div>
                        </div>
                        <div class="layout-colla-content layout-show">
                            <div class="layui-form-item">
                                <div class="hidden">
                                <input type="text" id="selCity" name="selCity" value="" >
                                </div>
                                <label class="layui-form-label">县市：</label>

                                <div class="layui-input-block">
                                    <div class="ciytDiv">
                                        <a class="action" href="#" ctm-data-idx="1">不限</a>
                                        <a href="#" ctm-data-idx="2">海口市</a>

                                        <a href="#" ctm-data-idx="3">澄迈县</a>

                                        <a href="#" ctm-data-idx="4">琼海市</a>

                                        <a href="#" ctm-data-idx="5">文昌市</a>

                                        <a href="#" ctm-data-idx="6">临高县</a>

                                        <a href="#" ctm-data-idx="7">儋州市</a>

                                        <a href="#" ctm-data-idx="8">三亚市</a>

                                        <a href="#" ctm-data-idx="9">万宁市</a>

                                        <a href="#" ctm-data-idx="10">定安县</a>

                                        <a href="#" ctm-data-idx="11">五指山市</a>

                                        <a href="#" ctm-data-idx="12">屯昌县</a>

                                        <a href="#" ctm-data-idx="13">东方市</a>

                                        <a href="#" ctm-data-idx="14">陵水县</a>

                                        <a href="#" ctm-data-idx="15">乐东县</a>

                                        <a href="#" ctm-data-idx="16">白沙县</a>

                                        <a href="#" ctm-data-idx="17">昌江县</a>

                                        <a href="#" ctm-data-idx="18">保亭县</a>

                                        <a href="#" ctm-data-idx="19">琼中县</a>


                                    </div>

                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">房屋类型：</label>
                                <div class="layui-input-block">
                                    <?php $request = request()->request(); ?>
                                    <input type="radio" name="noHouseType" value="1" title="不限" lay-filter="the-one"
                                           lay-group="houseType" lay-default <?php if(\think\Request::instance()->get('noHouseType') == '1'): ?>checked<?php endif; ?> >
                                    <?php if(is_array($model->getZhuzhaileixingList()) || $model->getZhuzhaileixingList() instanceof \think\Collection || $model->getZhuzhaileixingList() instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getZhuzhaileixingList();if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>

                                    <input type="checkbox" name="houseType[]" value="<?php echo $key; ?>" lay-filter="the-other"
                                           lay-group="houseType" lay-skin="primary" title="<?php echo $item; ?>" <?php if(isset($request['houseType'])): if(in_array(($key), is_array($request['houseType'])?$request['houseType']:explode(',',$request['houseType']))): ?>checked<?php endif; endif; ?> >
                                    <?php endforeach; endif; else: echo "" ;endif; ?>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <div class="layui-inline">
                                    <label class="layui-form-label">房源房型：</label>
                                    <div class="layui-input-inline" style="width: 130px;">
                                        <select name="room" lay-search>
                                            <option value="">选择居室</option>
                                            <option value="">不限</option>
                                            <?php if(is_array($model->getRoomList()) || $model->getRoomList() instanceof \think\Collection || $model->getRoomList() instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getRoomList();if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
                                            <option value="<?php echo $key; ?>" {if condition="$Think.get.room eq $key" }selected{
                                            /if} ><?php echo $item; ?></option>
                                            <?php endforeach; endif; else: echo "" ;endif; ?>
                                        </select>
                                    </div>
                                    <div class="layui-input-inline" style="width: 130px;">
                                        <select name="hall" lay-search>
                                            <option value="">选择大厅</option>
                                            <option value="">不限</option>
                                            <?php if(is_array($model->getParlourList()) || $model->getParlourList() instanceof \think\Collection || $model->getParlourList() instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getParlourList();if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
                                            <option value="<?php echo $key; ?>" {if condition="$Think.get.hall eq $key" }selected{
                                            /if} ><?php echo $item; ?></option>
                                            <?php endforeach; endif; else: echo "" ;endif; ?>
                                        </select>
                                    </div>

                                    <div class="layui-input-inline" style="width: 130px;">
                                        <select name="toilet" lay-search>
                                            <option value="">选择独卫</option>
                                            <option value="">不限</option>
                                            <?php if(is_array($model->getToiletList()) || $model->getToiletList() instanceof \think\Collection || $model->getToiletList() instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getToiletList();if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
                                            <option value="<?php echo $key; ?>" {if condition="$Think.get.toilet eq $key" }selected{
                                            /if} ><?php echo $item; ?></option>
                                            <?php endforeach; endif; else: echo "" ;endif; ?>
                                        </select>
                                    </div>

                                    <div class="layui-input-inline" style="width: 130px;">
                                        <select name="face" lay-search>
                                            <option value="">选择朝向</option>
                                            <option value="">不限</option>
                                            <?php if(is_array($model->getChaoxiangList()) || $model->getChaoxiangList() instanceof \think\Collection || $model->getChaoxiangList() instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getChaoxiangList();if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
                                            <option value="<?php echo $key; ?>" {if condition="$Think.get.face eq $key" }selected{
                                            /if} ><?php echo $item; ?></option>
                                            <?php endforeach; endif; else: echo "" ;endif; ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">产权：</label>
                                <div class="layui-input-block">
                                    <input type="radio" name="noHouseLabel" value="1" title="不限" lay-filter="the-one"
                                           lay-group="houseLabel" lay-default <?php if(\think\Request::instance()->get('noHouseLabel') == '1'): ?>checked<?php endif; ?> >
                                    <?php if(is_array($model->getChanquannianxianList()) || $model->getChanquannianxianList() instanceof \think\Collection || $model->getChanquannianxianList() instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getChanquannianxianList();if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
                                    <input type="checkbox" name="houseLabel[]" value="<?php echo $key; ?>" lay-filter="the-other"
                                           lay-group="houseLabel" lay-skin="primary" title="<?php echo $item; ?>" <?php if(isset($request['houseLabel'])): if(in_array(($key), is_array($request['houseLabel'])?$request['houseLabel']:explode(',',$request['houseLabel']))): ?>checked<?php endif; endif; ?> >
                                    <?php endforeach; endif; else: echo "" ;endif; ?>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">装修状况：</label>
                                <div class="layui-input-block">
                                    <input type="radio" name="noFitment" value="1" title="不限" lay-filter="the-one"
                                           lay-group="fitment" lay-default <?php if(\think\Request::instance()->get('noFitment') == '1'): ?>checked<?php endif; ?> >
                                    <?php if(is_array($model->getZhuangxiuleixingList()) || $model->getZhuangxiuleixingList() instanceof \think\Collection || $model->getZhuangxiuleixingList() instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getZhuangxiuleixingList();if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
                                    <input type="checkbox" name="fitment[]" value="<?php echo $key; ?>" lay-filter="the-other"
                                           lay-group="fitment" lay-skin="primary" title="<?php echo $item; ?>" <?php if(isset($request['fitment'])): if(in_array(($key), is_array($request['fitment'])?$request['fitment']:explode(',',$request['fitment']))): ?>checked<?php endif; endif; ?>>
                                    <?php endforeach; endif; else: echo "" ;endif; ?>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <div class="layui-inline">
                                    <label class="layui-form-label">价格大小：</label>

                                    <div class="layui-input-inline" style="width: 130px;">
                                        <select name="price" lay-search>
                                            <option value="">总价范围</option>
                                            <option value="">不限</option>
                                            <?php if(is_array($model->getPriceList()) || $model->getPriceList() instanceof \think\Collection || $model->getPriceList() instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getPriceList();if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
                                            <option value="<?php echo $key; ?>" {if condition="$Think.get.price eq $key" }selected{
                                            /if} ><?php echo $item; ?></option>
                                            <?php endforeach; endif; else: echo "" ;endif; ?>
                                        </select>
                                    </div>
                                    <div class="layui-input-inline" style="width: 130px;">
                                        <select name="area" lay-search>
                                            <option value="">面积范围</option>
                                            <option value="">不限</option>
                                            <?php if(is_array($model->getMianJiList()) || $model->getMianJiList() instanceof \think\Collection || $model->getMianJiList() instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getMianJiList();if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
                                            <option value="<?php echo $key; ?>" {if condition="$Think.get.area eq $key" }selected{
                                            /if} ><?php echo $item; ?></option>
                                            <?php endforeach; endif; else: echo "" ;endif; ?>
                                        </select>
                                    </div>
                                    <div class="layui-input-inline" style="width: 130px;">
                                        <select name="create" lay-search>
                                            <option value="">发布时间</option>
                                            <option value="">不限</option>
                                            <?php if(is_array($model->getCreateTimeList()) || $model->getCreateTimeList() instanceof \think\Collection || $model->getCreateTimeList() instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getCreateTimeList();if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
                                            <option value="<?php echo $key; ?>" {if condition="$Think.get.create eq $key" }selected{
                                            /if} ><?php echo $item; ?></option>
                                            <?php endforeach; endif; else: echo "" ;endif; ?>
                                        </select>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </article>

            <article class="alive-body">
                <div class="alive-flex alive-Level" style="width: 100%;min-height:300px;overflow: hidden;">
                    <div class="alive-layout">

                        <div class="alive-header"></div>

                        <div class="alive-body alive-upLevel">

                            <?php if(is_array($houseList) || $houseList instanceof \think\Collection || $houseList instanceof \think\Paginator): $i = 0; $__LIST__ = $houseList;if( count($__LIST__)==0 ) : echo "<p
                                style='display:inline-block;font-size: 16px;width:100%;color:#ff5722;text-align: center;'>
                            没有符合你要的房源</p>" ;else: foreach($__LIST__ as $key=>$model): $mod = ($i % 2 );++$i;?>
                            <div class="alive-layout alive-upLevel">

                                <div class="alive-header" style="height: 25px;"></div>

                                <div class="alive-body alive-upLevel">
                                    <div class="alive-level"
                                         style="width:100%;min-height:200px;position: relative;overflow: hidden;">

                                        <div style="width: 240px;">
                                            <a href="#" class="houseTitle_a" data-id="<?php echo $model['Id']; ?>"><img class="imgBox"
                                                                                                        alt="" title=""
                                                                                                        src="<?php echo explode(',',$model['Images'])[0]; ?>"
                                                                                                        style="border-radius: 2px;"></a>
                                        </div>
                                        <div style="flex: 1;">
                                            <p style="line-height:3em;"><a href="#" class="houseTitle_a"
                                                                           data-id="<?php echo $model['Id']; ?>"> <strong><span
                                                    style="font-family:微软雅黑;color:#FE8300;font-size:20px;"><?php echo empty($model['BiaoTi'])?$model['HouseName']:$model['BiaoTi']; ?></span></strong></a>
                                            </p>
                                            <p style="line-height:3em;"><span
                                                    style="font-family:微软雅黑;color:#333333;font-size:17px;"><?php echo $model->getZhuangxiuleixingTextAttr($model['ZhuangXiuLeiXing'],null); ?> &nbsp; <?php echo $model['HuXing_Shi']; ?>室<?php echo $model['HuXing_Ting']; ?>厅 &nbsp; <?php echo $model['JianZhuNianDai']; ?>年建造</span>
                                            </p>
                                            <p style="line-height:3em;"><span
                                                    style="font-family:微软雅黑;font-size:18px;color:#333333;"><span
                                                    style="font-size:14px;color:#666666;"><?php echo $model['Adress_city']; ?></span></span>
                                            </p>
                                            <p style="line-height:3em;"><span
                                                    style="font-family:微软雅黑;font-size:18px;color:#333333;"><span
                                                    style="font-size:14px;color:#666666;"><br></span></span></p>
                                            <p style="clear:both;"><br></p>
                                            <p style="clear:both;">
                                                <a href="#" class="btn btn-danger btn-intention"
                                                   data-id="<?php echo $model['Id']; ?>"><i class="fa fa-pencil"></i> 预约看房</a>
                                            </p>
                                        </div>
                                        <div style="width: 240px;">
                                            <p style="text-align:center;"><span
                                                    style="font-family:微软雅黑;font-size:22px;color:#333333;"><br></span>
                                            </p>
                                            <p style="text-align:center;"><span
                                                    style="font-family:微软雅黑;font-size:22px;color:#333333;"><br></span>
                                            </p>
                                            <p style="text-align:center;"><span
                                                    style="font-family:微软雅黑;font-size:18px;color:#333333;"><?php echo $model['MianJi']; ?>平米</span>
                                            </p>
                                        </div>
                                        <div style="width: 200px;">
                                            <p style="line-height:2em;text-align:center;"><strong><span
                                                    style="font-family:微软雅黑;color:#FE8300;font-size:26px;"><br></span></strong>
                                            </p>
                                            <p style="line-height:2em;text-align:left;"><strong><span
                                                    style="font-family:微软雅黑;color:#FE8300;font-size:26px;"><br></span></strong>
                                            </p>
                                            <p style="line-height:2em;text-align:left;"><strong><span
                                                    style="font-family:微软雅黑;color:#FE8300;font-size:26px;"><?php echo $model['FangJia']/10000; ?>万</span></strong>
                                            </p>
                                            <p style="line-height:2em;text-align:left;"><span
                                                    style="font-family:微软雅黑;font-size:18px;color:#333333;"><span
                                                    style="font-size:13px;color:#666666;"><?php echo $model['DanJia']; ?>元/平米</span></span>
                                            </p>
                                            <p><br></p>
                                        </div>

                                    </div>
                                </div>

                                <div class="alive-footer" style="height: 25px;"></div>

                            </div>
                            <hr>
                            <?php endforeach; endif; else: echo "<p
                                style='display:inline-block;font-size: 16px;width:100%;color:#ff5722;text-align: center;'>
                            没有符合你要的房源</p>" ;endif; ?>

                        </div>

                        <div class="alive-footer"></div>

                    </div>
                </div>
            </article>

            <article class="alive-footer" style="height: 25px;"></article>

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
    $(function () {
        Home.init();
        //Home.render();
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