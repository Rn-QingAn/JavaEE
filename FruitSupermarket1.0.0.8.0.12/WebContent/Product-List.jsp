
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
<!--[if IE 7]>
<link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css">
<![endif]-->
<title>产品列表页</title>
<script type="text/javascript">
	function confirmDel() {
		return confirm("是否加入购物车");
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
								<li class="hd_menu_tit"><em class="login_img"></em> <a
									href="login.jsp">登录</a></li>
								<li class="hd_menu_tit" id="registerNav"><em
									class="registered_img"></em><a href="register.jsp">注册</a></li>
						</c:if>
						<c:if test="${!empty UserName}">
							<li class="hd_menu_tit"><span>欢迎,</span> <span
								style='color: #3089e7' id="loginName">${UserName}</span> &nbsp;
								<a href="tologout" onclick="out()" id="logout">退出登录</a></li>
						</c:if>
						<li class="hd_menu_tit"><em class="Collect_img"></em><a
							href="#">收藏夹</a></li>
						<li class="hd_menu_tit"><em class="cart_img"></em><a
							href="ShoppingCart">购物车</a></li>
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
				<script>
					$("#Navigation").slide({
						titCell : ".Navigation_name li"
					});
				</script>
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
			<div class="left">
				当前位置：<a href="index.jsp">首页</a>&gt;<a href="#">所有果蔬</a>
			</div>
			<!-- 搜索框 -->
			<div class="right Search">
				<form action="ByFruitName">
					<input name="fName" type="text" class="Search_Box" /> 
					<input type="submit" name="" value="" class="Search_btn" />
				</form>
			</div>
		</div>
	</div>
	<!--产品列表-->
	<div class="Inside_pages clearfix">
		<div class="margintop">
			<DIV class="left_style">
				<div class="title_img_p">
					<img src="images/p_vegetables_img.png" />
				</div>
				<div class="ranking">
					<div class="ranking_title">
						<span>销量</span>排行
					</div>
					<ul class="ranking_list">
						<li class=""><em class="ranking_label">1</em> <a href="#"
							class="img"> <img src="images/1.jpg"
								width="100px" height="100px" /></a>
							<p class="ranking_name">广西百香果新鲜水果紫皮果 </p>
							<p class="price">
								<b>￥</b>12.54
							</p>
							<p>
								<a href="#">立即查看< </a>
							</p></li>
						<li class=""><em class="ranking_label">2</em> <a href="#"
							class="img"> <img src="images/2.jpg"
								width="100px" height="100px" /></a>
							<p class="ranking_name">南部小台芒新鲜水果包邮</p>
							<p class="price">
								<b>￥</b>12.54
							</p>
							<p>
								<a href="#">立即查看< </a>
							</p></li>
						<li class=""><em class="ranking_label">3</em> <a href="#"
							class="img"> <img src="images/3.jpg"
								width="100px" height="100px" /></a>
							<p class="ranking_name">闽南贵妃荔枝新鲜水果包邮</p>
							<p class="price">
								<b>￥</b>12.54
							</p>
							<p>
								<a href="#">立即查看< </a>
							</p></li>
						<li class=""><em class="ranking_label">4</em> <a href="#"
							class="img"> <img src="images/6.jpg"
								width="100px" height="100px" /></a>
							<p class="ranking_name">农家特产胡萝卜天然无污染</p>
							<p class="price">
								<b>￥</b>12.54
							</p>
							<p>
								<a href="#">立即查看< </a>
							</p></li>
						<li class=""><em class="ranking_label">5</em> <a href="#"
							class="img"> <img src="images/5.jpg"
								width="100px" height="100px" /></a>
							<p class="ranking_name">海南西兰花天然无污染包邮</p>
							<p class="price">
								<b>￥</b>12.54
							</p>
							<p>
								<a href="#">立即查看< </a>
							</p></li>
					</ul>
				</div>
			</DIV>
			<DIV class="right_style">
				<ul class="list_style">
					<c:forEach items="${FRUITS}" var="fruits">
						<li class="clearfix">
							<div class="product_lists clearfix">
								<a href="#" class="Collect"></a> <a href="#"><img
									src="${pageContext.request.contextPath}/photo/${fruits.fImage}" /></a>
								<p class="title_p_name">${fruits.fName}</p>
								<p class="title_Profile">${fruits.introduction}</p>
								<p class="price">
									<b>￥</b>${fruits.fPrice}</p>
								<p class="btn_style">
									<a
										href="addShoppingCart?fName=${fruits.fName}&fImage=${fruits.fImage}&introduction=${fruits.introduction}&fPrice=${fruits.fPrice}"
										onclick="confirmDel()" class="buy_btn"></a><a href="#"
										class="Join_btn"></a>
								</p>
							</div>
						</li>
					</c:forEach>
				</ul>
			</DIV>
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
