<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
			
		<title>注册</title>
		<!-- 引入Bootstrap核心样式文件 -->
		<link href="../css/bootstrap.css" rel="stylesheet"  />
		<link rel="stylesheet" href="../css/mycss.css" />
		<!-- 引入jQuery核心js文件 -->
		<script src="../js/jquery-1.11.3.min.js"></script>
		<!-- 引入BootStrap核心js文件 -->
		<script src="../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../js/myjquery.js" ></script>
		<script type="text/javascript" src="../js/register.js" ></script>
		<link rel="stylesheet" href="../css/register.css" />
	</head>
	<body>
		<div style="background-color: darkred;height:25px;" id="frist">
			<nav>
				<div>
					<font style="font-size:28px; font-weight:900; color:darkgreen; position:absolute; top:2px; left:54px;">云财务</font>
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="float:right; margin-right:70px;">
						<ul class="nav navbar-nav">
							<li>
								<a href="register.html" style="padding-top:3px;">注册</a>
							</li>
							<li class="dropdown">
								<a href="login.html" class="dropdown-toggle" data-toggle="dropdown" role="button"  aria-expanded="false" style="padding-top:3px;">登录 <span class="caret"></span></a>
								<ul class="dropdown-menu" style="background-color:darkred;">
									<li>
										<a href="login.html">QQ</a>
									</li>
									<li>
										<a href="login.html">微信WeChat</a>
									</li>
									<li role="separator" class="divider"></li>
									<li>
										<a href="login.html">新浪微博</a>
									</li>
									<li role="separator" class="divider"></li>
									<li>
										<a href="login.html">手机号***</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		
		<!--注册部分-->
		<table border="0px" cellspacing="0px" cellpadding="0px" width="100%">
			<!--注册页面-->
			<tr height="670px" >
				<td background="../img/veer-158400678.jpg" style="background-repeat:no-repeat; background-size: contain;">
					<!--创建一个十行两列的表格-->
					<form method="post" action="/FinancialManager/register" name="regform"  onsubmit="return checkform()">
						<table border="0px" cellspacing="0px" cellpadding="0px" width="600px" height="500px">
							<tr height="50px">
								<td colspan="2" align="center">
									<font size="4">会员注册</font>&nbsp;&nbsp;&nbsp;
									<font size="3">USER&nbsp;REGISTER</font>
								</td>
							</tr>
							<tr height="50px">
								<td align="right">
									<font>姓名</font>
								</td>
								<td align="center">
									<input type="text" name="uname" size="25" placeholder="请输入用户名" id="user" onfocus="showTips('user','用户名必填！')" onblur="checkTips('user','用户名不能为空！')"/>
								</td>
								<td width="140px">
									<span id="userspan"></span>
								</td>
							</tr>
							<tr height="50px">
								<td align="right">
									<font>密码</font>
								</td>
								<td align="center">
									<!--设置为必填项时，加上requried="requried"元素-->
									<input type="password" name="upassword" size="25" placeholder="请输入密码" id="password" onfocus="showTips('password','请输入6-18位的密码')" onblur="checkTips('password','密码不能为空！')"/>
								</td>
								<td>
									<span id="passwordspan"></span>
								</td>
							</tr>
							<tr height="50px">
								<td align="right">
									<font>确认密码</font>
								</td>
								<td align="center">
									<input type="password" name="repassword" size="25" placeholder="请确认密码" id="repassword" onfocus="showTips('repassword','请输入确认密码')" onblur="checkpassword('repassword','两次密码不一致')"/>
								</td>
								<td>
									<span id="repasswordspan"></span>
								</td>
							</tr>
							<tr height="50px">
								<td align="right">
									<font>Email</font>
								</td>
								<td align="center">
									<input type="email" name="umail" size="25" id="email" onfocus="showTips('email','邮箱必填！')" onblur="checkTips('email','邮箱不能为空！')"/>
								</td>
								<td>
									<span id="emailspan"></span>
								</td>
							</tr>
							<tr height="50px">
								<td align="right">
									<font>电话号码</font>
								</td>
								<td align="center">
									<input type="tel" name="number" size="25" id="tel" onfocus="showTips('number','电话号码必填！')" onblur="checkTips('email','电话号码不能为空！')"/>
								</td>
								<td>
									<span id="trlspan"></span>
								</td>
							</tr>
							<tr height="50px" id="last-tr">
								<td align="right">
									<font>性别</font>
								</td>
								<td align="center">
									<input type="radio" name="usex" value="男"  />男&nbsp; &nbsp;&nbsp;&nbsp;
									<input type="radio" name="usex" value="女" checked="checked" />女
								</td>
								<td></td>
							</tr>
							<tr>
								<td colspan="2" align="center">
										<button type="rest">重置</button>
										<button type="submit">注册</button>
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
		<div style="position:absolute; bottom:-210px; background:darkred; width:100%;">
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
