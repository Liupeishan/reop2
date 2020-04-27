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
			<div id="function-menue-left">
				<div class="panel-group" id="accordion">
				    <div class="panel panel-default">
				        <div class="panel-heading">
				            <h4 class="panel-title">
				                <a data-toggle="collapse" data-parent="#accordion" 
				                href="#collapseOne">
				                	投资、预算方案决策
				                </a>
				            </h4>
				        </div>
				        <div id="collapseOne" class="panel-collapse collapse in">
				            <div class="panel-body">
				                <ul>
				                	<li id="fixedassert">固定投资决策</li>
				                	<li id="investment">证券投资决策</li>
				                	<li id="project">项目资金预算</li>
				                	<li id="debt">融资方式决策</li>
				                	<li id="chase">现在持有量预算</li>
				                </ul>
				            </div>
				        </div>
				    </div>
				    <div class="panel panel-success">
				        <div class="panel-heading">
				            <h4 class="panel-title">
				                <a data-toggle="collapse" data-parent="#accordion" 
				                href="#collapseTwo">
				                	分享经验、方法
				                </a>
				            </h4>
				        </div>
				        <div id="collapseTwo" class="panel-collapse collapse">
				            <div class="panel-body">
				            	<ul>
				            		<li id="tactics">分享决策方法</li>
				            	</ul>
				            </div>
				        </div>
				    </div>
				    <div class="panel panel-info">
				        <div class="panel-heading">
				            <h4 class="panel-title">
				                <a data-toggle="collapse" data-parent="#accordion" 
				                href="#collapseThree">
				                	个人中心
				                </a>
				            </h4>
				        </div>
				        <div id="collapseThree" class="panel-collapse collapse">
				            <div class="panel-body">
				            	<ul>
				            		<li id="listUser">基础信息</li>
				            		<li id="listItems">所有项目</li>
				            		<li id="listMethod">方法展示</li>
				            		<li id="listAll">我的年度决策报告</li>
				            	</ul>
				            </div>
				        </div>
				    </div>
				</div>
			</div>
</body>
</html>