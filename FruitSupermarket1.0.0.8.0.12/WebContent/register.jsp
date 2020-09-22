<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js">
	</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />

<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="js/jquery.foucs.js" type="text/javascript"></script>
<script src="http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=402727"></script>

<style>
.reg {
	margin: 23%;
}
</style>

<script type="text/javascript">
		
		function register(){
			var phone = $("#phone").val();
			var loginId = $("#user").val();
			var name = $("#name").val();
			var loginPwd = $("#loginPwd").val();
			var reloginPwd = $("#reloginPwd").val();
			
			var regMobile = /^1\d{10}$/;
			var reg = /^[a-zA-Z][a-zA-Z0-9]{3,10}$/;
			var regName = /^[\u4E00-\u9FA5]{2,6}$/;//Unicode编码中的汉字范围
			var regPwd = /^[a-zA-Z0-9]{6,20}$/;
			
			if(phone=="" || (regMobile.test(phone) == false)){
				alert("手机号码验证不正确");
				return;
			}
			if(loginId=="" || (reg.test(loginId) == false)){
				alert("用户验证不正确");
				return;
			}
			if(loginPwd=="" || ( regPwd.test(loginPwd) == false)){
				alert("密码输入不正确");
				return;
			}
			if(name==""  || (regName.test(name) == false) ){
				alert("姓名输入错误!");
				return;
			}
			if(reloginPwd!=loginPwd){
				alert("密码不一致！");
				return;
			}
			
			$.ajax({
					url:"${pageContext.request.contextPath}/register",
					type:"post",
					data:JSON.stringify({
						phone:phone,
						loginId:loginId,
						loginPwd:loginPwd,
						name:name
					}),
					async:false,
					contentType: "application/json;charset=UTF-8",
					dataType:"text",
					success:function(data){
						if(data=='ok'){
							alert("注册成功！");
							window.location.href ="login";
						}else{
							alert("注册失败");
						}
					},
					error : function() {
		                alert("不好意思，服务器异常！");
		            }
				});
			return true;	
		}
		/*验证手机号码*/
		function checkMobile() {
			var mobile = $("#phone").val();
			var mobileId = $("#phoneTxt");
			var regMobile = /^1\d{10}$/;
			if (regMobile.test(mobile) == false) {
				mobileId.text("*手机号码不正确，请重新输入*");
				
				return false;
			}
			mobileId.text("");
			
			return true;
		}
		/*用户名验证*/
		function checkUser() {
			var user = $("#user").val();
			var userId = $("#userTxt");
			userId.innerHTML = "";
			var reg = /^[a-zA-Z][a-zA-Z0-9]{3,10}$/;
			if (reg.test(user) == false) {
				userId.text("*用户名不正确*");
				return false;
			} else {
				$.ajax({
					url:"${pageContext.request.contextPath}/checkuser",
					type:"post",
					data:JSON.stringify({loginId:user}),
					contentType: "application/json;charset=UTF-8",
					dataType:"text",
					success:function(data){
						if(data !='ok'){
							userId.text("*用户名已被注册*").css("color","red");
							$("#registerBtn").setAttribute("disabled", true);//设置不可点击
						
						}else{
							userId.text("*用户名可以使用*").css("color","green");
							$("#registerBtn").removeAttribute("disabled");//去掉不可点击
						}
					}
				});
			}
				return true;
		}
		/*真实姓名验证*/
		function checkName() {
			var user = $("#name").val();
			var userId = $("#nameTxt");
			userId.innerHTML = "";
			var reg = /^[\u4E00-\u9FA5]{2,6}$/;//Unicode编码中的汉字范围
			if (reg.test(user) == false) {
				userId.text("*真实姓名不正确，应为2-6个汉字*");
				
				return false;
			}
			userId.text("");
			return true;
		}
		/*密码验证*/
		function checkPwd() {
			var pwd = $("#loginPwd").val();
			var pwdId = $("#loginPwdTxt");
			pwdId.innerHTML = "";
			var reg = /^[a-zA-Z0-9]{6,20}$/;
			if (reg.test(pwd) == false) {
				pwdId.text("*密码长度在6-20之间*");
				return false;
			}
			pwdId.text("");
			return true;
		}
		function checkRepwd() {
			var repwd = $("#reloginPwd").val();
			var pwd = $("#loginPwd").val();
			var repwdId = $("#reloginPwdTxt");
			repwdId.innerHTML = "";
			if (pwd != repwd || repwd=="") {
				repwdId.text ("*两次输入的密码不一致*");
				return false;
			}
			repwdId.text("");
			return true;
		}
		
		
		
	</script>

<title>用户注册</title>
</head>

<body>
	
	<!--顶部样式-->
	<div class="top_header">
		<em class="left_img"></em>
		<div class="header clearfix" id="header">
			<a href="#" class="logo_img"><img src="images/logo.png" /></a>
			<div class="header_Section">
				<div class="shortcut">
					<ul>
						<li class="hd_menu_tit"><em class="login_img"></em><a
							href="login.jsp">登录</a></li>
						<li class="hd_menu_tit"><em class="registered_img"></em><a
							href="#">注册</a></li>
						<li class="hd_menu_tit"><em class="Collect_img"></em><a
							href="#">收藏夹</a></li>
						<li class="hd_menu_tit"><em class="cart_img"></em><a href="#">购物车</a></li>
						<li class="hd_menu_tit list_name" data-addclass="hd_menu_hover"><a
							href="#">网站导航</a><em class="navigation_img"></em>

							<div class="hd_menu_list">
								<span class="wire"></span>
								<ul>
									<li><a href="#">常见问题</a></li>
									<li><a href="#">在线退换货</a></li>
									<li><a href="#">在线投诉</a></li>
									<li><a href="#">配送范围</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
				<div class="nav" id="Navigation">
					<ul class="Navigation_name">
						<li class=""><a href="index">首页</a></li>
						<li class=""><a href="showList">所有果蔬</a></li>
						<li class=""><a href="Group_buy">活动专区</a></li>
						<li class=""><a href="Products">水果馆</a></li>
						<li class=""><a href="Vegetables">素菜馆</a></li>
						<li class=""><a href="user">用户中心</a></li>
						<li class=""><a href="contact">联系我们</a></li>
					</ul>
				</div>
			</div>
		</div>
		<em class="right_img"></em>
	</div>
	<!---->
	<div>
		<a href="#"><img src="images/AD_page_img_02.png" width="100%" /></a>
	</div>
	<!--注册样式-->
	<div class="Inside_pages clearfix">
		<div class="register">
			<div class="register_style">
				<div class="u_register">
				<!--action="register" method="post"  onsubmit="return register()"  -->
					<form id="formid">
						<ul>
							<li><label class="name">手机号码:</label><input name="phone" required
								onblur="checkMobile()" type="text" placeholder="请输入11位手机号码"
								class="text_Add" id="phone" /> <span id="phoneTxt"
								style="color: red; padding-left: 85px; margin-top: 5px; float: left"></span>
							</li>

							<li><label class="name">真实姓名:</label><input name="name" required
								onblur="checkName()" type="text" class="text_Add" id="name"
								placeholder="请填写真实姓名(2-6个汉字)" /> <span id="nameTxt"
								style="color: red; padding-left: 85px; margin-top: 5px; float: left"></span>
							</li>

							<li><label class="name">用户名称:</label><input name="loginId" required
								onblur="checkUser()" type="text" class="text_Add" id="user"
								placeholder="由4-10个字符，由字母、数字组合" /> <span id="userTxt"
								style="color: red; padding-left: 85px; margin-top: 5px; float: left"></span>
							</li>
							<li><label class="name">设置密码:</label><input name="loginPwd" required
								onblur="checkPwd()" type="password" class="text_Add"
								id="loginPwd" placeholder="4-20个字符，由字母、数字和符号的两种以上组合" /> <span
								id="loginPwdTxt"
								style="color: red; padding-left: 85px; margin-top: 5px; float: left"></span>
							</li>
							<li><label class="name">确认密码:</label><input required
								name="reloginPwd" onblur="checkRepwd()" type="password" 
								class="text_Add" id="reloginPwd" placeholder="请在次输入密码" /> <span
								id="reloginPwdTxt"
								style="color: red; padding-left: 85px; margin-top: 5px; float: left"></span>
							</li>
						</ul>
						<div class="auto-register">
							<label class="auto-label"><input type="checkbox"
								id="rememberMe" checked><span><a href="#">《国际商贸城网站注册协议》</a></span></label>
						</div>
						<div class="register-btn">
							<input onclick="register()" id="registerBtn" type="button" class="btn_register" 	value="注&nbsp;&nbsp;&nbsp;&nbsp;册" >
						</div>

					</form>
				</div>
			</div>
			<div class="register_img">
				<img src="images/Register_img.png" />
			</div>
		</div>
	</div>
	<!--底部样式-->
	<div class="footer">
		<div class="footer_img_bg"></div>
		<div class="footerbox">
			<div class="footer_info">
				<div class="footer_left">
					<a href="#"><img src="images/logo.png" /></a>
					<p class="erwm">
						<img src="images/erweim.png" width="80px" height="80px" /> <img
							src="images/erweim.png" width="80px" height="80px" />
						<p>
				</div>
				<div class="helper_right clearfix">
					<dl>
						<dt>
							<em class="guide"></em>新手指南
						</dt>
						<dd>
							<a href="#">注册新用户</a>
						</dd>
						<dd>
							<a href="#">实名认证</a>
						</dd>
						<dd>
							<a href="#">找回密码</a>
						</dd>
					</dl>
					<dl>
						<dt>
							<em class="h_about"></em>关于我们
						</dt>
						<dd>
							<a href="#">关于我们</a>
						</dd>
						<dd>
							<a href="#">政策服务</a>
						</dd>
						<dd>
							<a href="#">常见问题</a>
						</dd>
					</dl>
					<dl>
						<dt>
							<em class="h_conact"></em>联系我们
						</dt>
						<dd>
							<a href="#">联系我们</a>
						</dd>
						<dd>
							<a href="#">在线客服</a>
						</dd>
					</dl>
				</div>
			</div>
		</div>
		<div class=" Copyright ">@2020 南部小二所有</div>
	</div>
</body>
</html>
