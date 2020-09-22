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
<!--[if IE 7]>
<link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css">
<![endif]-->
<title>果蔬商场首页</title>

<script language="javascript">

function out(){
	var result = confirm("确定要退出吗？");
	if(result){
		location.href="login.jsp";
	}
	   
	window.open("login.jsp");
	window.close();
    window.opener = null;
    
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
						<ul>
							<c:if test="${empty UserName}">
								<li class="hd_menu_tit"><em class="login_img"></em> <a
									href="login.jsp">登录</a></li>
								<li class="hd_menu_tit" id="registerNav"><em
									class="registered_img"></em><a href="register.jsp">注册</a></li>
							</c:if>
							<c:if test="${!empty UserName}">
								<li class="hd_menu_tit"><span>欢迎,</span> <span
									style='color: #3089e7' id="loginName">
									${UserName}
									</span> &nbsp; <a
									href="tologout" onclick="out()">退出登录</a></li>
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
	<!--幻灯片样式-->
	<div class="AD_bg_img">
		<!--幻灯片样式-->
		<div class="slider">
			<div id="slideBox" class="slideBox">
				<div class="hd">
					<ul></ul>
				</div>
				<div class="bd">
					<ul>
						<li><a href="#" target="_blank"><img
								src="images/AD_img.png" /></a></li>
						<li><a href="#" target="_blank"><img
								src="images/AD_img.png" /></a></li>
					</ul>
				</div>
				<a class="prev" href="javascript:void(0)"></a> <a class="next"
					href="javascript:void(0)"></a>
			</div>
			<script type="text/javascript">
				jQuery(".slideBox").slide({
					titCell : ".hd ul",
					mainCell : ".bd ul",
					autoPlay : true,
					autoPage : true,
					interTime : 9000
				});
			</script>
		</div>
	</div>
	<!--手风琴效果-->
	<div class="recommend_style ">
		<em class="ye_img"></em>
		<div class="mian">
			<div class="title_name">
				<a href="#" class="link_name">最新促销</a>
			</div>
			<div class="carouFredSel">
				<script type="text/javascript" src="js/slider.js"></script>
				<div id="center">
					<div id="slider">
						<div class="slide">
							<a href="#" title="酒店会所设计" target="_blank"><img class="diapo"
								border="0" src="images/pic1.jpg"
								style="opacity: 1; visibility: visible;"></a>
							<div class="backgroundText_name">
								<div class="product_info">
									<h2>绿色有机莲花白</h2>
									<h5>产地：吐鲁番</h5>
									<p>
										原价：<b>￥653</b>
									</p>
								</div>
								<div class="product_price">
									<a href="#" class="price_btn">
										<p class="left_title_p"></p>
										<p class="zj_bf">
											<em>￥</em>29.90
										</p>
										<p class="right_buf"></p>
									</a>
								</div>
							</div>
							<div class="text"></div>
						</div>
						<div class="slide">
							<a href="#" title="办公空间设计" target="_blank"><img class="diapo"
								border="0" src="images/pic2.jpg"
								style="opacity: 0.7; visibility: visible;"></a>
							<div class="backgroundText_name">
								<div class="product_info">
									<h2>绿色有机莲花白</h2>
									<h5>产地：吐鲁番</h5>
									<p>
										原价：<b>￥653</b>
									</p>
								</div>
								<div class="product_price">
									<a href="#" class="price_btn">
										<p class="left_title_p"></p>
										<p class="zj_bf">
											<em>￥</em>29.90
										</p>
										<p class="right_buf"></p>
									</a>
								</div>
							</div>
							<div class="text"></div>
						</div>
						<div class="slide">
							<a href="#" title="地产样板房设计" target="_blank"><img
								class="diapo" border="0" src="images/pic3.jpg"
								style="opacity: 0.7; visibility: visible;"></a>
							<div class="backgroundText_name">
								<div class="product_info">
									<h2>绿色有机莲花白</h2>
									<h5>产地：吐鲁番</h5>
									<p>
										原价：<b>￥653</b>
									</p>
								</div>
								<div class="product_price">
									<a href="#" class="price_btn">
										<p class="left_title_p"></p>
										<p class="zj_bf">
											<em>￥</em>29.90
										</p>
										<p class="right_buf"></p>
									</a>
								</div>
							</div>
							<div class="text"></div>
						</div>
						<div class="slide">
							<a href="#" title="豪宅别墅设计" target="_blank"><img class="diapo"
								border="0" src="images/pic4.jpg"
								style="opacity: 0.7; visibility: visible;"></a>
							<div class="backgroundText_name">
								<div class="product_info">
									<h2>绿色有机莲花白</h2>
									<h5>产地：吐鲁番</h5>
									<p>
										原价：<b>￥653</b>
									</p>
								</div>
								<div class="product_price">
									<a href="#" class="price_btn">
										<p class="left_title_p"></p>
										<p class="zj_bf">
											<em>￥</em>29.90
										</p>
										<p class="right_buf"></p>
									</a>
								</div>
							</div>
							<div class="text"></div>
						</div>
					</div>
				</div>
				<script type="text/javascript">
					/* ==== start script ==== */
					slider.init();
				</script>
			</div>
		</div>
		<em class="ye_img1"></em>
	</div>
	<!--最新上架产品样式-->
	<div class="new_products clearfix">
		<div class="mian">
			<div id="slideBox_list" class="slideBox_list">
				<div class="hd">
					<div class="title_name"></div>
					<div class="list_title">
						<ul>
							<li><h3>01</h3>
								<a href="#">水果</a></li>
							<li><h3>02</h3>
								<a href="#">蔬菜</a></li>
							<li><h3>03</h3>
								<a href="#">干果</a></li>
							<li><h3>04</h3>
								<a href="#">其他</a></li>
						</ul>
					</div>
				</div>

				<div class="bd">
					<div class="fixed_title_name">
						<span>新鲜</span>
					</div>
					<ul class="">
						<li class="advertising">
							<div class="AD1">
								<a href="#"><img src="images/product_AD_10.png" /></a>
							</div>
							<div class="AD2">
								<a href="#"><img src="images/product_AD_14.png" /></a><a
									href="#"><img src="images/product_AD_07.png" /></a>
							</div>
							<div class="AD3">
								<a href="#"><img src="images/product_AD_11.png" /></a>
							</div>
						</li>
						<li class="advertising">
							<div class="AD1">
								<a href="#"><img src="images/product_AD_10.png" /></a>
							</div>
							<div class="AD2">
								<a href="#"><img src="images/product_AD_07.png" /></a><a
									href="#"><img src="images/product_AD_14.png" /></a>
							</div>
							<div class="AD3">
								<a href="#"><img src="images/product_AD_11.png" /></a>
							</div>
						</li>
						<li class="advertising">
							<div class="AD1">
								<a href="#"><img src="images/product_AD_10.png" /></a>
							</div>
							<div class="AD2">
								<a href="#"><img src="images/product_AD_14.png" /></a><a
									href="#"><img src="images/product_AD_07.png" /></a>
							</div>
							<div class="AD3">
								<a href="#"><img src="images/product_AD_11.png" /></a>
							</div>
						</li>
						<li class="advertising">
							<div class="AD1">
								<a href="#"><img src="images/product_AD_10.png" /></a>
							</div>
							<div class="AD2">
								<a href="#"><img src="images/product_AD_14.png" /></a><a
									href="#"><img src="images/product_AD_07.png" /></a>
							</div>
							<div class="AD3">
								<a href="#"><img src="images/product_AD_11.png" /></a>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<script type="text/javascript">
				jQuery(".slideBox_list").slide({
					mainCell : ".bd ul"
				});
			</script>
		</div>
	</div>
	<!--产品推荐样式-->
	<div class="p_Slideshow">
		<div class="mian">
			<div class="title_style">
				<div class="title_img"></div>
				<div class="title_link_name">
					<a href="#">火龙果</a> <a href="#">香蕉</a><a href="#">红心蜜柚</a><a
						href="#">柠檬</a><a href="#">火龙果</a><a href="#">猕猴桃</a><a href="#">红心蜜
					</a><a href="#">柠檬火龙果</a><a href="#">西瓜 </a><a href="#">红心蜜柚</a>
				</div>
			</div>
		</div>
		<!--幻灯片样式-->
		<div id="main">
			<div id="index_b_hero">
				<div class="title_img"></div>
				<div class="hero-wrap">
					<ul class="heros clearfix">
						<li class="hero"><a href="#" target="_blank" title="第一张图的说明">
								<img src="images/pic1.jpg" class="thumb" alt="" />
						</a>
							<div class="p_title_name">
								<div class="p_recommend_info">
									<h3>南岭荔枝水嫩香甜礼盒装</h3>
									<p>
										新鲜包邮价：￥<b class="p_recommend_price">999</b>元
									</p>
								</div>
							</div></li>
						<li class="hero"><a href="#" target="_blank" title="第二张图的说明">
								<img src="images/pic2.jpg" class="thumb" alt="" />
						</a>
							<div class="p_title_name">
								<div class="p_recommend_info">
									<h3>南岭荔枝水嫩香甜礼盒装</h3>
									<p>
										新鲜包邮价：￥<b class="p_recommend_price">999</b>元
									</p>
								</div>
							</div></li>
						<li class="hero"><a href="#" target="_blank" title="第三张图的说明">
								<img src="images/pic3.jpg" class="thumb" alt="" />
						</a>
							<div class="p_title_name">
								<div class="p_recommend_info">
									<h3>南岭荔枝水嫩香甜礼盒装</h3>
									<p>
										新鲜包邮价：￥<b class="p_recommend_price">999</b>元
									</p>
								</div>
							</div></li>
						<li class="hero"><a href="#" target="_blank" title="第4张图的说明">
								<img src="images/pic4.jpg" class="thumb" alt="" />
						</a>
							<div class="p_title_name">
								<div class="p_recommend_info">
									<h3>南岭荔枝水嫩香甜礼盒装</h3>
									<p>
										新鲜包邮价：￥<b class="p_recommend_price">999</b>元
									</p>
								</div>
							</div></li>
					</ul>
				</div>
				<div class="helper">
					<div class="mask-left"></div>
					<div class="mask-right"></div>
					<a href="javascript:void(0)" class="prev icon-arrow-a-left"></a> <a
						href="#javascript:void(0)" class="next icon-arrow-a-right"></a>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			$.foucs({
				direction : 'right'
			});
		</script>
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
