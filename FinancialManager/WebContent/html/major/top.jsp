<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
</head>
		<style>
			div{
				background-color:darkred;
				width:100%;
				color:white;
				height:110px;
				position:absolute;
				top:0;
				left:0;
				text-align:center;
			}
			div a{
				text-decoration:underline;
				display:block; 
				text-align:right;
				position:absolute;
				bottom:5px;
				right:50px;
				color:#fbf712;
			}
		</style>
		<script>
			$(function(){
				$('a').click(function(){
					var link="${pageContext.request.contextPath}/html/functionframe.jsp"+window.location.search;
					$('a').attr("href",link);
				});
			});
		</script>
<body>
	<div>
		<h2>欢迎进入审核页面！</h2>
		<a href="${pageContext.request.contextPath}/html/major/top.jsp" target="all">回到功能界面</a>
	</div>
</body>
</html>