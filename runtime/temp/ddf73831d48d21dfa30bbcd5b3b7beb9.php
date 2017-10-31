<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:82:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/auth/admin/add.html";i:1506163449;s:82:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/layout/default.html";i:1506163452;s:79:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/common/meta.html";i:1506163449;s:81:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/common/script.html";i:1506163450;}*/ ?>
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
                                <form id="add-form" class="form-horizontal form-ajax" role="form" data-toggle="validator" method="POST" action="">
    <div class="form-group">
        <label for="role_id" class="control-label col-xs-12 col-sm-2"><?php echo __('Group'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <?php echo build_select('group[]', $groupdata, null, ['class'=>'form-control selectpicker', 'multiple'=>'', 'required'=>'']); ?>
        </div>
    </div>
    <div class="form-group">
        <label for="username" class="control-label col-xs-12 col-sm-2"><?php echo __('Username'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input type="text" class="form-control" id="username" name="row[username]" value="" data-rule="required;username" />
        </div>
    </div>

    <div class="form-group">
        <label for="nickname" class="control-label col-xs-12 col-sm-2"><?php echo __('Nickname'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input type="text" class="form-control" id="nickname" name="row[nickname]" value="" data-rule="required" />
        </div>
    </div>
    <div class="form-group">
        <label for="password" class="control-label col-xs-12 col-sm-2"><?php echo __('Password'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input type="password" class="form-control" id="password" name="row[password]" value="" data-rule="required;password" />
        </div>
    </div>
    <div class="form-group">
        <label for="c-usertype" class="control-label col-xs-12 col-sm-2"><?php echo __('usertype'); ?>:</label>
        <div class="col-xs-12 col-sm-8">

            <select  id="c-usertype" data-rule="required" class="form-control selectpicker" name="row[usertype]">
                <?php if(is_array($usertypeList) || $usertypeList instanceof \think\Collection || $usertypeList instanceof \think\Paginator): if( count($usertypeList)==0 ) : echo "" ;else: foreach($usertypeList as $key=>$vo): if(($key>$admin['usertype'])): ?>
                <option value="<?php echo $key; ?>" <?php if(in_array(($key), explode(',',""))): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
                <?php endif; endforeach; endif; else: echo "" ;endif; ?>
            </select>

        </div>
    </div>
    <div class="form-group">
        <label for="c-email" class="control-label col-xs-12 col-sm-2"><?php echo __('email'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-email" class="form-control" name="row[email]" type="text">
        </div>
    </div>
    <div class="form-group">
        <label for="c-qq" class="control-label col-xs-12 col-sm-2"><?php echo __('qq'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-qq" class="form-control" name="row[qq]" type="text">
        </div>
    </div>
    <div class="form-group">
        <label for="c-mobile" class="control-label col-xs-12 col-sm-2"><?php echo __('mobile'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-mobile" class="form-control" name="row[mobile]" type="text">
        </div>
    </div>
    <div class="form-group">
        <label for="c-wechat" class="control-label col-xs-12 col-sm-2"><?php echo __('wechat'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-wechat" class="form-control" name="row[wechat]" type="text">
        </div>
    </div>
    <div class="form-group">
        <label for="c-servicecontent" class="control-label col-xs-12 col-sm-2"><?php echo __('servicecontent'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <textarea id="c-servicecontent" class="form-control summernote" rows="5" name="row[servicecontent]" cols="50"></textarea>
        </div>
    </div>
    <div class="form-group">
        <label for="c-GoldConsultant_switch" class="control-label col-xs-12 col-sm-2"><?php echo __('GoldConsultant_switch'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input checked="" id="c-GoldConsultant_switch" name="row[GoldConsultant_switch]" type="hidden" value="0"><label for="row[GoldConsultant_switch]-switch"><input id="row[GoldConsultant_switch]-switch" name="row[GoldConsultant_switch]" type="checkbox" value="0"></label>
        </div>
    </div>
    <div class="form-group">
        <label for="content" class="control-label col-xs-12 col-sm-2"><?php echo __('Status'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <?php echo build_radios('row[status]', ['normal'=>__('Normal'), 'hidden'=>__('Hidden')]); ?>
        </div>
    </div>
    <div class="form-group hidden layer-footer">
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