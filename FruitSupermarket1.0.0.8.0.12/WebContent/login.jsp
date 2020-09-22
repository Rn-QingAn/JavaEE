<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.1.8.2.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script type="text/javascript" src="js/slide.js"></script>
<script src="js/common_js.js" type="text/javascript"></script>
<script src="js/jquery.foucs.js" type="text/javascript"></script>
<script src="http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=402727"></script>
<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js">
	</script>
<title>登陆</title>
<script type="text/javascript">
	function login(){
		var loginId = $("#loginId").val();
		var loginPwd = $("#loginPwd").val();
		if(loginId=="" ||  loginPwd==""){
			var ui = document.getElementById("rememberMe"); 
			ui.style.display="none";
			$("#message").text("账号或密码不能为空!");
			return;
		}
		
		$.ajax({
			url:"${pageContext.request.contextPath}/login",
			type:"post",
			data:JSON.stringify({loginId:loginId,loginPwd:loginPwd}),
			contentType: "application/json;charset=UTF-8",
			dataType:"text",
			success:function(data){
				if(data=='ok'){
					
					window.location.href ="index";
				}else{
					alert("账号或密码错误！");
				}
			},error : 
            	function() {
                alert("不好意思，服务器跑到火星去了，登陆异常！");
            }
		});
		return true;
	}
	
	function check(){
		var loginId = $("#loginId").val();
		var loginPwd = $("#loginPwd").val();
		if(loginId=="" ||  loginPwd==""){
			var ui = document.getElementById("rememberMe"); 
			ui.style.display="none";
			$("#message").text("账号或密码不能为空!");
			return false;
		}
		return true;
	}
	
</script>

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
   <li  class="hd_menu_tit"><em class="login_img"></em><a href="#">登录</a></li>
   <li  class="hd_menu_tit"><em  class="registered_img"></em><a href="register.jsp">注册</a></li>
   <li  class="hd_menu_tit"><em class="Collect_img"></em><a href="#">收藏夹</a></li>
   <li  class="hd_menu_tit"><em class="cart_img"></em><a href="#">购物车</a></li>
   <li  class="hd_menu_tit list_name" data-addclass="hd_menu_hover"><a href="#">网站导航</a><em class="navigation_img"></em>
     
    <div class="hd_menu_list">
     <span class="wire"></span>
		   <ul>
		    <li><a href="#">常见问题</a></li>
			<li><a href="#">在线退换货</a></li>
		    <li><a href="#">在线投诉</a></li>
			<li><a href="#">配送范围</a></li>
		   </ul>
		</div>	
   </li>
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
 <script>$("#Navigation").slide({titCell:".Navigation_name li"});</script>
</div>
</div>
<em class="right_img"></em>
</div>
<!---->
<div><a href="#"><img src="images/AD_page_img_02.png" width="100%"/></a></div>
<div class="Inside_pages clearfix">
<!--登录样式-->
  <div class="login">
       <div class="style_login clearfix">
       <form  method="post" onsubmit="return check()">
          <div class="layout">
            <div class="login_title">登录</div>
            <div class="item item-fore1"><label for="loginname" class="login-label name-label"></label><input name="loginId" id="loginId" type="text" class="text" placeholder="请输入用户"></div>
            <div class="item item-fore2"><label for="nloginpwd" class="login-label pwd-label"></label><input name="loginPwd" id="loginPwd" type="password" class="text" placeholder="用户密码"> </div>
            <div class="auto-login"><label class="auto-label" ><input type="checkbox" id="rememberMe" checked><span id="message">记住账号和密码</span></label></div>
            
            <div class="login-btn"><input type="button" onclick="login()" class="btn_login"  value="登&nbsp;&nbsp;&nbsp;&nbsp;录"></div>
            <div class="login_link"><a href="register.jsp">免费注册</a> | <a href="#">忘记密码</a></div>
          </div>
          </form>
       </div>
       <div class="login_img"><img src="images/login_img_03.png" /></div>
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
     <img src="images/erweim.png"  width="80px" height="80px"/>
     <img src="images/erweim.png"  width="80px" height="80px"/>
     <p>
    </div>
    <div class="helper_right clearfix">
     <dl>
      <dt><em class="guide"></em>新手指南</dt>
      <dd><a href="#">注册新用户</a></dd>
      <dd><a href="#">实名认证</a></dd>
      <dd><a href="#">找回密码</a></dd>
     </dl>
     <dl>
      <dt ><em class="h_about"></em>关于我们</dt>
      <dd><a href="#">关于我们</a></dd>
      <dd><a href="#">政策服务</a></dd>
      <dd><a href="#">常见问题</a></dd>
     </dl>
     <dl>
      <dt ><em class="h_conact"></em>联系我们</dt>
      <dd><a href="#">联系我们</a></dd>
      <dd><a href="#">在线客服</a></dd>
     </dl>
    </div>
  </div>
 </div> 
		<div class=" Copyright ">@2020 南部小二所有</div>
</div>
</body>
</html>
