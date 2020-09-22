<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<title>产品</title>
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
								style='color: #3089e7' >${UserName}</span> &nbsp; <a
								href="tologout" onclick="out()" >退出登录</a></li>
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
	<div class="AD_img">
		<a href="#"><img src="images/AD_page_img_02.png" width="100%" /></a>
	</div>
	<!--位置-->
	<div class="Bread_crumbs">
		<div class="Inside_pages clearfix">
			<div class="left">
				当前位置：<a href="#">首页</a>&gt;<a href="#">水果馆</a>
			</div>
			<div class="right Search">
				<form>
					<input name="" type="text" class="Search_Box" /> <input name=""
						type="button" name="" class="Search_btn" />
				</form>
			</div>
		</div>
	</div>



	<!--产品-->
	<div class="Inside_pages">
		<!--水果馆-->
		<div class="fruits_Forum">
			<div class="title_style">
				<div class="title_name">
					<a href="#"><img src="images/sg_pro_img_12.png" /></a>
				</div>
				<div class="title_info">
					<p class="title_x_name">[健康水果小知识]</p>
					<p class="x_info">水果是指多汁且大多数有甜味可直接生吃的植物果实，不但含有丰富的营养且能够帮助消化。水果是对部分可以食用的植物果实和种子的统称。水果有降血压、减缓衰老、减肥瘦身、皮肤保养、
						明目、抗癌、降低胆固醇补充维生素等保健作用。</p>
				</div>
				<div class="title_img">
					<img src="images/sg_pro_img_17.png" />
				</div>
			</div>
			<div class="list_style">
				<ul class="clearfix">
					<li class="clearfix">
						<div class="product_lists clearfix">
							<a href="#" class="Collect"></a> <a href="#"><img
								src="images/product_img_17.png" /></a>
							<p class="title_p_name">浦江多汁红提</p>
							<p class="title_Profile">绿色有机天然无污染</p>
							&nbsp; &nbsp; &nbsp; &nbsp;

							红提，又名晚红、红地球、红提子，属欧亚种，是由美国加利福尼亚州立大学于70年代用(皇帝×L12-80)×S45-48杂交育成。果穗大，整齐度好，平均单粒重10
							克，最大单粒重13克，红色或紫红色。
							<p>
								<br>
						</div>
					</li>
					<li class="clearfix">
						<div class="product_lists clearfix">
							<a href="#"><img src="images/1.jpg" /></a>
							<p class="title_p_name">南美百香果</p>
							<p class="title_Profile">绿色有机天然无污染</p>
							&nbsp; &nbsp; &nbsp; &nbsp; 百香果（学名：Passiflora edulis
							Sims）西番莲科西番莲属的草质藤本植物，长约6米;茎具细条纹，无毛;花瓣5枚，与萼片等长；基部淡绿色，中部紫色，顶部白色，浆果卵球形，直径3~4厘米，无毛，熟时紫色;种子多数，卵形。花期6月，果期11月。
						</div>
					</li>
					<li class="clearfix">
						<div class="product_lists clearfix">
							<a href="#"><img src="images/2.jpg" /></a>
							<p class="title_p_name">海南特产芒果</p>
							<p class="title_Profile">绿色有机天然无污染</p>
							&nbsp; &nbsp; &nbsp; &nbsp; 芒果是杧果 (中国植物志)的通俗名(拉丁学名:Mangifera
							indica
							L.)，芒果是一种原产印度的漆树科常绿大乔木，叶革质，互生;花小，杂性，黄色或淡黄色，成顶生的圆锥花序。核果大，压扁，长5-10厘米，宽3-4.5厘米，成熟时黄色，味甜，果核坚硬。
						</div>
					</li>
					<li class="clearfix">
						<div class="product_lists clearfix">
							<a href="#"><img src="images/3.jpg" /></a>
							<p class="title_p_name">岭南多汁荔枝</p>
							<p class="title_Profile">绿色有机天然无污染</p>
							&nbsp; &nbsp; &nbsp; &nbsp; 荔枝（学名：Litchi chinensis
							Sonn.）无患子科，荔枝属常绿乔木，高约10米。果皮有鳞斑状突起，鲜红，紫红。成熟时至鲜红色；种子全部被肉质假种皮包裹。花期春季，果期夏季。果肉产鲜时半透明凝脂状，味香美，但不耐储藏。
						</div>
					</li>
					<li class="clearfix">
						<div class="product_lists clearfix">
							<a href="#"><img src="images/4.png" /></a>
							<p class="title_p_name">陕西奇异果</p>
							<p class="title_Profile">绿色有机天然无污染</p>
							&nbsp; &nbsp; &nbsp; &nbsp; 猕猴桃（Actinidia chinensis
							Planch），也称狐狸桃、藤梨、羊桃、木子、毛木果、奇异果、麻藤果等，果形一般为椭圆状，外观呈绿褐色，表皮覆盖浓密绒毛，不可食用，其内是呈亮绿色的果肉和一排黑色的种子。因猕猴喜食，故名猕猴桃。
						</div>
					</li>
				</ul>
			</div>
		</div>



		<!-- 第二列产品 -->
		<div class="fruits_Forum">

			<div class="list_style">
				<ul class="clearfix">
					<li class="clearfix">
						<div class="product_lists clearfix">
							<a href="#" class="Collect"></a> <a href="#"><img
								src="images/cm.jpg" /></a>
							<p class="title_p_name">四川多汁草莓</p>
							<p class="title_Profile">现摘牛奶草莓新鲜水果</p>
							&nbsp; &nbsp; &nbsp; &nbsp;

							草莓（英文学名：strawberry），多年生草本植物。高10-40厘米，茎低于叶或近相等，密被开展黄色柔毛。
							叶三出，小叶具短柄，质地较厚，倒卵形或菱形，上面深绿色，几无毛，下面淡白绿色，疏生毛，沿脉较密。
							<p>
								<br>
						</div>
					</li>
					<li class="clearfix">
						<div class="product_lists clearfix">
							<a href="#"><img src="images/hmg.jpg" /></a>
							<p class="title_p_name">吐鲁番哈密瓜</p>
							<p class="title_Profile">绿色有机天然无污染</p>
							&nbsp; &nbsp; &nbsp; &nbsp;
							哈密瓜，新疆维吾尔自治区哈密地区特产，中国国家地理标志产品。哈密瓜主产于吐哈盆地（即吐鲁番盆地和哈密盆地的统称），它形态各异，风味独特，瓜肉肥厚，清脆爽口。
							哈密瓜，新疆维吾尔自治区哈密地区特产，中国国家地理标志产品。
						</div>




					</li>
					<li class="clearfix">
						<div class="product_lists clearfix">
							<a href="#"><img src="images/mg.jpg" /></a>
							<p class="title_p_name">海南特产青芒</p>
							<p class="title_Profile">绿色有机天然无污染</p>
							&nbsp; &nbsp; &nbsp; &nbsp; 芒果是杧果 (中国植物志)的通俗名(拉丁学名:Mangifera
							indica
							L.)，芒果是一种原产印度的漆树科常绿大乔木，叶革质，互生;花小，杂性，黄色或淡黄色，成顶生的圆锥花序。核果大，压扁，长5-10厘米，宽3-4.5厘米，成熟时黄色，味甜，果核坚硬。
						</div>
					</li>
					<li class="clearfix">
						<div class="product_lists clearfix">
							<a href="#"><img src="images/ll.jpg" /></a>
							<p class="title_p_name">猫山王榴莲果</p>
							<p class="title_Profile">绿色有机天然无污染</p>
							&nbsp; &nbsp; &nbsp; &nbsp;
							榴莲肉是榴莲的果实，在泰国被誉为“水果之王”。它气味浓烈、爱之者赞其香，厌之者怨其臭，因而，旅馆、火车、飞机和公共场所是不准带进的。泰国人特别喜爱榴莲，常常被它的特异香味所吸引，泰国流行“典纱笼，买榴莲，榴莲红。
						</div>
					</li>
					<li class="clearfix">
						<div class="product_lists clearfix">
							<a href="#"><img src="images/ht.jpg" /></a>
							<p class="title_p_name">安徽黄桃果</p>
							<p class="title_Profile">绿色有机天然无污染</p>
							&nbsp; &nbsp; &nbsp; &nbsp;
							黄桃又称黄肉桃，属于蔷薇科桃属，因肉为黄色而得名。也能促进食欲，堪称保健水果、养生之桃常吃可起到通便、降血糖血脂、抗自由基、祛除黑斑、延缓衰老、提高免疫力等作用，也能促进食欲，堪称保健水果、养生之桃。
						</div>
					</li>
				</ul>
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
<script>
	if (localStorage.getItem('isLogin')) {
		$("#isLogin").show().siblings().hide()
		$("#registerNav").hide()
		$("#loginName").text(
				JSON.parse(localStorage.getItem('localUserInfo')).userName)
	} else {
		$("#isLogin").hide().siblings().show()
		$("#registerNav").show()
		$("#loginName").text("")
	}
	$("#logout").click(function() {
		localStorage.clear()
		window.location.href = './index.html'
	})
	$("#shopCar").click(function() {
		if (!localStorage.getItem('localUserInfo')) {
			alert("请先登录")
			$(this).attr('href', 'Login.html')
		} else {
			$(this).attr('href', 'shopping_cart.html')
		}
	})
	$("#shopNum").text(JSON.parse(localStorage.getItem('localShopLis')).length)
</script>
</html>
