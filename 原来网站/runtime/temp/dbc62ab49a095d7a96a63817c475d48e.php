<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:78:"/usr/share/nginx/haofangzhiye/public/../application/home/view/login/login.html";i:1501889541;}*/ ?>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<meta name="renderer" content="webkit">
<meta name="keywords" content="aliveDinner">
<meta name="description" content="aliveDinner">
<meta name="author" content="aliveDinner">
<meta name="copyright" content="alive">
<title>Alive Dinner Login</title>
<link href="./index.min.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="./jquery-core.min.js"></script>
<!---->
<script type="text/javascript" src="./fai.min.js"></script>
<script type="text/javascript" src="./util.min.js"></script>
</head>

<body style="background-color:#f0f6fe; font-family:'微软雅黑';">
<div class="container">

	<!-- ## START header ## -->
	<div style="position:absolute;background-color:rgba(244,244,244,0);width: 100%;">
	<div class="header">
		<div class="left">
			<a hidefocus="true" class="logo" href="http://www.alivehouse.com/" target="_blank"></a>
			<div class="text"></div>
		</div>
		<div class="right" style="float: right;margin-right: 20px;">
			<div style="display: flex;">
				<div class="header_link" style="margin: auto;width: 237px;">
					<a href="/reg.html" target="_blank">申请加入</a>
					<span class="sep">&nbsp;</span>
					<a href="/suggestions.html" target="_blank" rel="nofollow">投诉建议</a>
				</div>
			</div>
		</div>

		<div class="clear"></div>
	</div>
	</div>
	<!-- ## END header ## -->

	<!-- ## START middle ## -->
	<div class="middle" style="margin-top: 100px;">
		<div class="content">
			<!-- ## START middle left ## -->
			<div class="left">
				<!--<div class="text">-->
					<!--some messages<br>-->
					<!--现在就&nbsp;<a hidefocus="true" href="/reg.html" target="_blank">申请加入</a>-->
				<!--</div>-->
				<a id="reg-button" class="regBtn"></a>
			</div>
			<!-- ## END middle left ## -->
	
			<!-- ## START middle right ## -->
			<div class="right">
				<div class="righttop" style="text-align: center;">登录</div>
				<div id="log-form" class="rightmid">
					<div class="log-input-container">
						<div class="clear" style="font-size:0px;"></div>
						<div class="log-line" id="rowCacct">
							<div class="log-txt" style="display: none;">我房帐号/邮箱/手机号码</div>
							<input id="log-cacct" type="text" autocomplete="off" maxlength="30" class="log-input input2">
							<div class="fa fa-user">&nbsp;</div>
						</div>
						<div class="log-line log-line-hover" id="rowPwd">
							<div id="passwordLabel" class="log-txt log-txt-hover">密码</div>
							<input id="log-pwd" type="password" autocomplete="new-password" maxlength="20" class="log-input input2">
							<div class="fa fa-password">&nbsp;</div>
						</div>
						<div id="log-valid-line" class="log-line" style="display:none;">
							<div class="log-txt" style="width:116px; left:12px;">验证码</div>
							<input id="log-valid" type="text" class="log-input input2" style="width:116px; padding-left:12px;">
							<img id="log-valid-img" title="看不清？点击换一张">
							<span id="log-refresh-btn" title="看不清？点击换一张"></span>
						</div>
					</div>
					<div class="goin1"><a href="javascript:;" onclick="openPassword();">忘记密码？</a></div>
					<div id="error" class="worn"></div>
					<div id="login-button" class="loginBtn" style="display: block;">登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录</div>
					<div class="clear"></div>
					
				</br>
			</div>
			<!-- ## END middle right ## -->
	
			<!--<div class="clear"></div>-->

			<!-- ## START foot ## -->
			<!--<div class="foot">
				<div class="graw" style="text-align: center;">
					<div>Copyright <font>© </font> 2017-2017 XXX</div>
					<div style="padding:5px 0 10px 0;">
						<a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=XXX" style="display:inline-block;text-decoration:none;height:20px;line-height:20px; margin-right:5px;">
							<img src="./beianIcon.png" width="20" height="20" />
							<span style="height:20px;line-height:20px;margin: 0px 5px 0px 0px; vertical-align:top; color:#898989;"> 备案信息 </span>
						</a>
						<a href="http://www.miitbeian.gov.cn/" target="_blank" rel="nofollow">
							<span style="height:20px;line-height:20px;margin: 0px 5px 0px 0px; vertical-align:top; color:#898989;"> XXX </span>
						</a>
					</div>
				</div>
			</div>-->
			<!-- ## END foot ## -->

		</div>
	</div>
	<!-- ## END middle ##
	-->
	<!-- </div> -->
</div>	
<script type="text/javascript">
function isMobile(mobile){
	var pattern = /^1[34578]\d{9}$/;
	return pattern.test(mobile);
}
var cacct = "";
var sacct = "";

	$(function(){
		var logAcct = $('#log-cacct'), logAcctVal;
		//从url/cookie中获取用户名
		if (cacct.length > 0) {
			logAcctVal = cacct;
		}else{
			logAcctVal = $.cookie('loginCacct');
		}
		if(logAcctVal != null && $.trim(logAcctVal) != ''){
			if(!isMobile(logAcctVal) && !Fai.isEmail(logAcctVal)){
				var logSacct = $('#log-sacct');
				var logSacctVal = $.cookie('loginSacct');
				var logUseSacct = $.cookie('loginUseSacct');
				if (sacct.length > 0) {
					logSacctVal = sacct;
				}
				if(logSacctVal) {
					logSacct.val(logSacctVal);
				}
				if(logUseSacct == 1) {
					$('#staff-login')[0].click();
				}
			}
			logAcct.val(logAcctVal);
		}
		//原来手机和邮箱存的cookie是loginAcct，这里过渡一下，过一段时间可以直接删掉
		else{
			logAcctVal = $.cookie('loginAcct');
			if(logAcctVal != null && $.trim(logAcctVal) != ''){
				logAcct.val(logAcctVal);
			}
		}
		$.cookie('loginAcct', null, {path:'/', domain:'alivehouse.com'});
		//////

		
			showCode(false);
		
		
		$('#log-cacct').focus(function(){
			checkFocus( 'log-cacct' );
		}).blur(function(){
			var acctVal = $(this).val().replace(/\s+/g, '');
			$(this).val(acctVal);
			checkFocus( 'log-cacct' );
		}).keydown(function(event){
			checkFocus( 'log-cacct' );
			if( event.keyCode == 13 ){
				var acctVal = $(this).val().replace(/\s+/g, '');
				$(this).val(acctVal);
				login();
			}
		}).keyup(function(){
			checkFocus( 'log-cacct' );
		})
	
		$('#log-sacct').focus(function(){
			checkFocus( 'log-sacct' );
		}).blur(function(){
			checkFocus( 'log-sacct' );
		}).keydown(function(event){
			checkFocus( 'log-sacct' );
			if( event.keyCode == 13 ){
				login();
			}
		}).keyup(function(){
			checkFocus( 'log-sacct' );
		})
		
		$('#log-pwd').focus(function(){
			checkFocus( 'log-pwd' );
		}).blur(function(){
			checkFocus( 'log-pwd' );
		}).keydown(function(event){
			checkFocus( 'log-pwd' );
			if( event.keyCode == 13 ){
				login();
			}
		}).keyup(function(){
			checkFocus( 'log-pwd' );
		})
		
		$('#log-valid').focus(function(){
			checkFocus( 'log-valid' );
		}).blur(function(){
			checkFocus( 'log-valid' );
		}).keydown(function(event){
			checkFocus( 'log-valid' );
			if( event.keyCode == 13 ){
				login();
			}
		}).keyup(function(){
			checkFocus( 'log-valid' );
		})
		
		$('#log-valid-img, #log-refresh-btn').click( changeValidImg )
		$('#login-button').click(function(){
			login();
		});
		$('#login-button').hover(function(){
			$(this).addClass("loginBtn-hover");
		}, function(){
			$(this).removeClass("loginBtn-hover");
		});
		$('#reg-button, #reg-link').click( reg );
		$('#reg-button').hover(function(){
			$(this).addClass("regBtn-hover");
		}, function(){
			$(this).removeClass("regBtn-hover");
		});
		
		//IE(除了IE11)，底层的灰色提示标签会被触发focus，反而顶层输入框获取不到焦点，这里特殊处理转移焦点
		//因为IE给元素设置了绝对定位和z-index，若顶层元素是透明而底层元素非透明，还是会默认底层非透明的元素在上层（可以给底层输入框加背景颜色试试就知，加了不做以下的焦点转移也可以正常获取焦点）
//		if($.browser.msie){
		if(Fai.isIE()){
			$('.log-line .log-txt').click(function(){
				$(this).siblings('.log-input').focus();
			});
		}
		if ( Fai.isIE7() || Fai.isIE8()){	//IE7/8隐藏我们自定义的checkbox样式，会错位
			$('.goin .checkItemLabel').hide();
		}
		
		checkFocus( 'log-cacct' );
		checkFocus( 'log-sacct' );
		checkFocus( 'log-pwd' );
		checkFocus( 'log-valid' );
		
		setTimeout(autoFocus, 50);
	});
	
	//自动获取输入框焦点
	function autoFocus(){
		$('#log-cacct, #log-sacct, #log-pwd').filter(':visible').each(function(){
			var $this = $(this);
			if($this.val() == ''){
				$this.focus();
				checkFocus($this.attr('id'));
				return false;
			}
		});
	}
	
	function checkFocus( id ){
		var input = $('#' + id),
			val = input.val();
		if (id != "log-pwd"){
			val = $.trim(val);
		}
		$('#log-form').find('input.log-input').removeClass('input1');
		var txt = input.parent().children('.log-txt');
		$('.log-txt').removeClass("log-txt-hover");
		txt.addClass('log-txt-hover');
		$('.log-line').removeClass("log-line-hover");
		if ( id != "log-valid" ){
			input.parent().addClass("log-line-hover");
		}
		if( val == '' ){
			txt.show();
//			if ( Fai.isIE7() ){
//				input.css("background", "transparent");
//			}
		}else{
			txt.hide();
//			if ( Fai.isIE7() ){
//				input.css("background", "#fff");
//			}
		}
//		input.addClass('input1');
	}
	
	function showCode( needCode ){
		var login_line = $('#log-valid-line');
		if( needCode ){
			login_line.show();
			$('#log-valid').val('').focus();
			$('#log-valid-img').attr( 'src', '/XX.html?'  + parseInt(Math.random() * 1000)+'&validateCodeRegType=3');
		}else{
			login_line.hide();
		}
	}
	
	function changeValidImg(){
		showCode( true );
	}

	function login(){
		var me = $('#login-button');
		if( me.hasClass('disabled') ){
			return;
		}
		
		cacct = $('#log-cacct').val();
		var sacct = $('#log-sacct').val();
		var pwd = $('#log-pwd').val();
		var valid = $('#log-valid').val();
		var autoLogin = $('#auto-login').prop('checked');
		var params = [];
		var staffLogin = $('#staff-login').prop("checked");
		if( !cacct ){
			showMsg( '请输入我房账号' );
			$('#log-cacct').focus();
			return;
		}
		if(staffLogin){
			if(!checkLoginAcct(cacct)){
				showMsg( '请输入正确的我房账号' );
				$('#log-cacct').focus();
				return;
			}
//		}else{
//			if(Fai.isNumber(cacct)){
//				if(cacct.length != 11){
//					showMsg( '请输入正确的手机号码' );
//					$('#log-cacct').focus();
//					return;
//				}
//			}
		}
		if( staffLogin && !sacct ){
			showMsg( '请输入员工帐号' );
			$('#log-sacct').focus();
			return;
		}
		if( !pwd ){
			showMsg( '请输入密码' );
			$('#log-pwd').focus();
			return;
		}
		if( $('#log-valid-line').is(':visible') && !valid ){
			showMsg( '请输入验证码' )
			$('#log-valid').focus();
			return;
		}
		params.push( 'cacct=' + Fai.encodeUrl( cacct ) );
		params.push( '&sacct=' + Fai.encodeUrl( sacct ) );
		params.push( '&pwd=' + $.md5( pwd ) );
		params.push( '&validateCode=' + Fai.encodeUrl( valid ) );
		params.push( '&autoLogin=' + autoLogin );
		params.push( '&staffLogin=' + staffLogin );
		params.push( '&dogId=' + 0 );
//		showMsg( '正在登录...' );
		me.addClass( 'disabled' ).html('正在登录...');
		showMsg('');
		$.ajax({
			type: 'post',
			url: '/ajax/login.html?cmd=loginCorpNew&dogSrc=3',
			data: params.join(''),
			error: function(){
				me.removeClass( 'disabled' ).html('登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录');
				showMsg( '服务繁忙，请稍候重试' );
			},
			success: function(result){
				var data = $.parseJSON( result );
				if( data ){
					if( data.success ){
						// ## START success ##
						// 写cookie：登录后复制网站
						var cloneAid = 0;
						var templateId = -1;
						var cookieDomain = 'alivehouse.com';
						var fromUrl = '';
						var jump = 0;
						var days = data.days;
						//是否是内部帐号
						var isInternalCorp = data.isInternalCorp;
						// 写cookie：进网站后跳转
						var jumpSite = false;
						if( cloneAid != 0 ){
							$.cookie( '_regCloneAid', cloneAid, {domain: cookieDomain} );
							if( templateId != 0 ){
								$.cookie( '_regTemplateId', templateId, {domain: cookieDomain} );
							}
							jumpSite = true;
						}
						var jumpUrl = "";
						if( jump != 0 ){
							jumpUrl = '/jump.php?t=' + jump;
						} else if (jumpSite) {
							jumpUrl = data.siteUrl;
						} else {
							if (fromUrl) {
								jumpUrl = fromUrl;
							} else {
								//jumpUrl = fixRelativeJump() + '/portal.php';
								jumpUrl = '/portal.php';
							}
						}
						
						//用户注册7天后在所有登录入口每次登陆均判断密码是否符合安全强度要求
						//（密码由6-20个字符组成，须同时包含字母、数字和特殊符号其中两种组合），如果不符合
						if(days > 7){
							var modes = 0;
							//数字
							if ( /\d/.test(pwd) ) {
								modes++;
							}
							//字母
							if ( (/[a-z]/.test(pwd)) || (/[A-Z]/.test(pwd)) ) {
								modes++;
							}
							//特殊符号
							if ( /\W/.test(pwd) || /[_]/.test(pwd) ) {
								modes++;
							}
							if(modes < 2){
								//内部帐号
								if(isInternalCorp == 'true'){
									jumpUrl = '/portal.php#appId=setPwd';
									$.cookie( 'faiIng', '0', { expires: 1, path: '/' } );	
								}else{
									$.cookie( 'faiIng', '1', { expires: 1, path: '/' } );
								}
							}else{
								$.cookie( 'faiIng', '0', { expires: 1, path: '/' } );	
							}						
							
						}else{
							$.cookie( 'faiIng', '0', { expires: 1, path: '/' } );
						}
						$.cookie("orderTipsCookie","true",{expires: 7 ,path:'/' });
						$.cookie("couponTipsCookie","true",{expires: 7 ,path:'/' });
						$.cookie("serviceTipsCookie","true",{expires: 7 ,path:'/' });
						$.cookie('_hasClosePlatinumAd_',"false",{expires: 1, path: '/',domain:'alivehouse.com'});//互动portal index上的小广告窗口
						$.cookie('_hasClosePlatinum_',"false",{expires: 1, path: '/',domain:'alivehouse.com'});//互动portal myactive上的banner
    					$.cookie("_hasCloseFlyerAd_","false",{expires: 1, path: '/',domain:'alivehouse.com'});//hdportal 引导开通传单
    					$.cookie("_hasCloseHdGG_","false",{expires: 1, path: '/',domain:'alivehouse.com'});//flyer 引导开通传单
    					$.cookie("faiscoAd",true,{expires: 1, path: '/',domain:'alivehouse.com'});//site左下角广告是否显示
						$.cookie("_whereToPortal_","login",{expires: 1, path: '/',domain:'alivehouse.com'});//记录何处到商务平台

						top.location.href = jumpUrl;
						// ## END success ##
					}else{
						// ## START error ##
						if( data.active ){
							top.location.href = 'http://www.alivehouse.com/reAct.php?cacct=' + cacct;
							return;
						}
						if( data.msg ){
							msg = data.msg;
						}else{
							msg = '系统错误';
						}
						showMsg( msg );
						showCode( data.needValidateCode );
						me.removeClass( 'disabled' ).html('登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录');
						// ## END error ##
					}
				}else{
					showMsg( '连接超时，请重试' );
					me.removeClass( 'disabled' ).html('登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录');
				}
			}
		})
	}
	
	function reg(){
		var reg_url = 'alivehouse.com/reg.html';
		top.location.href = reg_url;
	}
	
	function showMsg(msg){
		$('#error').text( msg ).show();
		if($.trim(msg) == '' || msg == null){
			$('#error').hide();
		}
	}

	function openPassword(){
		var cacct = $('#log-cacct').val();
		window.open("http://www.alivehouse.com/passwordNew.php?cacct=" + Fai.encodeUrl(cacct), "_blank");
	}

	function checkLoginAcct(cacct){
		var checkThrough = true;
		var reg = /[\u4e00-\u9fa5]/g;
		if (reg.test(cacct)){
			checkThrough = false;
			return checkThrough;
		} else {
			reg = /^[a-zA-Z0-9]+$/g;
			if (!reg.test(cacct)){
				checkThrough = false;
				return checkThrough;
			} else {
				reg = /^[0-9]/;
				if (reg.test(cacct)){
					checkThrough = false;
					return checkThrough;
				} else {
					if(cacct.length < 4){
						checkThrough = false;
						return checkThrough;
					}
					if(cacct.length > 30){
						checkThrough = false;
						return checkThrough;
					}
				}
			}
		}
		return checkThrough;
	}

</script>

 

</body></html>