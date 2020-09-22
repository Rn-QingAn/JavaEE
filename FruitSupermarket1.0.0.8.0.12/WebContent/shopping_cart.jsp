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
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.1.8.2.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script type="text/javascript" src="js/slide.js"></script>
<script src="js/common_js.js" type="text/javascript"></script>
<script src="js/jquery.foucs.js" type="text/javascript"></script>
<script src="js/carts.js"></script>
<title>购物车</title>
</script>
<script language="JavaScript">
	function account() {
		var sum = $("#sum_price").html().split('￥');
		var float_price = parseFloat(sum[1]); //总价

		var vNow = new Date();
		var sNow = "";
		sNow += String(vNow.getFullYear());
		sNow += String(vNow.getMonth() + 1);
		sNow += String(vNow.getDate());
		sNow += String(vNow.getHours());
		sNow += String(vNow.getMinutes());
		sNow += String(vNow.getSeconds());
		sNow += String(vNow.getMilliseconds()); //订单号

		var accountName = "新鲜果蔬"
		$.ajax({
			url : "${pageContext.request.contextPath}/createAccount",
			type : "post",
			data : JSON.stringify({
				accountNo : sNow,
				accountName : accountName,
				accountPrice : float_price
			}),
			contentType : "application/json;charset=UTF-8",
			dataType : "text",
			success : function(data) {
				
			},
			error : function() {
				window.location.href = "order";
			}
		});
	}

	function confirmDel() {
		return confirm("删除是不可恢复的，你确认要删除吗？");
	}

	window.onload = function() {
		$("#oId[type='checkbox']").each(function() {
			$(this).bind('click', function() {
				compute_prices();
			});
		});

		compute_prices();
		var all = document.getElementById("all"); //全选checkbox	
		var box = document.getElementsByClassName('box'); //子复选框		
		//遍历checkbox，把子复选框的checked设置成全选框的状态，实现全选/全不选	
		all.onclick = function() {
			for (var i = 0; i < box.length; i++) {
				box[i].checked = this.checked;
			}
			compute_prices()
		}; //遍历checkbox，子复选框有一个未选中时，如果全选框设为false不选状态	
		for (var i = 0; i < box.length; i++) {
			box[i].onclick = function() {
				if (!this.checked) {
					all.checked = false;
				}
			};
		}

	};

	function compute_prices() {
		let sum = 0;
		$("#oId[type='checkbox']:checked").each(
				function() {
					var str_price = $(this).parents('.product_cart').children(
							'.title_width4').html().split('￥');
					var float_price = parseFloat(str_price[1]);
					sum += float_price;
				})
		sum = (Number(sum)).toFixed(2)
		$('#sum_price').html('￥' + sum);

	}

	function checknum(obj) {
		if (obj.value > 20) {
			obj.value = 20;
			alert('Max 20!');
		}
	}
	function changeNum(obj, num) {

		var input = getParent(obj).getElementsByTagName("input");
		for (var i = 0; i < input.length; i++) {
			if (input[i].type == "text") {
				if (input[i].value == "")
					input[i].value = num;

				else
					input[i].value = input[i].value - 0 + num;
			}
			if (input[i].value == "0")
				input[i].value = 1;
			if (input[i].value == "21")
				input[i].value = 20;
		}
		if (num == 1) {
			//获取到当前数据的数量
			var account = $(obj).prev().val();
			//获取小计
			var node = $(obj).parent().parent().next().text();
			//获取单价
			var price = $(obj).parent().parent().prev().text();
			//计算小计价格
			$(obj).parent().parent().next().text(
					"￥" + (account * price).toFixed(2))

			compute_prices();
		} else {
			//获取到当前数据的数量
			var account = $(obj).next().val();
			console.log(account);
			//获取小计
			var node = $(obj).parent().parent().next().text();
			console.log(node)
			//获取单价
			var price = $(obj).parent().parent().prev().text();
			console.log(price)
			//计算小计价
			$(obj).parent().parent().next().text(
					"￥" + (account * price).toFixed(2))

			compute_prices();
		}

	}
	//获取父级对像
	function getParent(obj) {
		if (typeof (obj) != "object") {
			obj = document.getElementById(obj);
		}
		if (obj)
			return obj.parentElement || obj.parentNode;
	}

	function deleteAll() {
		var checkNum = $("input[name='oId']:checked").length;
		if (checkNum == 0) {
			alert("请至少选择一项！");
			return;
		}
		if (confirm("确定要删除吗？")) {
			var orderList = new Array();
			$("input[name='oId']:checked").each(function() {
				orderList.push($(this).val())
			});
		}
		$.ajax({
			type : "post",
			url : "${pageContext.request.contextPath}/deleteOrderoId",
			data : {
				orderList : orderList.toString()
			},
			dataType : 'text',
			success : function(data) {
				alert("删除成功！");
				location.reload();
			},
			error : function() {
				alert("删除成功！");
				location.reload();
			}
		})
	}

	$("#submitConfim").onclick = "return false;";
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
							<li class="hd_menu_tit"><span>欢迎,</span> <span
								style='color: #3089e7' id="loginName">${UserName}</span> &nbsp;
								<a href="tologout" onclick="out()">退出登录</a></li>
						</c:if>
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
	<!--购物车样式-->
	<div class="Narrow">
		<div class="shop_cart">
			<div class="schedule"></div>
			<div class="cart_style">
				<div class="title_name">
					<ul>
						<li class="title_width"><label class="auto-label"> <input
								type="checkbox" id="all" checked><span>全选</span></label></li>
						<li class="title_width1">商品信息</li>
						<li class="title_width2">单价</li>
						<li class="title_width3">数量</li>
						<li class="title_width4">小计</li>
						<li class="title_width5">操作</li>
					</ul>
				</div>
				<div class="list_style">
					<div class="class_title">水果馆</div>
					<c:if test="${!empty ORDER}">
						<c:forEach items="${ORDER}" var="orders">
							<ul class="product_cart">
								<li class="title_width"><input type="checkbox" id="oId"
									name="oId" value="${orders.oId}" class="box" checked /></li>
								<li class="title_width1"><a href="#"
									class="product_img left"> <img
										src="${pageContext.request.contextPath}/photo/${orders.oImage}" /></a>
									<p class="cart_content">
										<a href="#" class="title_name">${orders.introduction}</a> <span>${orders.oName}</span>
									</p></li>
								<li class="title_width2">${orders.oPrice}</li>
								<li class="title_width3">
									<div class="Numbers">
										<a href="javascript:void(0);" onclick="changeNum(this,-1)"
											class="jian">-</a> <input id="number" name="number"
											type="text" value="1" class="number_text"> <a
											href="javascript:void(0);" onclick="changeNum(this,1)"
											class="jia">+</a>
									</div>
								</li>
								<li class="title_width4">￥${orders.oPrice}</li>
								<li class="title_width5"><a
									href="deleteOrder?oId=${orders.oId}"
									onclick="return confirmDel()">移除</a></li>
							</ul>
						</c:forEach>
					</c:if>
				</div>
			</div>
			<!--操作-->
			<div class="cart_operating clearfix">
				<div class="cart_operating_style">
					<div class="cart_price">
						商品总价：（不含运费）<b id='sum_price'>￥0</b>
					</div>
					<div class="cart_btn">
						<!-- 结算按钮 -->
						<a href="Orders.jsp" onclick="account()" class="payment_btn" id="submitConfim"></a>
						<!-- 一键移除 -->
						<a href="javascript:void(0);" onclick="deleteAll()"
							class="continue_btn"></a>
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
