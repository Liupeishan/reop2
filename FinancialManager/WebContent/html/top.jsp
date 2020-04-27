<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>后台管理页面</title>
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
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
				var link="${pageContext.request.contextPath}/isMajor"+window.location.search;
				$('a').attr("href",link);
			});
		</script>
	</head>
	<body>
		<div>
			<h2>欢迎进入企业预算财务管理系统功能使用界面！</h2><font size="3px">现在，请选择您所需要的功能。</font>
		</div>
	</body>