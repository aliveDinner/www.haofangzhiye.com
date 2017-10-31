<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:77:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/news/edit.html";i:1507608345;s:82:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/layout/default.html";i:1507608344;s:79:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/common/meta.html";i:1507608341;s:81:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/common/script.html";i:1507608341;}*/ ?>
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
        <label for="c-title" class="control-label col-xs-12 col-sm-2"><?php echo __('Title'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-title" class="form-control" name="row[title]" type="text" value="<?php echo $row['title']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-author" class="control-label col-xs-12 col-sm-2"><?php echo __('Author'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-author" class="form-control" name="row[author]" type="text" value="<?php echo $row['author']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-newstype" class="control-label col-xs-12 col-sm-2"><?php echo __('Newstype'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
                        
            <select  id="c-newstype" class="form-control selectpicker" name="row[newstype]">
                <?php if(is_array($newstypeList) || $newstypeList instanceof \think\Collection || $newstypeList instanceof \think\Paginator): if( count($newstypeList)==0 ) : echo "" ;else: foreach($newstypeList as $key=>$vo): ?>
                    <option value="<?php echo $key; ?>" <?php if(in_array(($key), is_array($row['newstype'])?$row['newstype']:explode(',',$row['newstype']))): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>

        </div>
    </div>
    <div class="form-group">
        <label for="c-titleimage" class="control-label col-xs-12 col-sm-2"><?php echo __('Titleimage'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <div class="form-inline">
                <input id="c-titleimage" class="form-control" size="50" name="row[titleimage]" type="text" value="<?php echo $row['titleimage']; ?>">
                <span><button type="button" id="plupload-titleimage" class="btn btn-danger plupload" data-input-id="c-titleimage" data-mimetype="image/gif,image/jpeg,image/png,image/jpg,image/bmp" data-multiple="false" data-preview-id="p-titleimage"><i class="fa fa-upload"></i> <?php echo __('Upload'); ?></button></span>
                <span><button type="button" id="fachoose-titleimage" class="btn btn-primary fachoose" data-input-id="c-titleimage" data-mimetype="image/*" data-multiple="false"><i class="fa fa-list"></i> <?php echo __('Choose'); ?></button></span>
                <ul class="row list-inline plupload-preview" id="p-titleimage"></ul>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label for="c-content" class="control-label col-xs-12 col-sm-2"><?php echo __('Content'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <textarea id="c-content" class="form-control summernote" rows="5" name="row[content]" cols="50"><?php echo $row['content']; ?></textarea>
        </div>
    </div>
    <div class="form-group">
        <label for="c-tag" class="control-label col-xs-12 col-sm-2"><?php echo __('Tag'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-tag" class="form-control" name="row[tag]" type="text" value="<?php echo $row['tag']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-isnew_switch" class="control-label col-xs-12 col-sm-2"><?php echo __('Isnew_switch'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input checked="" id="c-isnew_switch" name="row[isnew_switch]" type="hidden" value="0"><label for="row[isnew_switch]-switch"><input id="row[isnew_switch]-switch" name="row[isnew_switch]" type="checkbox" <?php if(in_array(($row['isnew_switch']), explode(',',"1"))): ?>checked<?php endif; ?> value="1"></label>
        </div>
    </div>
    <div class="form-group">
        <label for="c-weigh" class="control-label col-xs-12 col-sm-2"><?php echo __('Weigh'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-weigh" class="form-control" name="row[weigh]" type="number" value="<?php echo $row['weigh']; ?>">
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