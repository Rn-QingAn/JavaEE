<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<title>用户中心</title>
</head>
<script type="text/javascript">
	function out() {
		var result = confirm("确定要退出吗？");
		if (result) {
			location.href = "login.jsp";
		}
		window.open("login.jsp");
		window.close();
		window.opener = null;
	}
</script>
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
							<li class="hd_menu_tit"><span>欢迎,</span> <span
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
	<!--用户中心-->
	<div class="Inside_pages clearfix">
		<div class="clearfix user">
			<div class="user_left">
				<div class="user_info">
					<div class="Head_portrait">
						<img src="images/touxiang.jpg" width="80px" height="80px" />
						<!--头像区域-->
					</div>
					<div class="user_name" style='color: #3089e7'>${UserName}</div>
				</div>
				<ul class="Section">
					<li><a href="#"><em></em><span>我的特色馆</span></a></li>
					<li><a href="#"><em></em><span>个人信息</span></a></li>
					<li><a href="User_Password.jsp"><em></em><span>修改密码</span></a></li>
					<li><a href="userOrderManage"><em></em><span>订单信息</span></a></li>
					<li><a href='manage'><em></em><span>后台管理</span></a></li>
					<li><a href="#"><em></em><span>我的积分</span></a></li>
					<li><a href="#"><em></em><span>我的收藏</span></a></li>
					<li><a href="#"><em></em><span>收货地址管理</span></a></li>
				</ul>
			</div>
			<!--右侧内容样式-->
   <div class="user_right">
    <div class="user_Borders clearfix">
    <div class="title_name">
        <span class="name">用户收藏</span>
       </div>
   <!--收藏样式-->
    <div class="Collect">
      <ul class="Collect_list">
       <li>
       <div class="Collect_pro_name">
         <a href="#" class="delete_Collect"></a>
        <p class="img center"><a href="#"><img src="images/mg.jpg" /></a></p>
        <p><a href="#">天然绿色多汁香甜无污染芒果</a></p>
        <p class="Collect_Standard">礼盒装</p>
        <p class="Collect_price">￥200</p>
        </div>
       </li>
        <li>
       <div class="Collect_pro_name">
         <a href="#" class="delete_Collect"></a>
        <p class="img center"><a href="#"><img src="images/1.jpg" /></a></p>
        <p><a href="#">天然绿色多汁香甜无污染百香果</a></p>
        <p class="Collect_Standard">礼盒装</p>
        <p class="Collect_price">￥134</p>
        </div>
       </li>
        <li>
       <div class="Collect_pro_name">
         <a href="#" class="delete_Collect"></a>
        <p class="img center"><a href="#"><img src="images/3.jpg" /></a></p>
        <p><a href="#">天然绿色多汁香甜无污染荔枝</a></p>
        <p class="Collect_Standard">礼盒装</p>
        <p class="Collect_price">￥298</p>
        </div>
       </li>
        <li>
       <div class="Collect_pro_name">
         <a href="#" class="delete_Collect"></a>
        <p class="img center"><a href="#"><img src="images/cm.jpg" /></a></p>
        <p><a href="#">天然绿色多汁香甜无污染草莓</a></p>
        <p class="Collect_Standard">礼盒装</p>
        <p class="Collect_price">￥324</p>
        </div>
       </li>
        <li>
       <div class="Collect_pro_name">
         <a href="#" class="delete_Collect"></a>
        <p class="img center"><a href="#"><img src="images/6.jpg" /></a></p>
        <p><a href="#">天然绿色多汁香甜无污染胡萝卜</a></p>
        <p class="Collect_Standard">礼盒装</p>
        <p class="Collect_price">￥56</p>
        </div>
       </li>
        <li>
       <div class="Collect_pro_name">
         <a href="#" class="delete_Collect"></a>
        <p class="img center"><a href="#"><img src="images/ym.jpg" /></a></p>
        <p><a href="#">天然绿色多汁香甜无污染甜玉米</a></p>
        <p class="Collect_Standard">礼盒装</p>
        <p class="Collect_price">￥167</p>
        </div>
       </li>
        <li>
       <div class="Collect_pro_name">
         <a href="#" class="delete_Collect"></a>
        <p class="img center"><a href="#"><img src="images/zs.jpg" /></a></p>
        <p><a href="#">天然绿色多汁香甜无污染糯紫薯</a></p>
        <p class="Collect_Standard">礼盒装</p>
        <p class="Collect_price">￥198</p>
        </div>
       </li>
        <li>
       <div class="Collect_pro_name">
         <a href="#" class="delete_Collect"></a>
        <p class="img center"><a href="#"><img src="images/qj.jpg" /></a></p>
        <p><a href="#">天然绿色多汁香甜无污染小青椒</a></p>
        <p class="Collect_Standard">礼盒装</p>
        <p class="Collect_price">￥98</p>
        </div>
       </li>
      </ul>
      <!--分页-->
      <div class="pages_Collect clearfix">
       <a href="#" class="on">《</a>
       <a href="#">1</a>
       <a href="#">2</a>
       <a href="#">3</a>
       <a href="#">4</a>
       <a href="#">》</a>
      </div>
    </div>
    </div>
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
