<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>后台管理页面</title>
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
		<style>
		
			table td{
				border:1px solid #cccccc;
			}
		
		</style>
		<script>
			$(function(){
				
				
				$('button').click(function(){
					var link="${pageContext.request.contextPath}/itemsList"+parent.window.location.search+"&table="+document.getElementById("items").value;
					//alert(link);
					$('form').attr("action",link);
				});
			});
			
			function delItems(content){
				var isDel = confirm("您确认要删除吗？");
				if(isDel){
					//要删除
					location.href = "${pageContext.request.contextPath}/itemsDelete"+window.location.search+"&content="+content;
				}
			}
			function select(info){
				document.getElementById("getString").innerHTML=info;
				
			}
		</script>
	<form method="post" action="" id="form">
		<select id="items">
			<option>请选择：</option>
			<option value="fixedasset" onclick='select("净现值NPV")'>固定资产投资项目：</option>
			<option value="investment" onclick='select("必要报酬率")'>证券组合投资项目：</option>
			<option value="project" onclick='select("所需资金")'>项目需要资金预算：</option>
			<option value="debt" onclick='select("平均资本成本")'>融资方案：</option>
			<option value="chase" onclick='select("总成本")'>最佳现金持有方案：</option>
		</select>
		<button type="submit">确定</button>
	</form>
	<table width="100%" cellspacing="0" style="border:1px solid grey; " >
		<tr height="40px">
			<td width="70%" align="center">项目内容</td>
			<td width="20%" align="center" id="getString">
				<%=request.getAttribute("tableInfo")==null?"":request.getAttribute("tableInfo")%>
			</td>
			<td width="10%" align="center">删除</td>
		</tr>
		
		<c:forEach items="${itemsList }" var="pro" varStatus="vs">
			<tr style="border-top: 1px solid #cccccc; border-bottom: 1px solid #cccccc;">
				<td width="70%" align="center">${pro.content }</td>
				<td width="20%" align="center">${pro.cash }</td>
				<td width="10%" align="center"><a href="javascript:void(0);" onclick="delItems('${pro.content}')">删除</a></td>
			</tr>
		</c:forEach>
	</table>