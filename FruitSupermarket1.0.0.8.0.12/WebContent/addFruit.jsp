<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>

<script type="text/javascript" src="/js/jquery-1.9.1.min.js"></script>
<title>货物上架</title>
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
	
	function uptade() {
		var result = confirm("确定要修改吗？");
		if (result) {
			location.href = "login.jsp";
		}
		
	function $(elementId){
	  return document.getElementById(elementId);
	}
	function FruitName(){
		var name =document.getElementById('fName1').value;
		alert(name)
   	 	var reg = /^[\u4E00-\u9FA5]{2,6}$/;//Unicode编码中的汉字范围
   			if(!reg.test(name)){
   				alert("请填写正确的信息")
   			}
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
						<span class="name">货物上架</span>
					</div>
					<!--添加水果样式-->
					<div class="about_user_info">
						<form method="post" action="upload" name="form" enctype="multipart/form-data">
							<div class="user_layout">
								<ul>
									<li><label class="user_title_name">效果图:</label> <input
										name="fImage" type="file" multiple class="file" id="filed"
										data-upload-url="${pageContext.request.contextPath}/upload"
										required="required" /></li>
									<li><label class="user_title_name">水果名称:</label><input
									id="fName1"	name="fName" type="text" class="add_text"  onblur="FruitName()" required="required" /></li>
									<li><label class="user_title_name">水果类型:</label><input
									id="fType"	name="fType" type="text" class="add_text" required="required" /></li>
									<li><label class="user_title_name" >水果产地:</label><input
									id="fPlace"	name="fPlace" type="text" class="add_text" required="required"  />
									</li>
									<li><label class="user_title_name">简介:</label><input
									id="introduction"	name="introduction" type="text" class="add_text" required="required"
										onblur="checkRePwd()" /></li>
									<li><label class="user_title_name">价格:</label><input
									id="fPrice"	name="fPrice" type="text" class="add_text" required="required"
										onblur="checkRePwd()" /></li>
									<li><label class="user_title_name">数量:</label><input
									id="fNumber"	name="fNumber" type="text" class="add_text" required="required"
										onblur="checkRePwd()" /></li>
								</ul>
								<div class="operating_btn">
									<input name="name" type="submit" value="确认" class="submit—btn" />
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