<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
	
	.listall{
		width:70%;
		height:130px;
		color:white;
		font-size:15px;
		margin-top:10px;
		text-align: center;
	}
	.listall h5{
		line-height:0px;
		font-size:19px;
	}
	span{
		color:darkred;
		font-size:24px;
	}
</style>
	<div style="width:100%；">
			<div style="width:100%;text-align:center;">
				<span>
					<c:forEach items="${userList }" var="pro">
						<h4>${pro.uname },你好！你的年度整体报告如下：</h4>
					</c:forEach>
				</span>
			</div>
				
			<div class="listall" style="background-color:#9ACFEA;float:left;">
				<c:forEach items="${fixedList }" var="pro">
					<h5>最有固定资产投资方案：</h5>
					<p>${pro.content }</p>
					<p>净现值NPV:${pro.cash }万</p>
				</c:forEach>
				
			</div>
			<div class="listall" style="background-color:#67B168;float:right;">
				<c:forEach items="${investList }" var="pro">
					<h5>最有证券投资方案：</h5>
					<p>${pro.content }</p>
					<p>必要报酬率:${pro.cash }万</p>
				</c:forEach>
				
			</div>
			<div class="listall" style="background-color:#EB7350;float:left;">
				<c:forEach items="${projectList }" var="pro">
					<h5>现有最有项目：</h5>
					<p>${pro.content }
					<p>所需投入资金:${pro.cash }万</p>
				</c:forEach>
				
			</div>
			<div class="listall" style="background-color:#DDA0DD;float:right;">
				<c:forEach items="${debtList }" var="pro">
					<h5>融资最佳方案：</h5>
					<p>${pro.content }</p>
					<p>平均资本成本:${pro.cash }万</p>
				</c:forEach>
				
			</div>
			<div class="listall" style="background-color:#F0AD4E;float:left;">
				<c:forEach items="${chaseList }" var="pro">
					<h5>最佳现金持有方案：</h5>
					<p>${pro.content }</p>
					<p>总成本:${pro.cash }万</p>
				</c:forEach>
				
			</div>
		</div>
		