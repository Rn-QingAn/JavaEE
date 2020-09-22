
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/Orders.css"  rel="stylesheet" type="text/css" />
<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="js/jquery.reveal.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="js/jquery.sumoselect.min.js" type="text/javascript"></script>
<script src="js/common_js.js" type="text/javascript"></script>
<script src="js/footer.js" type="text/javascript"></script>
<script src="js/jquery.jumpto.js" type="text/javascript"></script>
<title>确认订单界面</title>
<script type="text/javascript">
	function back() {
		window.location.href = "ShoppingCart";
	}

</script>
</head>

<body>
	<div id="Orders" class="Inside_pages  clearfix">
		<div class="Orders_style clearfix">
			<div class="address clearfix">
				<div class="title">收货人信息</div>
				<div class="adderss_list clearfix">
					<div class="title_name">
						选择收货地址 <a href="#">+添加地址</a>
					</div>
					<!-- <div class="list" id="select">
            <ul class="confirm active">
            <div class="default">默认地址</div>
            <div class="adderss_operating">
             <div class="Operate"><a href="#" class="delete_btn"></a> <a href="#" class="modify_btn"></a></div>
            </div>
            <div class="user_address">
            <li>任文祥</li>
            <li>四川成都温江区四川交通职业技术学院西门菜鸟驿站</li>
            <li class="Postcode">610043</li>      
            <li>15680033720</li>
            </div>
            </ul>
             <ul class="">
              <div class="adderss_operating">
             <div class="Operate"><a href="#" class="delete_btn"></a> <a href="#" class="modify_btn"></a></div>
            </div>
             <div class="user_address">
            <li>任华哥</li>
            <li>四川成都温江区四川交通职业技术学院西门菜鸟驿站</li>
            <li class="Postcode">610043</li>
            <li>18908269130</li>
            </div>
            </ul>
             <ul class="">
              <div class="adderss_operating">
             <div class="Operate"><a href="#" class="delete_btn"></a> <a href="#" class="modify_btn"></a></div>
            </div>
             <div class="user_address">
            <li>任华哥</li>
            <li>四川成都温江区四川交通职业技术学院西门菜鸟驿站</li>
            <li class="Postcode">610043</li>
            <li>18908269130</li>
            </div>
            </ul>
 -->
				</div>
			</div>
			<!--收货地址样式-->
			<div class="Shipping_address">
				<ul class="detailed">
					<li><label>收货人姓名</label><span>任文祥</span></li>
					<li><label>电子邮件</label><span>Rn_QingAn@163.com</span></li>
					<li><label>详细地址</label><span>四川成都温江区四川交通职业技术学院西门菜鸟驿站</span></li>
					<li><label>邮政编码</label><span>000000</span></li>
					<li><label>移动电话</label><span>15680033720</span></li>
					<li><label>固定电话</label><span></span></li>
				</ul>
			</div>
		</div>

		<form class="form" method="post">
			<fieldset>
				<!--快递选择-->
				<div class="express_delivery">
					<div class="title_name">选择快递方式</div>

					<ul class="dowebok">
						<li><input type="radio" name="radio" data-labelauty="圆通快递">
							<div class="description">
								<em class="arrow"></em>
								<p>到付价格=现付价格*1.25 ，不足1元按1元收取，到付最低15元起。此价格供参考，详情请咨询圆通当地营业网点</p>
								<p>资费：15元</p>
								<p class="Note">满68元包邮</p>
								<p>
									<a href="#">点击查看是否在配送范围内</a>
								</p>
							</div></li>
						<li><input type="radio" name="radio" data-labelauty="中通快递">
							<div class="description">
								<em class="arrow"></em>
								<p>到付价格=现付价格*1.25 ，不足1元按1元收取，到付最低15元起。此价格供参考，详情请咨询圆通当地营业网点</p>
								<p>资费：15元</p>
								<p class="Note">满68元包邮</p>
							</div></li>
						<li><input type="radio" name="radio" data-labelauty="申通快递">
							<div class="description">
								<em class="arrow"></em>
								<p>到付价格=现付价格*1.25 ，不足1元按1元收取，到付最低15元起。此价格供参考，详情请咨询圆通当地营业网点</p>
								<p>资费：15元</p>
								<p class="Note">满68元包邮</p>
							</div></li>
						<li><input type="radio" name="radio" data-labelauty="邮政EMS">
							<div class="description">
								<em class="arrow"></em>
								<p>到付价格=现付价格*1.25 ，不足1元按1元收取，到付最低15元起。此价格供参考，详情请咨询圆通当地营业网点</p>
								<p>资费：15元</p>
								<p class="Note">满68元包邮</p>
							</div></li>

						<li><input type="radio" name="radio" data-labelauty="韵达快递">
							<div class="description">
								<em class="arrow"></em>
								<p>到付价格=现付价格*1.25 ，不足1元按1元收取，到付最低15元起。此价格供参考，详情请咨询圆通当地营业网点</p>
								<p>资费：15元</p>
								<p class="Note">满68元包邮</p>
							</div></li>
						<li><input type="radio" name="radio" data-labelauty="顺丰快递"
							checked>
							<div class="description">
								<em class="arrow"></em>
								<p>到付价格=现付价格*1.25 ，不足1元按1元收取，到付最低15元起。此价格供参考，详情请咨询圆通当地营业网点</p>
								<p>资费：15元</p>
								<p class="Note">满88元包邮</p>
							</div></li>
					</ul>

				</div>

				<!--付款方式-->
				<div class="payment">
					<div class="title_name">支付方式</div>
					<ul>
						<li><input type="radio" name="aplipay" data-labelauty="支付宝"
							checked></li>
						<li><input type="radio" name="aplipay" data-labelauty="微信支付"></li>
						<li><input type="radio" name="aplipay" data-labelauty="货到付款"></li>
					</ul>
				</div>
				<!--发票样式-->
				<div class="invoice_style">
					<ul>
						<li class="invoice_left"><input name="" type="checkbox"
							value="" data-labelauty="是否开发票" checked /></li>
						<li class="invoice_left"><select name="somename"
							class="SlectBox" onclick="console.log($(this).val())"
							onchange="console.log('change is firing')">
								<option disabled="disabled">发票类型</option>
								<option value="办公用品">办公用品</option>
								<option value="食品" selected>果蔬</option>
								<option value="20元红包">20元红包</option>
								<option value="50元红包">50元红包</option>
								<option value="100元红包">100元红包</option>
								<option value="200元红包">200元红包</option>
						</select></li>
						<li class="invoice_left">发票抬头 <input name="" type="text"
							class="text_info" value="任文祥" /></li>
						<li class="invoice_left"><select name="somename"
							class="SlectBox" onclick="console.log($(this).val())"
							onchange="console.log('change is firing')">
								<option disabled="disabled">发票内容</option>
								<option value="办公用品">办公用品</option>
								<option value="食品" selected="selected">果蔬</option>
								<option value="数码配件">数码配件</option>
								<option value="电脑">电脑</option>
								<option value="手机">手机</option>
								<option value="200元红包">200元红包</option>
						</select></li>

					</ul>

				</div>
				<div class="payment">
					<div class="title_name">订单详情</div>
					<c:if test="${!empty ACCOUNT}">
						<c:forEach items="${ACCOUNT}" var="account">
							<ul>
								<table>
									<tr>
										<li><td width="170px;">${account.accountDate}</td></li>
										<li><td width="140px;">${account.accountNo}</td></li>
										<li><td width="70px;">${account.accountName}</td></li>
										<li><td width="70px;">${account.accountUser}</td></li>
									</tr>

								</table>
							</ul>
						</c:forEach>
					</c:if>
				</div>
				<!--产品列表-->
				<div class="Product_List">


					<div class="Pay_info">
						<label>订单留言</label><input name="" type="text"
							onkeyup="checkLength(this);" class="text_name " /> <span
							class="wordage">剩余字数：<span id="sy" style="color: Red;">50</span></span>
					</div>
					<!--价格-->
					<div class="price_style">
						<div class="right_direction">

							<ul>
								<li><label>商品总价</label><i>￥</i><span id="sumPrice">${accountSumPrice}</span></li>
								<li><label>优惠金额</label><i>￥</i><span>0</span></li>
								<li><label>配&nbsp;&nbsp;送&nbsp;&nbsp;费</label><i>￥</i><span>0</span></li>
								<li class="shiji_price"><label>实&nbsp;&nbsp;付&nbsp;&nbsp;款</label><i>￥</i><span>${accountSumPrice}</span></li>
							</ul>

							<div class="btn">
								<a href="goAlipay"
									style="background: url(images/Button_img.png) no-repeat; width: 152px; height: 36px; border: 0px; color: #FFF; float: left; margin-left: 20px; cursor: pointer; background-position: -151px -75px;"></a>
								<a href="ShoppingCart"
									style="background: url(images/Button_img.png) no-repeat; width: 152px; height: 36px; border: 0px; float: left; color: #FFF; margin-left: 20px; cursor: pointer; background-position: left -112px;"></a>
							</div>


							<div class="integral right">
								待订单确认后，你将获得<span>0</span>积分
							</div>
						</div>
					</div>
				</div>
			</fieldset>
	</div>
	</div>
	<script type="text/javascript">
		function checkLength(which) {
			var maxChars = 50; //
			if (which.value.length > maxChars) {
				alert("您出入的字数超多限制!");
				// 超过限制的字数了就将 文本框中的内容按规定的字数 截取
				which.value = which.value.substring(0, maxChars);
				return false;
			} else {
				var curr = maxChars - which.value.length; //250 减去 当前输入的
				document.getElementById("sy").innerHTML = curr.toString();
				return true;
			}
		}
	</script>
	<script>
		$(function() {
			$(':input').labelauty();
		});
	</script>
</body>
</html>
