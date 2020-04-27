<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<div style="background-color: darkred;height:25px;" id="frist">
		<nav>
			<div>
				<font style="font-size:28px; font-weight:900; color:darkgreen; position:absolute; top:2px; left:54px;">云财务</font>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="float:right; margin-right:70px;">
					<ul class="nav navbar-nav">
						<li>
							<a href="${pageContext.request.contextPath}/html/register.jsp" style="padding-top:3px;">注册</a>
						</li>
						<li class="dropdown">
							<a href="login.html" class="dropdown-toggle" data-toggle="dropdown" role="button"  aria-expanded="false" style="padding-top:3px;">登录 <span class="caret"></span></a>
							<ul class="dropdown-menu" style="background-color:darkred;">
								<li>
									<a href="${pageContext.request.contextPath}/html/login.jsp">QQ</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/html/login.jsp">微信WeChat</a>
								</li>
								<li role="separator" class="divider"></li>
								<li>
									<a href="${pageContext.request.contextPath}/html/login.jsp">新浪微博</a>
								</li>
								<li role="separator" class="divider"></li>
								<li>
									<a href="${pageContext.request.contextPath}/html/login.jsp">手机号***</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</div>