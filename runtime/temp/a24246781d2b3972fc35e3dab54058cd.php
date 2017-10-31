<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:80:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/company/edit.html";i:1506163450;s:82:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/layout/default.html";i:1506163452;s:79:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/common/meta.html";i:1506163449;s:81:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/common/script.html";i:1506163450;}*/ ?>
<!DOCTYPE html>
<html lang="<?php echo $config['language']; ?>">
    <head>
        <meta charset="utf-8">
<title><?php echo (isset($title) && ($title !== '')?$title:''); ?></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="renderer" content="webkit">

<link rel="shortcut icon" href="__CDN__/assets/img/favicon.png" />
<!-- Loading Bootstrap -->
<link href="__CDN__/assets/css/backend<?php echo \think\Config::get('app_debug')?'':'.min'; ?>.css?v=<?php echo \think\Config::get('site.version'); ?>" rel="stylesheet">

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
    </head>

    <body class="inside-header inside-aside <?php echo defined('IS_DIALOG') && IS_DIALOG ? 'is-dialog' : ''; ?>">
        <div id="main" role="main">
            <div class="tab-content tab-addtabs">
                <div id="content">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <section class="content-header hide">
                                <h1>
                                    <?php echo __('Dashboard'); ?>
                                    <small><?php echo __('Control panel'); ?></small>
                                </h1>
                            </section>
                            <?php if(!IS_DIALOG): ?>
                            <!-- RIBBON -->
                            <div id="ribbon">
                                <ol class="breadcrumb pull-left">
                                    <li><a href="dashboard" class="addtabsit"><i class="fa fa-dashboard"></i> <?php echo __('Dashboard'); ?></a></li>
                                </ol>
                                <ol class="breadcrumb pull-right">
                                    <?php foreach($breadcrumb as $vo): ?>
                                    <li><a href="javascript:;" data-url="<?php echo $vo['url']; ?>"><?php echo $vo['title']; ?></a></li>
                                    <?php endforeach; ?>
                                </ol>
                            </div>
                            <!-- END RIBBON -->
                            <?php endif; ?>
                            <div class="content">
                                <form id="edit-form" class="form-horizontal" role="form" data-toggle="validator" method="POST" action="">

    <div class="form-group">
        <label for="c-companyname" class="control-label col-xs-12 col-sm-2"><?php echo __('Companyname'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-companyname" class="form-control" name="row[companyname]" type="text" value="<?php echo $row['companyname']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-companycontent" class="control-label col-xs-12 col-sm-2"><?php echo __('Companycontent'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <textarea id="c-companycontent" class="form-control summernote" rows="5" name="row[companycontent]" cols="50"><?php echo $row['companycontent']; ?></textarea>
        </div>
    </div>
    <div class="form-group">
        <label for="c-contactphone" class="control-label col-xs-12 col-sm-2"><?php echo __('Contactphone'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-contactphone" class="form-control" name="row[contactphone]" type="text" value="<?php echo $row['contactphone']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-contactphone1" class="control-label col-xs-12 col-sm-2"><?php echo __('Contactphone1'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-contactphone1" class="form-control" name="row[contactphone1]" type="text" value="<?php echo $row['contactphone1']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-contact" class="control-label col-xs-12 col-sm-2"><?php echo __('Contact'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-contact" class="form-control" name="row[contact]" type="text" value="<?php echo $row['contact']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-qq" class="control-label col-xs-12 col-sm-2"><?php echo __('Qq'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-qq" class="form-control" name="row[qq]" type="text" value="<?php echo $row['qq']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-email" class="control-label col-xs-12 col-sm-2"><?php echo __('Email'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-email" class="form-control" name="row[email]" type="text" value="<?php echo $row['email']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-wechat" class="control-label col-xs-12 col-sm-2"><?php echo __('Wechat'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-wechat" class="form-control" name="row[wechat]" type="text" value="<?php echo $row['wechat']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-adress" class="control-label col-xs-12 col-sm-2"><?php echo __('Adress'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-adress" class="form-control" name="row[adress]" type="text" value="<?php echo $row['adress']; ?>">
        </div>
    </div>
    <div class="form-group layer-footer">
        <label class="control-label col-xs-12 col-sm-2"></label>
        <div class="col-xs-12 col-sm-8">
            <button type="submit" class="btn btn-success btn-embossed disabled"><?php echo __('OK'); ?></button>
            <button type="reset" class="btn btn-default btn-embossed"><?php echo __('Reset'); ?></button>
        </div>
    </div>
</form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="__CDN__/assets/js/require.js" data-main="__CDN__/assets/js/require-backend<?php echo \think\Config::get('app_debug')?'':'.min'; ?>.js?v=<?php echo $site['version']; ?>"></script>
    </body>
</html>