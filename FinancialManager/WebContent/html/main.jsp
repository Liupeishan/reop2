<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script>
	function loading(tname){
		window.location.href = "${pageContext.request.contextPath}/methodBytname?tname="+tname;
	}
</script>
<div id="main">
			<div id="maintop">
				<div id="mainnav">
					<a href="#" style="float:left;font-size:20px;padding:18px;color:#3E8F3E;">企业预算财务管理</a>
					<ul>
						<li style="margin-left:100px;">
							<a href="javascript:void(0)">固定资产投资</a>
							<div class="navdiv">
								<ul>
									<c:forEach items="${getMethodByTypeFA }" var="pro" varStatus="vs">
										<li onclick="loading('${pro.tname }')">${pro.tname }</li>
									</c:forEach>
								</ul>
							</div>
						</li>
						<li>
							<a href="javascript:void(0)">证券投资</a>
							<div class="navdiv">
								<ul>
									<c:forEach items="${getMethodByTypeIV }" var="pro" varStatus="vs">
										<li onclick="loading('${pro.tname }')">${pro.tname }</li>
									</c:forEach>
								</ul>
							</div>
						</li>
						<li>
							<a href="javascript:void(0)">项目资金</a>
							<div class="navdiv">
								<ul>
									<c:forEach items="${getMethodByTypeP }" var="pro" varStatus="vs">
										<li onclick="loading('${pro.tname }')">${pro.tname }</li>
									</c:forEach>
								</ul>
							</div>
						</li>
						<li>
							<a href="javascript:void(0)">融资选择</a>
							<div class="navdiv">
								<ul>
									<c:forEach items="${getMethodByTypeGM }" var="pro" varStatus="vs">
										<li onclick="loading('${pro.tname }')">${pro.tname }</li>
									</c:forEach>
								</ul>
							</div>
						</li>
						<li>
							<a href="javascript:void(0)">现金持有量</a>
							<div class="navdiv">
								<ul>
									<c:forEach items="${getMethodByTypeC }" var="pro" varStatus="vs">
										<li onclick="loading('${pro.tname }')">${pro.tname }</li>
									</c:forEach>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>