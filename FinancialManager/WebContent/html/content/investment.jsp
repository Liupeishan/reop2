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
				
				var link="${pageContext.request.contextPath}/invest"+window.location.search;
				
				$('form').attr("action",link);
				//alert("kslaks");
			});
			function ValidateFloat(e, pnumber){ 
				if (!/^\d+[.]?\d*$/.test(pnumber)){ 
					$(e).val(/^\d+[.]?\d*/.exec($(e).val())); 
					alert("请输入数字");
					return false; 
				} 
			} 
			function ValueZero(e){
				var reg = /^\+?[1-9]\d*$/;
				var val = $(e).val()
				if (!reg.test(val)) {
					alert("请输入正整数！");
				//Toast("请输入正整数！");
				return false;

				}

			}
		</script>
		
	</head>


<body>
	<!--功能二-->
				<div class="select">
					<form method="post" action="">
						<div class="select-1">
							<h4>方案一：</h4>
							<font>贝塔系数：</font>
							<input type="text"  name="twoaa1"  onkeyup="ValidateFloat(this, value)"/>
							<font>无风险报酬率(%)：</font>
							<input type="number" name="twoab1"/>
							<font>股票市场期望收益率(%)：</font>
							<input type="number" name="twoac1"/>
						</div>
						<div class="select-2">
							<h4>方案二：</h4>
							<font>贝塔系数：</font>
							<input type="text"  name="twoaa2"  onkeyup="ValidateFloat(this, value)"/>
							<font>无风险报酬率(%)：</font>
							<input type="number" name="twoab2"/>
							<font>股票市场期望收益率(%)：</font>
							<input type="number" name="twoac2"/>
							<br /><br /><button type="submit" style="width:400px; height:35px; background:#28A4C9;border-radius:20px; margin-left:30px;">提交</button>
						</div>
					</form>
					<div class="outcome">
						<p>必要报酬率(%)：</p>
						<font>方案一：</font><span class="outcome-1"><%=request.getAttribute("investoc1")==null?"":request.getAttribute("investoc1")%></span><br  />
						<font>方案二：</font><span class="outcome-2"><%=request.getAttribute("investoc2")==null?"":request.getAttribute("investoc2")%></span>
						<p>最佳方案：</p>
						<div style="font-size:18px; color:red; height:20px;"><%=request.getAttribute("investInfo")==null?"":request.getAttribute("investInfo")%></div>
					</div>
				</div>
</body>
</html>