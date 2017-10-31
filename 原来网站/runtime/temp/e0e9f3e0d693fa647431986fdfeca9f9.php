<?php if (!defined('THINK_PATH')) exit(); /*a:5:{s:79:"/usr/share/nginx/haofangzhiye/public/../application/home/view/house/search.html";i:1503420552;s:90:"/usr/share/nginx/haofangzhiye/public/../application/common/view/layouts/default-index.html";i:1503420551;s:91:"/usr/share/nginx/haofangzhiye/public/../application/common/view/layouts/default-header.html";i:1503420551;s:91:"/usr/share/nginx/haofangzhiye/public/../application/common/view/layouts/default-footer.html";i:1503420551;s:90:"/usr/share/nginx/haofangzhiye/public/../application/common/view/layouts/default-extra.html";i:1503420551;}*/ ?>
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
								<input class="layui-input search-input" type="text" name="keyword" value="<?php echo \think\Request::instance()->get('keyword'); ?>" style="width:960px;display: inline-block;" placeholder="请输入区域或小区名开始找房" >
								<button type="submit" class="search-submit layui-btn layui-btn-danger" lay-filter="submit">搜索</button>
								<label class="layui-btn layui-btn-primary" lay-filter="reset">重置</label>
							</div>
						</div>
						<div class="layout-colla-content layout-show">
							<div class="layui-form-item">
								<label class="layui-form-label">房屋类型：</label>
								<div class="layui-input-block">
									<?php $request = request()->request(); ?>
									<input type="radio" name="noHouseType" value="1" title="不限" lay-filter="the-one" lay-group="houseType" lay-default <?php if(\think\Request::instance()->get('noHouseType') == '1'): ?>checked<?php endif; ?> >
									<?php if(is_array($model->getLists('houseType')) || $model->getLists('houseType') instanceof \think\Collection || $model->getLists('houseType') instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getLists('houseType');if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
									<input type="checkbox" name="houseType[]" value="<?php echo $key; ?>" lay-filter="the-other" lay-group="houseType" lay-skin="primary" title="<?php echo $item; ?>" <?php if(isset($request['houseType'])): if(in_array(($key), is_array($request['houseType'])?$request['houseType']:explode(',',$request['houseType']))): ?>checked<?php endif; endif; ?> >
									<?php endforeach; endif; else: echo "" ;endif; ?>
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">楼层类型：</label>
								<div class="layui-input-block">
									<input type="radio" name="noFloorsType" value="1" title="不限" lay-filter="the-one" lay-group="floorsType" lay-default <?php if(\think\Request::instance()->get('noFloorsType') == '1'): ?>checked<?php endif; ?> >
									<?php if(is_array($model->getLists('floorsType')) || $model->getLists('floorsType') instanceof \think\Collection || $model->getLists('floorsType') instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getLists('floorsType');if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
									<input type="checkbox" name="floorsType[]" value="<?php echo $key; ?>" lay-filter="the-other" lay-group="floorsType"  lay-skin="primary" title="<?php echo $item; ?>" <?php if(isset($request['floorsType'])): if(in_array(($key), is_array($request['floorsType'])?$request['floorsType']:explode(',',$request['floorsType']))): ?>checked<?php endif; endif; ?> >
									<?php endforeach; endif; else: echo "" ;endif; ?>
								</div>
							</div>
							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">房源房型：</label>
									<div class="layui-input-inline" style="width: 130px;">
										<select name="room" lay-search >
											<option value="">选择居室</option>
											<option value="">不限</option>
											<?php if(is_array($model->getLists('room')) || $model->getLists('room') instanceof \think\Collection || $model->getLists('room') instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getLists('room');if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
											<option value="<?php echo $key; ?>" <?php if(\think\Request::instance()->get('room') == $key): ?>selected<?php endif; ?> ><?php echo $item; ?> 室</option>
											<?php endforeach; endif; else: echo "" ;endif; ?>
										</select>
									</div>
									<div class="layui-input-inline" style="width: 130px;">
										<select name="hall" lay-search >
											<option value="">选择大厅</option>
											<option value="">不限</option>
											<?php if(is_array($model->getLists('hall')) || $model->getLists('hall') instanceof \think\Collection || $model->getLists('hall') instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getLists('hall');if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
											<option value="<?php echo $key; ?>" <?php if(\think\Request::instance()->get('hall') == $key): ?>selected<?php endif; ?> ><?php echo $item; ?> 厅</option>
											<?php endforeach; endif; else: echo "" ;endif; ?>
										</select>
									</div>
									<div class="layui-input-inline" style="width: 130px;">
										<select name="kitchen" lay-search >
											<option value="">选择厨房</option>
											<option value="">不限</option>
											<?php if(is_array($model->getLists('kitchen')) || $model->getLists('kitchen') instanceof \think\Collection || $model->getLists('kitchen') instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getLists('kitchen');if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
											<option value="<?php echo $key; ?>" <?php if(\think\Request::instance()->get('kitchen') == $key): ?>selected<?php endif; ?> ><?php echo $item; ?> 厨</option>
											<?php endforeach; endif; else: echo "" ;endif; ?>
										</select>
									</div>
									<div class="layui-input-inline" style="width: 130px;">
										<select name="toilet" lay-search >
											<option value="">选择独卫</option>
											<option value="">不限</option>
											<?php if(is_array($model->getLists('toilet')) || $model->getLists('toilet') instanceof \think\Collection || $model->getLists('toilet') instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getLists('toilet');if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
											<option value="<?php echo $key; ?>" <?php if(\think\Request::instance()->get('toilet') == $key): ?>selected<?php endif; ?> ><?php echo $item; ?> 卫</option>
											<?php endforeach; endif; else: echo "" ;endif; ?>
										</select>
									</div>
									<div class="layui-input-inline" style="width: 130px;">
										<select name="veranda" lay-search >
											<option value="">选择阳台</option>
											<option value="">不限</option>
											<?php if(is_array($model->getLists('veranda')) || $model->getLists('veranda') instanceof \think\Collection || $model->getLists('veranda') instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getLists('veranda');if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
											<option value="<?php echo $key; ?>" <?php if(\think\Request::instance()->get('veranda') == $key): ?>selected<?php endif; ?> ><?php echo $item; ?> 台</option>
											<?php endforeach; endif; else: echo "" ;endif; ?>
										</select>
									</div>
									<div class="layui-input-inline" style="width: 130px;">
										<select name="face" lay-search >
											<option value="">选择朝向</option>
											<option value="">不限</option>
											<?php if(is_array($model->getLists('face')) || $model->getLists('face') instanceof \think\Collection || $model->getLists('face') instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getLists('face');if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
											<option value="<?php echo $key; ?>" <?php if(\think\Request::instance()->get('face') == $key): ?>selected<?php endif; ?> ><?php echo $item; ?> 朝向</option>
											<?php endforeach; endif; else: echo "" ;endif; ?>
										</select>
									</div>
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">房源标签：</label>
								<div class="layui-input-block">
									<input type="radio" name="noHouseLabel" value="1" title="不限" lay-filter="the-one" lay-group="houseLabel" lay-default <?php if(\think\Request::instance()->get('noHouseLabel') == '1'): ?>checked<?php endif; ?> >
									<?php if(is_array($model->getLists('houseLabel')) || $model->getLists('houseLabel') instanceof \think\Collection || $model->getLists('houseLabel') instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getLists('houseLabel');if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
									<input type="checkbox" name="houseLabel[]" value="<?php echo $key; ?>" lay-filter="the-other" lay-group="houseLabel" lay-skin="primary" title="<?php echo $item; ?>" <?php if(isset($request['houseLabel'])): if(in_array(($key), is_array($request['houseLabel'])?$request['houseLabel']:explode(',',$request['houseLabel']))): ?>checked<?php endif; endif; ?> >
									<?php endforeach; endif; else: echo "" ;endif; ?>
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">装修状况：</label>
								<div class="layui-input-block">
									<input type="radio" name="noFitment" value="1" title="不限" lay-filter="the-one" lay-group="fitment" lay-default <?php if(\think\Request::instance()->get('noFitment') == '1'): ?>checked<?php endif; ?> >
									<?php if(is_array($model->getLists('fitment')) || $model->getLists('fitment') instanceof \think\Collection || $model->getLists('fitment') instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getLists('fitment');if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
									<input type="checkbox" name="fitment[]" value="<?php echo $key; ?>" lay-filter="the-other" lay-group="fitment" lay-skin="primary" title="<?php echo $item; ?>" <?php if(isset($request['fitment'])): if(in_array(($key), is_array($request['fitment'])?$request['fitment']:explode(',',$request['fitment']))): ?>checked<?php endif; endif; ?>>
									<?php endforeach; endif; else: echo "" ;endif; ?>
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">基础设施：</label>
								<div class="layui-input-block">
									<input type="radio" name="noSupporting" value="1" title="不限" lay-filter="the-one" lay-group="fitment" lay-default <?php if(\think\Request::instance()->get('noSupporting') == '1'): ?>checked<?php endif; ?> >
									<?php if(is_array($model->getLists('fitment')) || $model->getLists('fitment') instanceof \think\Collection || $model->getLists('fitment') instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getLists('fitment');if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
									<input type="checkbox" name="fitment[]" value="<?php echo $key; ?>" lay-filter="the-other" lay-group="fitment" lay-skin="primary" title="<?php echo $item; ?>" <?php if(isset($request['fitment'])): if(in_array(($key), is_array($request['fitment'])?$request['fitment']:explode(',',$request['fitment']))): ?>checked<?php endif; endif; ?>>
									<?php endforeach; endif; else: echo "" ;endif; ?>
								</div>
							</div>
							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">价格大小：</label>
									<div class="layui-input-inline" style="width: 130px;">
										<select name="eachPrice" lay-search >
											<option value="">均价范围</option>
											<option value="">不限</option>
											<?php if(is_array($model->getLists('eachPrice')) || $model->getLists('eachPrice') instanceof \think\Collection || $model->getLists('eachPrice') instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getLists('eachPrice');if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
											<option value="<?php echo $key; ?>" <?php if(\think\Request::instance()->get('eachPrice') == $key): ?>selected<?php endif; ?> ><?php echo $item; ?></option>
											<?php endforeach; endif; else: echo "" ;endif; ?>
										</select>
									</div>
									<div class="layui-input-inline" style="width: 130px;">
										<select name="price" lay-search >
											<option value="">总价范围</option>
											<option value="">不限</option>
											<?php if(is_array($model->getLists('price')) || $model->getLists('price') instanceof \think\Collection || $model->getLists('price') instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getLists('price');if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
											<option value="<?php echo $key; ?>" <?php if(\think\Request::instance()->get('price') == $key): ?>selected<?php endif; ?> ><?php echo $item; ?></option>
											<?php endforeach; endif; else: echo "" ;endif; ?>
										</select>
									</div>
									<div class="layui-input-inline" style="width: 130px;">
										<select name="area" lay-search >
											<option value="">面积范围</option>
											<option value="">不限</option>
											<?php if(is_array($model->getLists('area')) || $model->getLists('area') instanceof \think\Collection || $model->getLists('area') instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getLists('area');if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
											<option value="<?php echo $key; ?>" <?php if(\think\Request::instance()->get('area') == $key): ?>selected<?php endif; ?> ><?php echo $item; ?></option>
											<?php endforeach; endif; else: echo "" ;endif; ?>
										</select>
									</div>
									<div class="layui-input-inline" style="width: 130px;">
										<select name="create" lay-search >
											<option value="">发布时间</option>
											<option value="">不限</option>
											<?php if(is_array($model->getLists('create')) || $model->getLists('create') instanceof \think\Collection || $model->getLists('create') instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getLists('create');if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
											<option value="<?php echo $key; ?>" <?php if(\think\Request::instance()->get('create') == $key): ?>selected<?php endif; ?> ><?php echo $item; ?></option>
											<?php endforeach; endif; else: echo "" ;endif; ?>
										</select>
									</div>
									<div class="layui-input-inline" style="width: 130px;">
										<select name="update" lay-search >
											<option value="">更新时间</option>
											<option value="">不限</option>
											<?php if(is_array($model->getLists('update')) || $model->getLists('update') instanceof \think\Collection || $model->getLists('update') instanceof \think\Paginator): $i = 0; $__LIST__ = $model->getLists('update');if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
											<option value="<?php echo $key; ?>" <?php if(\think\Request::instance()->get('update') == $key): ?>selected<?php endif; ?> ><?php echo $item; ?></option>
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

							<?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "<p style='display:inline-block;font-size: 16px;width:100%;color:#ff5722;text-align: center;'>没有符合你要的房源</p>" ;else: foreach($__LIST__ as $key=>$model): $mod = ($i % 2 );++$i;?>
							<div class="alive-layout alive-upLevel">

								<div class="alive-header" style="height: 25px;"></div>

								<div class="alive-body alive-upLevel">
									<div class="alive-level" style="width:100%;min-height:200px;position: relative;overflow: hidden;">

										<div style="width: 220px;">
											<img class="" alt="" title="" src="<?php echo $model['url_icon']; ?>" style="border-radius: 2px;">
										</div>
										<div style="flex: 1;">
											<p style="line-height:3em;"><strong><span style="font-family:微软雅黑;color:#FE8300;font-size:20px;"><?php echo $model['title']; ?></span></strong></p>
											<p style="line-height:3em;"><span style="font-family:微软雅黑;color:#333333;font-size:17px;"><?php echo $model->getValue('fitment',$model['fitment']); ?> &nbsp; <?php echo $model->getValue('room',$model['room']); ?>室<?php echo $model->getValue('hall',$model['hall']); ?>厅 &nbsp; <?php echo $model['years']; ?>年建造</span></p>
											<p style="line-height:3em;"><span style="font-family:微软雅黑;font-size:18px;color:#333333;"><span style="font-size:14px;color:#666666;"><?php echo $model['address']; ?></span></span></p>
											<p style="line-height:3em;"><span style="font-family:微软雅黑;font-size:18px;color:#333333;"><span style="font-size:14px;color:#666666;"><br></span></span></p>
											<p style="clear:both;"><br></p>
											<p style="clear:both;">
												<?php $label = explode(',',$model->houseLabel); if(is_array($label) || $label instanceof \think\Collection || $label instanceof \think\Paginator): $i = 0; $__LIST__ = $label;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
												<label class="layui-btn layui-btn-mini layui-btn-danger"><?php echo $model->getValue('houseLabel',$item); ?></label>
												<?php endforeach; endif; else: echo "" ;endif; ?>
											</p>
										</div>
										<div style="width: 240px;">
											<p style="text-align:center;"><span style="font-family:微软雅黑;font-size:22px;color:#333333;"><br></span></p>
											<p style="text-align:center;"><span style="font-family:微软雅黑;font-size:22px;color:#333333;"><br></span></p>
											<p style="text-align:center;"><span style="font-family:微软雅黑;font-size:18px;color:#333333;"><?php echo $model['area']; ?>平米</span></p>
										</div>
										<div style="width: 200px;">
											<p style="line-height:2em;text-align:center;"><strong><span style="font-family:微软雅黑;color:#FE8300;font-size:26px;"><br></span></strong></p>
											<p style="line-height:2em;text-align:left;"><strong><span style="font-family:微软雅黑;color:#FE8300;font-size:26px;"><br></span></strong></p>
											<p style="line-height:2em;text-align:left;"><strong><span style="font-family:微软雅黑;color:#FE8300;font-size:26px;"><?php echo $model['price']/10000; ?>万</span></strong></p>
											<p style="line-height:2em;text-align:left;"><span style="font-family:微软雅黑;font-size:18px;color:#333333;"><span style="font-size:13px;color:#666666;"><?php echo $model['eachPrice']; ?>元/平米</span></span></p>
											<p><br></p>
										</div>

									</div>
								</div>

								<div class="alive-footer" style="height: 25px;"></div>

							</div>
							<hr>
							<?php endforeach; endif; else: echo "<p style='display:inline-block;font-size: 16px;width:100%;color:#ff5722;text-align: center;'>没有符合你要的房源</p>" ;endif; ?>

						</div>

						<div class="alive-footer"></div>

					</div>
				</div>
			</article>

			<article class="alive-footer" style="height: 25px;"></article>

		</section>

		<section class="alive-layout">

			<article class="alive-header" style="height: 100px;">
				<div class="alive-title" style="width: 100%;">
					<div class="title">热门楼盘</div>
					<div class="extra"><p style="cursor:pointer;">更多楼盘</p></div>
				</div>
			</article>

			<article class="alive-body">
				<div class="alive-flex alive-upLevel" style="width:100%;height:350px;position: relative;overflow: hidden;">
					<div class="alive-flex alive-center" style="height:300px;">
						<div id="newHouseBuild" class="alive-flex" style="height: 280px;">
							<?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($list) ? array_slice($list,0,4, true) : $list->slice(0,4, true); if( count($__LIST__)==0 ) : echo "<p style='display:inline-block;font-size: 16px;width:100%;color:#ff5722;text-align: center;'>没有符合你要的房源</p>" ;else: foreach($__LIST__ as $key=>$model): $mod = ($i % 2 );++$i;?>
							<div class="item" style="width: 290px;height: 280px;">
								<div class="itemIcon">
									<a hidefocus="true" href="<?php echo $model['url']; ?>" target="_blank">
										<img alt="<?php echo $model['title']; ?>" data-url="<?php echo $model['url_icon']; ?>" title=""
											 style="width: 290px; height: 211px;">
									</a>
								</div>
								<div class="alive-upLevel half itemTitle" style="height: 70px;">
									<div class="itemDesc alive-center">
										<p><a><?php echo $model['title']; ?></a></p>
									</div>
									<div class="itemDesc alive-center">
										<p>户型： <?php echo $model['room']; ?>房<?php echo $model['hall']; ?>厅</p>
									</div>
								</div>
							</div>
							<?php endforeach; endif; else: echo "<p style='display:inline-block;font-size: 16px;width:100%;color:#ff5722;text-align: center;'>没有符合你要的房源</p>" ;endif; ?>

						</div>
					</div>
				</div>
			</article>

			<article class="alive-footer" style="height: 50px;"></article>

		</section>

		<section class="alive-layout">

			<article class="alive-header" style="height: 100px;">
				<div class="alive-titleCenter border" style="width: 100%;">
					<div class="item active">最热房源</div>
				</div>
			</article>

			<article class="alive-body">
				<div id="newHouse" class="alive-flex alive-upLevel"
					 style="width:100%;min-height:650px;position: relative;overflow: hidden;">
					<div class="alive-flex alive-upLevel" style="position: relative;">

						<div class="alive-layout">

							<div class="alive-header"></div>

							<div class="alive-body">
								<div class="alive-flex outer">
									<?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($list) ? array_slice($list,0,10, true) : $list->slice(0,10, true); if( count($__LIST__)==0 ) : echo "<p style='display:inline-block;font-size: 16px;width:100%;color:#ff5722;text-align: center;'>没有符合你要的房源</p>" ;else: foreach($__LIST__ as $key=>$model): $mod = ($i % 2 );++$i;?>
									<div class="item alive-item-outer min">
										<div class="itemIcon">
											<a hidefocus="true" href="<?php echo $model['url']; ?>" target="_blank">
												<img alt="<?php echo $model['title']; ?>" src="<?php echo $model['url_icon']; ?>" title=""
													 style="width: inherit; height: inherit;">
											</a>
										</div>
										<div class="itemTitle">
											<a hidefocus="true"
											   href="/"
											   target="_blank"
											   title="<?php echo $model['title']; ?>"><?php echo $model['title']; ?></a>
										</div>
									</div>
									<?php endforeach; endif; else: echo "<p style='display:inline-block;font-size: 16px;width:100%;color:#ff5722;text-align: center;'>没有符合你要的房源</p>" ;endif; ?>
								</div>
							</div>

							<div class="alive-footer"></div>

						</div>

					</div>
				</div>
			</article>

			<article class="alive-footer"></article>

		</section>

		<section class="alive-layout">

			<article class="alive-header" style="height: 100px;">
				<div class="alive-titleCenter border" style="width: 100%;">
					<div class="item active">推荐房源</div>
				</div>
			</article>

			<article class="alive-body">
				<div id="hotHouse" class="alive-flex alive-upLevel"
					 style="width:100%;min-height:650px;position: relative;overflow: hidden;">
					<div class="alive-flex alive-upLevel" style="position: relative;">

						<div class="alive-layout">

							<div class="alive-header"></div>

							<div class="alive-body">
								<div class="alive-flex outer">
									<?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($list) ? array_slice($list,0,10, true) : $list->slice(0,10, true); if( count($__LIST__)==0 ) : echo "<p style='display:inline-block;font-size: 16px;width:100%;color:#ff5722;text-align: center;'>没有符合你要的房源</p>" ;else: foreach($__LIST__ as $key=>$model): $mod = ($i % 2 );++$i;?>
									<div class="item alive-item-outer min">
										<div class="itemIcon">
											<a hidefocus="true" href="<?php echo $model['url']; ?>" target="_blank">
												<img alt="<?php echo $model['title']; ?>" src="<?php echo $model['url_icon']; ?>" title=""
													 style="width: inherit; height: inherit;">
											</a>
										</div>
										<div class="itemTitle">
											<a hidefocus="true"
											   href="/"
											   target="_blank"
											   title="<?php echo $model['title']; ?>"><?php echo $model['title']; ?></a>
										</div>
									</div>
									<?php endforeach; endif; else: echo "<p style='display:inline-block;font-size: 16px;width:100%;color:#ff5722;text-align: center;'>没有符合你要的房源</p>" ;endif; ?>
								</div>
							</div>

							<div class="alive-footer"></div>

						</div>

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
        Home.init();
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