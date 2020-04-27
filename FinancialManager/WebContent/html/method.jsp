<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>文章</title>
		
		
		<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet"  />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mycss.css" />
		<!-- 引入jQuery核心js文件 -->
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
		<!-- 引入BootStrap核心js文件 -->
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/myjquery.js" ></script>
		<style>
			#methodcontent{
				width:100%;
				height:800px;
				margin-top:30px;
				background-size:cover;
				background-image:url(${pageContext.request.contextPath}/img/539522161052746190.webp.jpg);
			}
		#content{
			width:57%;
			background-color:#FAF2CC;
			position:absolute;
			top:100px;
			right:140px;
			height:700px;
		}
		#content p{
			font-size:20px;
			color:darkred;
			margin-left:30px;
		}
		#content .textarea{
			font-size:17px;
			color:#666666;
			margin-left:50px;
			text-indent: 2em;
			width:90%;
			line-height:30px ;
		}
		</style>
	</head>
	
	<body>
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="main.jsp"></jsp:include>
		<jsp:include page="float.jsp"></jsp:include>
		
		<div id="methodcontent">
			<div id="content">
				<c:forEach items="${methodBytname }" var="pro" >
					<h2 align="center">${pro.tname }</h2>
					<p class="textarea"><font color="darkred" size="5px">分类：</font>${pro.type }</p>
					<p>内容（定义）：</p>
					<P class="textarea">${pro.tcontent }</p>
					<p>优点：</p>
					<P class="textarea">${pro.tadv }</p>
					<p>缺点：</p>
					<P class="textarea">${pro.tdef }</p>
					<p>相关案例：</p>
					<P class="textarea">${pro.ex }</p>
				</c:forEach>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>
