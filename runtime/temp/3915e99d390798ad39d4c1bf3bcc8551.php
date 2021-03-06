<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:85:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/intentionlog/edit.html";i:1507608344;s:82:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/layout/default.html";i:1507608344;s:79:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/common/meta.html";i:1507608341;s:81:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/common/script.html";i:1507608341;}*/ ?>
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
        <label for="c-intention_id" class="control-label col-xs-12 col-sm-2"><?php echo __('Intention_id'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-intention_id" data-rule="required" data-source="intention/index" data-field="Id"  class="form-control selectpage" name="row[intention_id]" type="text" value="<?php echo $row['intention_id']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-logtype" class="control-label col-xs-12 col-sm-2"><?php echo __('Logtype'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
                        
            <select  id="c-logtype" class="form-control selectpicker" name="row[logtype]">
                <?php if(is_array($logtypeList) || $logtypeList instanceof \think\Collection || $logtypeList instanceof \think\Paginator): if( count($logtypeList)==0 ) : echo "" ;else: foreach($logtypeList as $key=>$vo): ?>
                    <option value="<?php echo $key; ?>" <?php if(in_array(($key), is_array($row['logtype'])?$row['logtype']:explode(',',$row['logtype']))): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>

        </div>
    </div>
    <div class="form-group">
        <label for="c-content" class="control-label col-xs-12 col-sm-2"><?php echo __('Content'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <textarea id="c-content" class="form-control summernote" rows="5" name="row[content]" cols="50"><?php echo $row['content']; ?></textarea>
        </div>
    </div>
    <div class="form-group hidden">
        <label for="c-admin_id" class="control-label col-xs-12 col-sm-2"><?php echo __('Admin_id'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-admin_id" data-rule="required"  class="form-control selectpage" name="row[admin_id]" type="text" value="<?php echo $row['admin_id']; ?>">
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