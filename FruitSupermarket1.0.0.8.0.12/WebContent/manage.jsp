<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
<title>后台管理</title>
<script type="text/javascript">
	function out() {
		var result = confirm("确定要退出吗？");
		if (result) {
			location.href = "tologout";
		}

		window.open("login.jsp");
		window.close();
		window.opener = null;

	}

	function login(){
		var loginId = $("#aLoginId").val();
		var loginPwd = $("#aLoginPwd").val();
		var message=$("#message");
		if(loginId=="" ||  loginPwd==""){
			message.text("账号或密码不能为空!");
			return;
		}
		$.ajax({
			url:"${pageContext.request.contextPath}/AdminLogin",
			type:"post",
			data:JSON.stringify({aLoginId:loginId,aLoginPwd:loginPwd}),
			contentType: "application/json;charset=UTF-8",
			dataType:"text",
			success:function(data){
				if(data=='ok'){
					window.location.href ="userGoodsManage";
				}else{
					alert("账号或密码错误！");
				}
			},
			error : function() {
                	alert("不好意思，登陆异常！");
            }
		});
		message.text("");
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
						<c:if test="${empty UserName}">
							<script type="text/javascript">
								alert("请先登录！！！");
								location.href = "login.jsp";
							</script>
						</c:if>
						<c:if test="${!empty UserName}">
							<li class="hd_menu_tit"><span>欢迎,</span>
							 <span
								style='color: #3089e7' id="loginName">${UserName}</span> &nbsp; <a
								href="tologout" onclick="out()" id="logout">退出登录</a></li>
						</c:if>
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
	<!--位置-->
	<div class="Bread_crumbs">
		<div class="Inside_pages clearfix">
			<div class="right Search">
				<form>
					<input name="" type="text" class="Search_Box" /> <input name=""
						type="button" name="" class="Search_btn" />
				</form>
			</div>
		</div>
	</div>
	<!--修改密码样式-->
	<div class="Inside_pages clearfix">
		<div class="clearfix user">
			<!--左侧菜单栏样式-->
			<div class="user_left">
				<div class="user_info">
					<div class="Head_portrait">
						<img src="images/touxiang.jpg" width="80px" height="80px" />
						<!--头像区域-->
					</div>
					<div class="user_name">${UserName}</div>
				</div>
				<ul class="Section">
					<li><a href="#"><em></em><span>我的特色馆</span></a></li>
					<li><a href="#"><em></em><span>个人信息</span></a></li>
					<li><a href="#"><em></em><span>修改密码</span></a></li>
					<li><a href="#"><em></em><span>我的订单</span></a></li>
					<li><a href="#"><em></em><span>我的评论</span></a></li>
					<li><a href="#"><em></em><span>我的积分</span></a></li>
					<li><a href="#"><em></em><span>我的收藏</span></a></li>
					<li><a href="#"><em></em><span>收货地址管理</span></a></li>
				</ul>
			</div>
			<!--右侧样式-->
			<div class="user_right">
				<div class="user_Borders">
					<div class="title_name">
						<span class="name">后台管理</span>
					</div>
					<!--添加水果样式-->
					<div class="about_user_info">
						<form>
							<div class="user_layout">
								<ul>
									<li><label class="user_title_name">账号:</label><input
									id="aLoginId"	name="aLoginId" type="text" class="add_text" required="required"
										 /></li>
									<li><label class="user_title_name">密码:</label><input
									id="aLoginPwd"	name="aLoginPwd" type="password" class="add_text" required="required"
										/></li>
										<span id="message" style="color: red;padding-left: 85px; margin-top: -15px;margin-bottom:10px; float: left"></span>
								</ul>
								<div class="operating_btn">
									<input onclick="login()"  type="button" value="登  陆" class="submit—btn" />
								</div>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>