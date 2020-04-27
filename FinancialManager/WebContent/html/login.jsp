<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>登录</title>
		
		<!-- 引入Bootstrap核心样式文件 -->
		<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet"  />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mycss.css" />
		<!-- 引入jQuery核心js文件 -->
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
		<!-- 引入BootStrap核心js文件 -->
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/myjquery.js" ></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css" />
	</head>
	<body>
		
		<jsp:include page="/html/header.jsp"></jsp:include>
		
		<div style="background:url(${pageContext.request.contextPath}/img/veer-304655309.jpg) no-repeat;background-size: cover;width:100%; height:590px;">
			<div id="loginBox" class="loginBox">
                <form id="loginForm" method="post" action="${pageContext.request.contextPath}/login">
                    <!--登录标题部分-->
                    <div class="loginText font20">
                        <font>会员登录</font>USER LOGIN         
                    </div>
					<div style="font-size:18px; color:red; height:20px;"><%=request.getAttribute("loginInfo")==null?"":request.getAttribute("loginInfo")%></div>
                     <!--登录标题结尾部分-->

                    <!--登录标题部分-->
                    <div class="loginTitle">
                        <div class="loginText alignr">用户名： </div>
                        <div class="input_box">
                            <input type="text" name="uname">
                        </div>
                    </div> <!--登录标题结尾部分-->
                    <!--登录标题部分-->
                    <div class="loginTitle">
                        <div class="loginText alignr">密码： </div>
                        <div class="input_box">
                            <input type="password" name="upassword">
                        </div>
                    </div> <!--登录标题结尾部分-->
                    <!--登录标题部分-->
                    <div class="loginTitle">
                        <div class="loginText alignr"></div>
                        <div class="input_box">
                            <input type="submit" value="登录" class="loginbtn" id="login">
                        </div>
                    </div> <!--登录标题结尾部分-->
                    <!--登录标题部分-->
                </form>
                <div class="loginTitle alignr" style="font-size:14px; text-align:right; margin:-5px -12px;">
                    <span>还没注册？</span>
                    <a id="registera" href="register.html">马上注册</a>
                </div><!--登录标题结尾部分-->
			</div>
		</div>
		
		<div style="position:absolute; bottom:-170px; background:darkred; width:100%;padding-top:30px;">
			<div class="container">
				<div id="bottom1">
						<p>
							财新网所刊载内容之知识产权为财新传媒及/或相关权利人专属所有或持有。未经许可，禁止进行转载、摘编、复制及建立镜像等任何使用。
							<br /><a href="#">京ICP证090880号</a>京ICP备：10026701 | 
							<a href="#">京公网安备 11010502034662号</a>|<a href="#">广播电视节目制作经营许可证：京第1015号</a>
							|<a href="#">出版物经营许可证：第直100013号</a><br  />
							Copyright 财新网 All Rights Reserved 版权所有 复制必究<br  />
							违法和不良信息举报电话：<a href="#" style="color:bule;">010-85905141</a>　举报邮箱：laixin@caixin.com
						</p>
					</div>
					<div id="bottom2"style="height:50px;">
						<a href="#">关于我们</a>|
						<a href="#">加入我们</a>|
						<a href="#">云财务预算管理</a>|
						<a href="#">意见与反馈</a>|
						<a href="#">提供新闻线索</a>|
						<a href="#">联系我们</a>|
						<a href="#">友情链接</a>|
						<a href="#">网站地图</a>|<br  />
					</div>
			</div>
		</div>
	</body>
</html>
