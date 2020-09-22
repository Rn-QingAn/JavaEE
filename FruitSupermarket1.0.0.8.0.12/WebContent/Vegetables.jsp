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
							<li class="hd_menu_tit"><span>欢迎,</span> 
				
							<span
								style='color: #3089e7' >${UserName}</span> &nbsp; <a
								href="tologout" onclick="out()">退出登录</a></li>
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
 <script>$("#Navigation").slide({titCell:".Navigation_name li"});</script>
</div>
</div>
<em class="right_img"></em>
</div>
<!---->
<div class="AD_img"><a href="#"><img src="images/AD_page_img_02.png"  width="100%"/></a></div>
<!--位置-->
<div class="Bread_crumbs">
 <div class="Inside_pages clearfix">
   <div class="left">当前位置：<a href="#">首页</a>&gt;<a href="#">素菜馆</a></div>
   <div class="right Search">
   <form>
    <input name="" type="text"  class="Search_Box"/>
    <input name="" type="button"  name="" class="Search_btn"/>
    </form>
   </div>
 </div>
</div>



<!--产品-->
<div class="Inside_pages">
     <!--蔬菜馆-->
  <div class="vegetables_Forum">
    <div class="title_style">
     <div class="title_name"><a href="#"><img src="images/vegetables_img_40.png" /></a></div>
     <div class="title_info">
      <p class="title_x_name">[健康蔬菜小知识]</p>
      <p class="x_info">蔬菜是指可以做菜、烹饪成为食品的一类植物或菌类，蔬菜是人们日常饮食中必不可少的食物之一。蔬菜可提供人体所必需的多种维生素和矿物质等营养物质。</p>
     </div>
     <div class="title_img"><img src="images/title_p_img_32.png" /></div>
    </div>
    <div class="list_style">
      <ul class="clearfix">
       <li class="clearfix">
       <div class="product_lists clearfix">
        <a href="#"><img src="images/5.jpg" /></a>
        <p class="title_p_name">西兰花</p>
        <p class="title_Profile">绿色有机天然无污染</p>
        &nbsp; &nbsp; &nbsp; &nbsp;
        西兰花，又名花椰菜（学名：Brassica oleracea L. var. botrytis L.），是一种蔬菜。为十字花科芸薹属一年生植物，与西蓝花（青花菜）和结球甘蓝同为甘蓝的变种。原产于地中海东部海岸，约在19世纪初 清光绪年间引进中国。
        </div>
       </li>
        <li class="clearfix">
       <div class="product_lists clearfix">
        <a href="#"><img src="images/6.jpg" /></a>
        <p class="title_p_name">胡萝卜</p>
        <p class="title_Profile">绿色有机天然无污染</p>
        &nbsp; &nbsp; &nbsp; &nbsp;
        胡萝卜(学名:Daucus carota L. var. sativa Hoffm.)，又称红萝卜或甘荀，为野胡萝卜(学名:Daucus carota L. var. carota)的变种，本变种与原变种区别在于根肉质，长圆锥形，粗肥，呈红色或黄色。
        <p><br>
        </div>
       </li>
        <li class="clearfix">
       <div class="product_lists clearfix">
        <a href="#"><img src="images/7.jpg" /></a>
        <p class="title_p_name">三月瓜</p>
        <p class="title_Profile">绿色有机天然无污染</p>
        &nbsp; &nbsp; &nbsp; &nbsp;
        西葫芦（Cucurbita pepo L.）一年生蔓生草本；茎有棱沟。叶柄粗壮，被短刚毛；叶片质硬，挺立，三角形，弯缺半圆形，上面深绿色，下面颜色较浅，叶脉两面均有糙毛。卷须稍粗壮。
        <p>
          <br>
          <br>
        </div>
       </li>
        <li class="clearfix">
       <div class="product_lists clearfix">
        <a href="#"><img src="images/8.jpg" /></a>
        <p class="title_p_name">秋葵</p>
        <p class="title_Profile">绿色有机天然无污染</p>
        &nbsp; &nbsp; &nbsp; &nbsp;
        秋葵(学名:Abelmoschus esculentus L.Moench)锦葵科秋葵属性，亦称黄秋葵、咖啡黄葵，俗名羊角豆、潺茄。中国江西省的萍乡以及国内南方地区有种植，因其长相酷似辣椒，又称"洋辣椒"
        <p><br>
      </div>
       </li>
        <li class="clearfix">
       <div class="product_lists clearfix">
        <a href="#"><img src="images/9.jpg" /></a>
        <p class="title_p_name">汉堡圆生菜</p>
        <p class="title_Profile">绿色有机天然无污染</p>
        &nbsp; &nbsp; &nbsp; &nbsp;
        生菜(var. ramosa Hort.)叶用莴苣的俗称，又称鹅仔菜、唛仔菜、莴仔菜，属菊科莴苣属。为一年生或二年生草本作物，叶长倒卵形，密集成甘蓝状叶球，可生食，脆嫩爽口，略甜。
        <p><br><p><br>
      </div>
       </li> 
      </ul>   
    </div> 
    
    <!-- 第二列产品 -->  
<div class="fruits_Forum">
    
    <div class="list_style">
      <ul class="clearfix">
       <li class="clearfix">
       <div class="product_lists clearfix">
        <a href="#" class="Collect"></a>
        <a href="#"><img src="images/ng.jpg" /></a>
        <p class="title_p_name">小南瓜</p>
        <p class="title_Profile">绿色有机天然无污染</p>
        &nbsp; &nbsp; &nbsp; &nbsp;
      
      南瓜（学名：Cucurbita）葫芦科南瓜属的一个种，一年生蔓生草本植物，茎常节部生根，叶柄粗壮，叶片宽卵形或卵圆形，质稍柔软，叶脉隆起，卷须稍粗壮，雌雄同株，果梗粗壮，有棱和槽，因品种而异。
    <p>
      <br>
        </div>
       </li>
        <li class="clearfix">
       <div class="product_lists clearfix">
        <a href="#"><img src="images/qj.jpg" /></a>
        <p class="title_p_name">青海椒</p>
        <p class="title_Profile">绿色有机天然无污染</p>
        &nbsp; &nbsp; &nbsp; &nbsp;
     青椒为植物界，双子叶植物纲，菊亚纲，茄科。和红色辣椒统称为辣椒。果实为浆果。别名很多，大椒、灯笼椒、柿
     子椒都是它的名字，因能结甜味浆果，又叫甜椒、菜椒。因能结甜味浆果，又叫甜椒、菜椒。因能结甜味浆果，又叫甜椒、菜椒。
        </div>




       </li>
        <li class="clearfix">
       <div class="product_lists clearfix">
        <a href="#"><img src="images/ym.jpg" /></a>
        <p class="title_p_name">甜玉米</p>
        <p class="title_Profile">绿色有机天然无污染</p>
        &nbsp; &nbsp; &nbsp; &nbsp;
       甜玉米（Sweet corn）是玉米的一个种，又称蔬菜玉米，禾本科，玉米属。
       甜玉米是欧美、韩国和日本等发达国家的主要蔬菜之一。因其具有丰富的营养、甜、鲜、脆、嫩的特色而深受各阶层消费者青睐。超甜玉米由于含糖量高、适宜采收期长而得到广泛种植。
        </div>
       </li>
        <li class="clearfix">
       <div class="product_lists clearfix">
        <a href="#"><img src="images/zs.jpg" /></a>
        <p class="title_p_name">紫薯</p>
        <p class="title_Profile">绿色有机天然无污染</p>
        &nbsp; &nbsp; &nbsp; &nbsp;
       紫薯（Ipomoea），属旋花科番薯属草本植物，薯肉呈紫色至深紫色，故又称黑薯、紫心甘薯或紫肉甘薯。紫薯是甘薯的一个特殊品种类型，兼有粮食物、经济作物和药用作物的特点，除了具有普通甘薯的成分和功能外，还具有多种生理作用，是食品、医药、化工。
        </div>
       </li>
        <li class="clearfix">
       <div class="product_lists clearfix">
        <a href="#"><img src="images/hg.jpg" /></a>
        <p class="title_p_name">黄瓜</p>
        <p class="title_Profile">绿色有机天然无污染</p>
        &nbsp; &nbsp; &nbsp; &nbsp;
       黄瓜（学名：Cucumis）葫芦科一年生蔓生或攀援草本植物。茎、枝伸长，有棱沟，被白色的糙硬毛。卷须细。叶柄稍粗糙，有糙硬毛；叶片宽卵状心形，膜质，裂片三角形，有齿。雌雄同株。雄花：常数朵在叶腋簇生；花梗纤细，被微柔毛。
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
<script>
  if(localStorage.getItem('isLogin')){
    $("#isLogin").show().siblings().hide()
    $("#registerNav").hide()
    $("#loginName").text(JSON.parse(localStorage.getItem('localUserInfo')).userName)
  }else{
    $("#isLogin").hide().siblings().show()
    $("#registerNav").show()
    $("#loginName").text("")
  }
  $("#logout").click(function(){
    localStorage.clear()
    window.location.href='./index.html'
  })
  $("#shopCar").click(function(){
    if(!localStorage.getItem('localUserInfo')){
      alert("请先登录")
      $(this).attr('href','Login.html')
    }else{
      $(this).attr('href','shopping_cart.html')
    }
  })
  $("#shopNum").text(JSON.parse(localStorage.getItem('localShopLis')).length)
</script>
</html>
