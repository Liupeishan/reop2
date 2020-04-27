<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
<style>

	table td{
		border:1px solid #cccccc;
	}
	#updatemethod{
		display:none;
		position:absolute;
		top:100px;
		left:200px;
		width:550px;
		height:380px;
		background-color:darkred;
		color:white;
		text-align:center;
	}
	#updatemethod button{
		width:90px;
		height:50px;
		font-size:15px;
		border-radius: 50%;
		background:#761C19;
		color:white;
	}
</style>
<script>
	function delMethod(tname){
		var isDel = confirm("您确认要删除吗？");
		if(isDel){
			//要删除
			location.href = "${pageContext.request.contextPath}/methodDelete"+window.location.search+"&tname="+tname;
		}
	}
	function updateMethod(tname){
		var link="${pageContext.request.contextPath}/updateMethod"+window.location.search+"&tname="+tname;
		$('form').attr("action",link);
		$('#updatemethod').css("display","block");
	}
	function hide(){
		$('#updatemethod').css("display","none");
	}
</script>
		<table width="100%" cellspacing="0" style="border:1px solid grey; " >
			<tr height="40px">
				<td width="6%" align="center">方法名称</td>
				<td width="8%" align="center">分类</td>
				<td width="22%" align="center">内容</td>
				<td width="15%" align="center">优点</td>
				<td width="15%" align="center">缺点</td>
				<td width="26%" align="center">相关案例</td>
				<td width="4%" align="center">编辑</td>
				<td width="4%" align="center">删除</td>
			</tr>
			
			<c:forEach items="${methodList }" var="pro" varStatus="vs">
				<tr style="border-top: 1px solid #cccccc; border-bottom: 1px solid #cccccc;">
					<td width="8%" align="center">${pro.tname }</td>
					<td width="10%" align="center">${pro.type }</td>
					<td width="24%" align="center">${pro.tcontent }</td>
					<td width="16%" align="center">${pro.tadv }</td>
					<td width="16%" align="center">${pro.tdef }</td>
					<td width="28%" align="center">${pro.ex }</td>
					<td width="4%" align="center"><a href="javascript:void(0);" onclick="updateMethod('${pro.tname }')">编辑</a></td>
					<td width="4%" align="center"><a href="javascript:void(0);" onclick="delMethod('${pro.tname}')">删除</a></td>
				</tr>
			</c:forEach>
		</table>
		
		<div id="updatemethod">
			<form method="post" action="">
				<p><font size="4px">修改方法信息</font></p>
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
				<button type="submit">确认修改</button>
				<button type="button" onclick="hide()">取消</button>
			</form>
		</div>