<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>后台管理页面</title>
		
		<!-- 引入Bootstrap核心样式文件 -->
		<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet"  />
		<!-- 引入jQuery核心js文件 -->
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
		<!-- 引入BootStrap核心js文件 -->
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/myjquery.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/modules/element.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js" ></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/function.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/function.js" ></script>
		<script>
			$(function(){
				var link="${pageContext.request.contextPath}/getmoney"+window.location.search;
				$('form').attr("action",link);
			});
			function ValidateFloat(e, pnumber){ 
				if (!/^\d+[.]?\d*$/.test(pnumber)){ 
					$(e).val(/^\d+[.]?\d*/.exec($(e).val())); 
					alert("请输入数字");
					return false; 
				} 
			} 
		</script>
	</head>

<body>
	<!--功能四-->
				<div class="select">
					<form method="post" action="">
						<div class="select-1">
							<h4>方案一：</h4>
							<p>债券</p>
							<font>利息率(%)：</font>
							<input type="number"  name="fouraa1"/>
							<font>债券融资总额(万)：</font>
							<input type="text" name="fourac1"  onkeyup="ValidateFloat(this, value)"/>
							<font>费用率(%)：</font>
							<input type="number" name="fourad1"/>
							<p>借款：</p>
							<font>利息率(%)：</font>
							<input type="number"  name="fourba1"/>
							<font>借款融资总额(万)：</font>
							<input type="text" name="fourbc1"  onkeyup="ValidateFloat(this, value)"/>
							<font>费用率(%)：</font>
							<input type="number" name="fourbd1"/>
							<p>股票</p>
							<font>基期股利(万)：</font>
							<input type="text"  name="fourda1"  onkeyup="ValidateFloat(this, value)"/>
							<font>发行股票筹资总额(万)：</font>
							<input type="text" name="fourdb1"  onkeyup="ValidateFloat(this, value)"/>
							<font>费用率(%)：</font>
							<input type="number" name="fourdc1"/><br  /><br  />
							<font>股票年增长率(%)：</font>
							<input type="number" name="fourdd1"/>
							<font>若为优先股此处填0</font>
							<p>所得税税率(%)：</p>
							<input type="number" name="fourab1"/>
						</div>
						<div class="select-2">
							<h4>方案二：</h4>
							<p>债券</p>
							<font>利息率：</font>
							<input type="number"  name="fouraa2"/>
							<font>债券融资总额(万)：</font>
							<input type="text" name="fourac2"  onkeyup="ValidateFloat(this, value)"/>
							<font>费用率(%)：</font>
							<input type="number" name="fourad2"/>
							<p>借款：</p>
							<font>利息率(%)：</font>
							<input type="number"  name="fourba2"/>
							<font>借款融资总额(万)：</font>
							<input type="text" name="fourbc2"  onkeyup="ValidateFloat(this, value)"/>
							<font>费用率(%)：</font>
							<input type="number" name="fourbd2"/>
							<p>股票</p>
							<font>基期股利(万)：</font>
							<input type="text"  name="fourda2"  onkeyup="ValidateFloat(this, value)"/>
							<font>发行股票筹资总额(万)：</font>
							<input type="text" name="fourdb2"  onkeyup="ValidateFloat(this, value)"/>
							<font>费用率(%)：</font>
							<input type="number" name="fourdc2"/><br  /><br  />
							<font>股票年增长率(%)：</font>
							<input type="number" name="fourdd2"/>
							<font>若为优先股此处填0</font>
							<p>所得税税率(%)：</p>
							<input type="number" name="fourab2"/>
							<br /><br /><button type="submit" style="width:400px; height:35px; background:#28A4C9;border-radius:20px; margin-left:30px;">提交</button>
						</div>
					</form>
					<div class="outcome">
						<p>平均资本成本：</p>
						<font>方案一：</font><span class="outcome-1"><%=request.getAttribute("moneyoc1")==null?"":request.getAttribute("moneyoc1")%></span><br  />
						<font>方案二：</font><span class="outcome-2"><%=request.getAttribute("moneyoc2")==null?"":request.getAttribute("moneyoc2")%></span>
						<p>最佳方案：</p>
						<div style="font-size:18px; color:red; height:20px;"><%=request.getAttribute("moneyInfo")==null?"":request.getAttribute("moneyInfo")%></div>
					</div>
				</div>
</body>
</html>