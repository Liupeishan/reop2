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
				var link="${pageContext.request.contextPath}/project"+window.location.search;
				$('form').attr("action",link);
			});
		</script>
	</head>

<body>
	
				<!--功能三-->
				<div class="select">
					<form action="${pageContext.request.contextPath}/project" method="post">
						<div class="select-1">
							<h4>项目（系统最多可储存三个项目）：</h4>
							<p>基期指数：</p>
							<font>基期销售总额(万)：</font>
							<input type="number"  name="threeaa" onkeyup="ValueZero(this)"/>
							<font>基期敏感性资产总额(万)：</font>
							<input type="number" name="threeab"/><br  /><br  />
							<font>基期敏感性负债总额(万)：</font>
							<input type="number" name="threeac"/>
							<font>内部留存资金(万)：</font>
							<input type="number" name="threead"/><br  /><br  />
							<font>基期净利润(万)：</font>
							<input type="number" name="threeaf"/>
							<p>预测期：</p>
							<font>预期销售总额(万)：</font>
							<input type="number" name="threeba"/>
							<p>其他数据</p>
							<font>股利支付率(%)：</font>
							<input type="number" name="threeca"/>
							<br /><br /><button type="submit" style="width:400px; height:35px; background:#28A4C9;border-radius:20px; margin-left:30px;">提交</button>
							<p>预算结果：</p>
							<font>项目预计所需资金(万)：</font>
							<div style="font-size:18px; color:red; height:20px;"><%=request.getAttribute("projectInfo")==null?"":request.getAttribute("projectInfo")%></div>
						</div>
					</form>
				</div>
</body>
</html>