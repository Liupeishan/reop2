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
				var link="${pageContext.request.contextPath}/fixed"+window.location.search;
				$('form').attr("action",link);
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
	<!--功能一-->
				<div class="select">
					<form action="${pageContext.request.contextPath}/fixed" method="post">
						<div class="select-1">
							<h4>方案一：</h4>
							<p>初期投入：</p>
							<font>原始投资（不包含固定资产暨无形资产投入）：</font>
							<input type="text"  name="oneaa1" onkeyup="ValidateFloat(this, value)"/>
							<p>固定资产：</p>
							<font>固定资产使用年限：</font>
							<input type="number" name="oneba1" onkeyup="ValueZero(this)"/>
							<font>固定资产投资额：</font>
							<input type="text" name="onebb1" onkeyup="ValidateFloat(this, value)"/>
							<font>固定资产净残值：</font>
							<input type="text" name="onebc1" onkeyup="ValidateFloat(this, value)"/>
							<p>无形资产：</p>
							<font>无形资产使用年限：</font>
							<input type="number" name="oneca1" onkeyup="ValueZero(this)"/>
							<font>无形资产投资额：</font>
							<input type="text" name="onecb1" onkeyup="ValidateFloat(this, value)"/>
							<p>经营期：</p>
							<font>投资年限：</font>
							<input type="number" name="oneda1" onkeyup="ValueZero(this)"/>
							<font>每年投入：</font>
							<input type="text" name="onedb1" onkeyup="ValidateFloat(this, value)"/>
							<font>每年所得：</font>
							<input type="text" name="onedc1" onkeyup="ValidateFloat(this, value)"/>
							<br  /><br  />
							<font>所得税税率：</font>
							<input type="number" name="onefa1"/>
							<font>折现率：</font>
							<input type="number" name="onefb1" onkeyup="ValueZero(this)"/>
						</div>
						<div class="select-2">
							<h4>方案二：</h4>
							<p>初期投入：</p>
							<font>原始投资（不包含固定资产暨无形资产投入）(万)：</font>
							<input type="text"  name="oneaa2" onkeyup="ValidateFloat(this, value)"/>
							<p>固定资产：</p>
							<font>固定资产使用年限(年)：</font> 
							<input type="number" name="oneba2" onkeyup="ValueZero(this)"/>
							<font>固定资产投资额(万)：</font>
							<input type="text" name="onebb2" onkeyup="ValidateFloat(this, value)"/>
							<font>固定资产净残值(万)：</font>
							<input type="text" name="onebc2" onkeyup="ValidateFloat(this, value)"/>
							<p>无形资产：</p>
							<font>无形资产使用年限(年)：</font>
							<input type="number" name="oneca2" onkeyup="ValueZero(this)"/>
							<font>无形资产投资额(万)：</font>
							<input type="text" name="onecb2" onkeyup="ValidateFloat(this, value)"/>
							<p>经营期：</p>
							<font>投资年限(年)：</font>
							<input type="number" name="oneda2" onkeyup="ValueZero(this)"/>
							<font>每年投入(万)：</font>
							<input type="text" name="onedb2" onkeyup="ValidateFloat(this, value)"/>
							<font>每年所得(万)：</font>
							<input type="text" name="onedc2" onkeyup="ValidateFloat(this, value)"/>
							<br  /><br  />
							<font>所得税税率(%)：</font>
							<input type="number" name="onefa2"/>
							<font>折现率(%)：</font>
							<input type="number" name="onefb2" onkeyup="ValueZero(this)"/>
						</div>
						<br  /><br  />
						<button type="submit" style="width:400px; height:35px; background:#28A4C9;border-radius:20px; margin-left:30px;">提交</button>
					</form>
					<div class="outcome">
						<p>净现值NPV：</p>
						<font>方案一：</font><span class="outcome-1"><%=request.getAttribute("assertoc1")==null?"":request.getAttribute("assertoc1")%></span><br  />
						<font>方案二：</font><span class="outcome-2"><%=request.getAttribute("assertoc2")==null?"":request.getAttribute("assertoc2")%></span>
						<p>最佳方案：</p>
						<div style="font-size:18px; color:red; height:20px;"><%=request.getAttribute("assertInfo")==null?"":request.getAttribute("assertInfo")%></div>
					</div>
				</div>
</body>
</html>