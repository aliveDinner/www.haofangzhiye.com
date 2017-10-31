<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:78:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/slider/add.html";i:1506163453;s:82:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/layout/default.html";i:1506163452;s:79:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/common/meta.html";i:1506163449;s:81:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/common/script.html";i:1506163450;}*/ ?>
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
                                <form id="add-form" class="form-horizontal" role="form" data-toggle="validator" method="POST" action="">

    <div class="form-group">
        <label for="c-is_delete_switch" class="control-label col-xs-12 col-sm-2"><?php echo __('Is_delete_switch'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input checked="" id="c-is_delete_switch" name="row[is_delete_switch]" type="hidden" value="0"><label for="row[is_delete_switch]-switch"><input id="row[is_delete_switch]-switch" checked="checked" name="row[is_delete_switch]" type="checkbox" value="1"> </label>
        </div>
    </div>
    <div class="form-group">
        <label for="c-is_passed" class="control-label col-xs-12 col-sm-2"><?php echo __('Is_passed'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
                        
            <select  id="c-is_passed" data-rule="required" class="form-control selectpicker" name="row[is_passed]">
                <?php if(is_array($isPassedList) || $isPassedList instanceof \think\Collection || $isPassedList instanceof \think\Paginator): if( count($isPassedList)==0 ) : echo "" ;else: foreach($isPassedList as $key=>$vo): ?>
                    <option value="<?php echo $key; ?>" <?php if(in_array(($key), explode(',',"2"))): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>

        </div>
    </div>
    <div class="form-group">
        <label for="c-back_user_id" class="control-label col-xs-12 col-sm-2"><?php echo __('Back_user_id'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-back_user_id" data-rule="required" data-source="auth/admin/index" data-field="nickname" class="form-control selectpage" name="row[back_user_id]" type="text" value="">
        </div>
    </div>
    <div class="form-group">
        <label for="c-type" class="control-label col-xs-12 col-sm-2"><?php echo __('Type'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
                        
            <select  id="c-type" data-rule="required" class="form-control selectpicker" name="row[type]">
                <?php if(is_array($typeList) || $typeList instanceof \think\Collection || $typeList instanceof \think\Paginator): if( count($typeList)==0 ) : echo "" ;else: foreach($typeList as $key=>$vo): ?>
                    <option value="<?php echo $key; ?>" <?php if(in_array(($key), explode(',',"1"))): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>

        </div>
    </div>
    <div class="form-group">
        <label for="c-url_image" class="control-label col-xs-12 col-sm-2"><?php echo __('Url_image'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <div class="form-inline">
                <input id="c-url_image" class="form-control" size="50" name="row[url_image]" type="text">
                <span><button type="button" id="plupload-url_image" class="btn btn-danger plupload" data-input-id="c-url_image" data-mimetype="image/gif,image/jpeg,image/png,image/jpg,image/bmp" data-multiple="false" data-preview-id="p-url_image"><i class="fa fa-upload"></i> <?php echo __('Upload'); ?></button></span>
                <span><button type="button" id="fachoose-url_image" class="btn btn-primary fachoose" data-input-id="c-url_image" data-mimetype="image/*" data-multiple="false"><i class="fa fa-list"></i> <?php echo __('Choose'); ?></button></span>
                <ul class="row list-inline plupload-preview" id="p-url_image"></ul>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label for="c-url_icon_image" class="control-label col-xs-12 col-sm-2"><?php echo __('Url_icon_image'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <div class="form-inline">
                <input id="c-url_icon_image" class="form-control" size="50" name="row[url_icon_image]" type="text">
                <span><button type="button" id="plupload-url_icon_image" class="btn btn-danger plupload" data-input-id="c-url_icon_image" data-mimetype="image/gif,image/jpeg,image/png,image/jpg,image/bmp" data-multiple="false" data-preview-id="p-url_icon_image"><i class="fa fa-upload"></i> <?php echo __('Upload'); ?></button></span>
                <span><button type="button" id="fachoose-url_icon_image" class="btn btn-primary fachoose" data-input-id="c-url_icon_image" data-mimetype="image/*" data-multiple="false"><i class="fa fa-list"></i> <?php echo __('Choose'); ?></button></span>
                <ul class="row list-inline plupload-preview" id="p-url_icon_image"></ul>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label for="c-target" class="control-label col-xs-12 col-sm-2"><?php echo __('Target'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-target" class="form-control" name="row[target]" type="text">
        </div>
    </div>
    <div class="form-group">
        <label for="c-title" class="control-label col-xs-12 col-sm-2"><?php echo __('Title'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-title" class="form-control" name="row[title]" type="text">
        </div>
    </div>
    <div class="form-group">
        <label for="c-description" class="control-label col-xs-12 col-sm-2"><?php echo __('Description'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <textarea id="c-description" class="form-control " rows="5" name="row[description]" cols="50"></textarea>
        </div>
    </div>
    <div class="form-group">
        <label for="c-start_at" class="control-label col-xs-12 col-sm-2"><?php echo __('Start_at'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-start_at" class="form-control datetimepicker" data-date-format="YYYY-MM-DD HH:mm:ss" data-use-current="true" name="row[start_at]" type="text" value="<?php echo date('Y-m-d H:i:s'); ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-end_at" class="control-label col-xs-12 col-sm-2"><?php echo __('End_at'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-end_at" class="form-control datetimepicker" data-date-format="YYYY-MM-DD HH:mm:ss" data-use-current="true" name="row[end_at]" type="text" value="<?php echo date('Y-m-d H:i:s'); ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-weigh" class="control-label col-xs-12 col-sm-2"><?php echo __('Weigh'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-weigh" data-rule="required" class="form-control" name="row[weigh]" type="number" value="1">
        </div>
    </div>
    <div class="form-group">
        <label for="c-app" class="control-label col-xs-12 col-sm-2"><?php echo __('App'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
                        
            <select  id="c-app" data-rule="required" class="form-control selectpicker" name="row[app]">
                <?php if(is_array($appList) || $appList instanceof \think\Collection || $appList instanceof \think\Paginator): if( count($appList)==0 ) : echo "" ;else: foreach($appList as $key=>$vo): ?>
                    <option value="<?php echo $key; ?>" <?php if(in_array(($key), explode(',',"2"))): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>

        </div>
    </div>
    <div class="form-group">
        <label for="c-status" class="control-label col-xs-12 col-sm-2"><?php echo __('Status'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
                        
            <?php if(is_array($statusList) || $statusList instanceof \think\Collection || $statusList instanceof \think\Paginator): if( count($statusList)==0 ) : echo "" ;else: foreach($statusList as $key=>$vo): ?>
            <label for="row[status]-<?php echo $key; ?>"><input id="row[status]-<?php echo $key; ?>" name="row[status]" type="radio" value="<?php echo $key; ?>" <?php if(in_array(($key), explode(',',"1"))): ?>checked<?php endif; ?> /> <?php echo $vo; ?></label> 
            <?php endforeach; endif; else: echo "" ;endif; ?>

        </div>
    </div>
    <div class="form-group">
        <label for="c-isDefault_switch" class="control-label col-xs-12 col-sm-2"><?php echo __('IsDefault_switch'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input checked="" id="c-isDefault_switch" name="row[isDefault_switch]" type="hidden" value="0"><label for="row[isDefault_switch]-switch"><input id="row[isDefault_switch]-switch" checked="checked" name="row[isDefault_switch]" type="checkbox" value="1"></label>
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