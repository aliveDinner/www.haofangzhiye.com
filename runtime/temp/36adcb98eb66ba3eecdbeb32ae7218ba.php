<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:92:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/housemanage/myhouse/edit.html";i:1506163452;s:82:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/layout/default.html";i:1506163452;s:79:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/common/meta.html";i:1506163449;s:81:"/usr/share/nginx/haofangzhiye/public/../application/admin/view/common/script.html";i:1506163450;}*/ ?>
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
        <label for="c-HouseName" class="control-label col-xs-12 col-sm-2"><?php echo __('HouseName'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-HouseName" data-rule="required" class="form-control" name="row[HouseName]" type="text" value="<?php echo $row['HouseName']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-BiaoTi" class="control-label col-xs-12 col-sm-2"><?php echo __('BiaoTi'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-BiaoTi" class="form-control" name="row[BiaoTi]" type="text" value="<?php echo $row['BiaoTi']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-HouseSouceType" class="control-label col-xs-12 col-sm-2"><?php echo __('HouseSouceType'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
                        
            <select  id="c-HouseSouceType" data-rule="required" class="form-control selectpicker" name="row[HouseSouceType]">
                <?php if(is_array($housesoucetypeList) || $housesoucetypeList instanceof \think\Collection || $housesoucetypeList instanceof \think\Paginator): if( count($housesoucetypeList)==0 ) : echo "" ;else: foreach($housesoucetypeList as $key=>$vo): ?>
                    <option value="<?php echo $key; ?>" <?php if(in_array(($key), is_array($row['HouseSouceType'])?$row['HouseSouceType']:explode(',',$row['HouseSouceType']))): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>

        </div>
    </div>
    <div class="form-group">
        <label for="c-HouseType" class="control-label col-xs-12 col-sm-2"><?php echo __('HouseType'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
                        
            <select  id="c-HouseType" data-rule="required" class="form-control selectpicker" name="row[HouseType]">
                <?php if(is_array($housetypeList) || $housetypeList instanceof \think\Collection || $housetypeList instanceof \think\Paginator): if( count($housetypeList)==0 ) : echo "" ;else: foreach($housetypeList as $key=>$vo): ?>
                    <option value="<?php echo $key; ?>" <?php if(in_array(($key), is_array($row['HouseType'])?$row['HouseType']:explode(',',$row['HouseType']))): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>

        </div>
    </div>
    <div class="form-group">
        <label for="c-Adress_city" class="control-label col-xs-12 col-sm-2"><?php echo __('Adress_city'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <div class='control-relative'><input id="c-Adress_city" class="form-control" data-toggle="city-picker" name="row[Adress_city]" type="text" value="<?php echo $row['Adress_city']; ?>"></div>
        </div>
    </div>
    <div class="form-group">
        <label for="c-Adress" class="control-label col-xs-12 col-sm-2"><?php echo __('Adress'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-Adress" class="form-control" name="row[Adress]" type="text" value="<?php echo $row['Adress']; ?>">
        </div>
    </div>
    <div class="form-group" >
        <label for="c-HuXing_Shi" class="control-label col-xs-12 col-sm-2">户型:</label>
        <div class="col-xs-12 col-sm-8" style="display: flex;">
            <div class="input-group" style="width: 100px">
                <input id="c-HuXing_Shi" data-rule="required" class="form-control" aria-describedby="basic-addon1" name="row[HuXing_Shi]" type="number" value="<?php echo $row['HuXing_Shi']; ?>">
                <span class="input-group-addon" id="basic-addon1"><?php echo __('HuXing_Shi'); ?></span>
            </div>
            <div class="input-group" style="width: 100px">
                <input id="c-HuXing_Ting" data-rule="required" class="form-control" aria-describedby="basic-addon2" name="row[HuXing_Ting]" type="number" value="<?php echo $row['HuXing_Ting']; ?>">
                <span class="input-group-addon" id="basic-addon2"><?php echo __('HuXing_Ting'); ?></span>
            </div>
            <div class="input-group" style="width: 100px">
                <input id="c-HuXing_Wei" data-rule="required" class="form-control" aria-describedby="basic-addon3" name="row[HuXing_Wei]" type="number" value="<?php echo $row['HuXing_Wei']; ?>">
                <span class="input-group-addon" id="basic-addon3"><?php echo __('HuXing_Wei'); ?></span>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label for="c-JianZhuMianJi" class="control-label col-xs-12 col-sm-2"><?php echo __('JianZhuMianJi'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <div class="input-group" >
                <input id="c-JianZhuMianJi" data-rule="required" class="form-control" aria-describedby="mj-addon1" name="row[JianZhuMianJi]" type="number" value="<?php echo $row['JianZhuMianJi']; ?>">
                <span class="input-group-addon" id="mj-addon1">㎡</span>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label for="c-MianJi" class="control-label col-xs-12 col-sm-2"><?php echo __('MianJi'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <div class="input-group" >
                <input id="c-MianJi" data-rule="required" class="form-control" aria-describedby="snmj-addon1" name="row[MianJi]" type="number" value="<?php echo $row['MianJi']; ?>">
                <span class="input-group-addon" id="snmj-addon1">㎡</span>
            </div>
        </div>
    </div>
    <div class="form-group" >
        <label for="c-HuXing_Shi" class="control-label col-xs-12 col-sm-2">楼层:</label>
        <div class="col-xs-12 col-sm-8" style="display: flex;">
            <div class="input-group" style="width: 100px">
                <input id="c-LouCeng" data-rule="required" class="form-control" aria-describedby="lc-addon1" name="row[LouCeng]" type="number" value="<?php echo $row['LouCeng']; ?>">
                <span class="input-group-addon" id="lc-addon1"><?php echo __('LouCeng'); ?></span>
            </div>
            <div class="input-group" style="width: 100px">
                <input id="c-CengGao" data-rule="required" class="form-control" aria-describedby="lc-addon2" name="row[CengGao]" type="number" value="<?php echo $row['CengGao']; ?>">
                <span class="input-group-addon" id="lc-addon2"><?php echo __('CengGao'); ?></span>
            </div>

        </div>
    </div>


    <div class="form-group">
        <label for="c-ChaoXiang" class="control-label col-xs-12 col-sm-2"><?php echo __('ChaoXiang'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
                        
            <select  id="c-ChaoXiang" class="form-control selectpicker" name="row[ChaoXiang]">
                <?php if(is_array($chaoxiangList) || $chaoxiangList instanceof \think\Collection || $chaoxiangList instanceof \think\Paginator): if( count($chaoxiangList)==0 ) : echo "" ;else: foreach($chaoxiangList as $key=>$vo): ?>
                    <option value="<?php echo $key; ?>" <?php if(in_array(($key), is_array($row['ChaoXiang'])?$row['ChaoXiang']:explode(',',$row['ChaoXiang']))): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>

        </div>
    </div>
    <div class="form-group">
        <label for="c-DanJia" class="control-label col-xs-12 col-sm-2"><?php echo __('DanJia'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <div class="input-group" >
                <input id="c-DanJia" data-rule="required" class="form-control" aria-describedby="dj-addon1" name="row[DanJia]" type="number" value="<?php echo $row['DanJia']; ?>">
                <span class="input-group-addon" id="dj-addon1">元</span>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label for="c-FangJia" class="control-label col-xs-12 col-sm-2"><?php echo __('FangJia'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <div class="input-group" >
                <input id="c-FangJia" data-rule="required" class="form-control" aria-describedby="fj-addon1" name="row[FangJia]" type="number" value="<?php echo $row['FangJia']; ?>">
                <span class="input-group-addon" id="fj-addon1">万元</span>
            </div>
        </div>
    </div>

    <div class="form-group">
        <label for="c-BiaoQian" class="control-label col-xs-12 col-sm-2"><?php echo __('BiaoQian'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-BiaoQian" class="form-control" name="row[BiaoQian]" type="text" value="<?php echo $row['BiaoQian']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-ZhuZhaiLeiXing" class="control-label col-xs-12 col-sm-2"><?php echo __('ZhuZhaiLeiXing'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
                        
            <select  id="c-ZhuZhaiLeiXing" class="form-control selectpicker" name="row[ZhuZhaiLeiXing]">
                <?php if(is_array($zhuzhaileixingList) || $zhuzhaileixingList instanceof \think\Collection || $zhuzhaileixingList instanceof \think\Paginator): if( count($zhuzhaileixingList)==0 ) : echo "" ;else: foreach($zhuzhaileixingList as $key=>$vo): ?>
                    <option value="<?php echo $key; ?>" <?php if(in_array(($key), is_array($row['ZhuZhaiLeiXing'])?$row['ZhuZhaiLeiXing']:explode(',',$row['ZhuZhaiLeiXing']))): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>

        </div>
    </div>
    <div class="form-group">
        <label for="c-ZhuangXiuLeiXing" class="control-label col-xs-12 col-sm-2"><?php echo __('ZhuangXiuLeiXing'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
                        
            <select  id="c-ZhuangXiuLeiXing" class="form-control selectpicker" name="row[ZhuangXiuLeiXing]">
                <?php if(is_array($zhuangxiuleixingList) || $zhuangxiuleixingList instanceof \think\Collection || $zhuangxiuleixingList instanceof \think\Paginator): if( count($zhuangxiuleixingList)==0 ) : echo "" ;else: foreach($zhuangxiuleixingList as $key=>$vo): ?>
                    <option value="<?php echo $key; ?>" <?php if(in_array(($key), is_array($row['ZhuangXiuLeiXing'])?$row['ZhuangXiuLeiXing']:explode(',',$row['ZhuangXiuLeiXing']))): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>

        </div>
    </div>
    <div class="form-group">
        <label for="c-ChanQuanNianXian" class="control-label col-xs-12 col-sm-2"><?php echo __('ChanQuanNianXian'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
                        
            <select  id="c-ChanQuanNianXian" class="form-control selectpicker" name="row[ChanQuanNianXian]">
                <?php if(is_array($chanquannianxianList) || $chanquannianxianList instanceof \think\Collection || $chanquannianxianList instanceof \think\Paginator): if( count($chanquannianxianList)==0 ) : echo "" ;else: foreach($chanquannianxianList as $key=>$vo): ?>
                    <option value="<?php echo $key; ?>" <?php if(in_array(($key), is_array($row['ChanQuanNianXian'])?$row['ChanQuanNianXian']:explode(',',$row['ChanQuanNianXian']))): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>

        </div>
    </div>
    <div class="form-group">
        <label for="c-ChanQuan" class="control-label col-xs-12 col-sm-2"><?php echo __('ChanQuan'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
                        
            <select  id="c-ChanQuan" class="form-control selectpicker" name="row[ChanQuan]">
                <?php if(is_array($chanquanList) || $chanquanList instanceof \think\Collection || $chanquanList instanceof \think\Paginator): if( count($chanquanList)==0 ) : echo "" ;else: foreach($chanquanList as $key=>$vo): ?>
                    <option value="<?php echo $key; ?>" <?php if(in_array(($key), is_array($row['ChanQuan'])?$row['ChanQuan']:explode(',',$row['ChanQuan']))): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>

        </div>
    </div>
    <div class="form-group">
        <label for="c-JianZhuNianDai" class="control-label col-xs-12 col-sm-2"><?php echo __('JianZhuNianDai'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <div class="input-group" >
                <input id="c-JianZhuNianDai" data-rule="required" class="form-control" aria-describedby="nd-addon1" name="row[JianZhuNianDai]" type="number" value="<?php echo $row['JianZhuNianDai']; ?>">
                <span class="input-group-addon" id="nd-addon1">年</span>
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
        <label for="c-Images" class="control-label col-xs-12 col-sm-2"><?php echo __('Images'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <div class="form-inline">
                <input id="c-Images" class="form-control" size="50" name="row[Images]" type="text" value="<?php echo $row['Images']; ?>">
                <span><button type="button" id="plupload-Images" class="btn btn-danger plupload" data-input-id="c-Images" data-mimetype="image/gif,image/jpeg,image/png,image/jpg,image/bmp" data-multiple="true" data-preview-id="p-Images"><i class="fa fa-upload"></i> <?php echo __('Upload'); ?></button></span>
                <span><button type="button" id="fachoose-Images" class="btn btn-primary fachoose" data-input-id="c-Images" data-mimetype="image/*" data-multiple="true"><i class="fa fa-list"></i> <?php echo __('Choose'); ?></button></span>
                <ul class="row list-inline plupload-preview" id="p-Images"></ul>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label for="c-LianXiRen" class="control-label col-xs-12 col-sm-2"><?php echo __('LianXiRen'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-LianXiRen" class="form-control" name="row[LianXiRen]" type="text" value="<?php echo $row['LianXiRen']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-LianXiDianHua" class="control-label col-xs-12 col-sm-2"><?php echo __('LianXiDianHua'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-LianXiDianHua" class="form-control" name="row[LianXiDianHua]" type="text" value="<?php echo $row['LianXiDianHua']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="c-ShenFenZheng" class="control-label col-xs-12 col-sm-2"><?php echo __('ShenFenZheng'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-ShenFenZheng" class="form-control" name="row[ShenFenZheng]" type="text" value="<?php echo $row['ShenFenZheng']; ?>">
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