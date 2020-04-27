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
		<style>
			#updatemethod{
				display:none;
				position:absolute;
				top:100px;
				left:200px;
				width:550px;
				height:380px;
				text-align:center;
			}
		</style>
		<script>
			$(function(){
				var link="${pageContext.request.contextPath}/method"+window.location.search;
				$('form').attr("action",link);
			});
		</script>
	</head>

<body>
	<div class="share">
					<form method="post" action="${pageContext.request.contextPath}/method">
						<p><font size="4px">修改你的方法</font></p>
						<label>方法名称：</label>
						<input type="text" name="sixaa" style="width:20em;"/><br />
						<label>方法分类：</label>
						<select name="sixab" style="width:20em;">
							<option>请选择</option>
							<option value="固定资产投资">固定资产投资决策</option>
							<option value="证券投资">证券组合投资决策</option>
							<option value="项目资金">项目所需资金</option>
							<option value="融资选择">筹资方案决策</option>
							<option value="现金持有量">最佳现金持有量决策</option>
						</select><br />
						<label>方法内容：</label>
						<textarea rows="1" cols="40" name="sixac"></textarea><br />
						<label>方法优点：</label>
						<textarea rows="1" cols="40" name="sixaf"></textarea><br />
						<label>方法缺点：</label>
						<textarea rows="1" cols="40" name="sixag"></textarea><br />
						<label>相关案例：</label>
						<textarea rows="3" cols="40" name="sixai"></textarea><br />
						<button type="submit" style="width:400px; height:35px; background:#28A4C9;border-radius:20px; margin-left:30px;">提交</button>
					</form>
				</div>
</body>
</html>