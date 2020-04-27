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
	</head>
<body>

	<div>
		<div class="function-menue">
			<div id="select">
				展开左边页面功能选择界面，进行决策方案种类选择：<br  />
				<p ><br />固定资产投资决策：资本报酬最大化法 </p>
				<p>证券组合投资决策：资本资产定价模型</p>
				<p>项目资金预算：销售百分比法</p>
				<p>融资方式：比较资本成本法</p>
				<p>最佳现金持有量：成本分析模式</p><br  />
				<span>以上为系统默认使用方式，其他计算方式敬请期待！</span>
			</div>
		</div>
	</div>
</body>
</html>