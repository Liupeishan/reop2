<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/register.js" ></script>
<style>

	#table{
		width:510px;
		background-image: url(${pageContext.request.contextPath}/img/659cefc7be7e33256bc7ad058f0fad68.jpg);
		background-size:cover;
		height:800px;
		margin:0 auto;
		text-align: center;
	}
	#password{
		position: absolute;
		top:205px;
		right:450px;
	}
	#infor{
		position: absolute;
		top:430px;
		right:415px;
	}
	#submituser{
		position: absolute;
		top:680px;
		right:455px;
	}
	#submituser button{
		width:90px;
		height:90px;
		font-size:16px;
		border-radius: 50%;
		background:#761C19;
		color:white;
	}
	#updateuser{
		position:fixed;
		top:100px;
		left:300px;
		display:none;
	}
	form font{
		color:white;
	}
	#updateuser button{
		width:60px;
		height:60px;
		font-size:15px;
		border-radius: 50%;
		background:#761C19;
		color:white;
	}
</style>
<script>
	function confirm(id){
		var link="${pageContext.request.contextPath}/updateUser?id="+id;
		$('form').attr("action",link);
		$('#updateuser').css("display","block");
	}
	function hide(){
		$('#updateuser').css("display","none");
	}
</script>
		<c:forEach items="${userList }" var="pro">
			<div id="table">
				<div id="password">
					<p><font size="5px">${pro.uname }</font></p>
					<p>密码：${pro.upassword }</p>
				</div>
				<div id="infor">
					<p>性别：${pro.usex }</p>
					<p>电子邮箱：${pro.umail }</p>
					<p>电话号码：${pro.utnumber }</p>
				</div>
				<div id="submituser">
					<button type="submit" onclick="confirm('${pro.id }')">编辑信息</button>
				</div>
			</div>	
				
		</c:forEach>
		
		<div id="updateuser">
			<form action="" method="post">
						<table border="0px" cellspacing="0px" cellpadding="0px" width="450px" height="300px" align="center" bgcolor="darkred">
							<tr>
								<td colspan="2" align="center"><font size="4px">修改信息</font></td>
							
							</tr>
							<tr>
								<td align="right">
									<font>用户名</font>
								</td>
								<td align="center">
									<input type="text" name="uname" size="25" placeholder="请输入用户名" id="user" onfocus="showTips('user','用户名必填！')" onblur="checkTips('user','用户名不能为空！')"/>
								</td>
								<td width="140px">
									<span id="userspan"></span>
								</td>
							</tr>
							<tr>
								<td align="right">
									<font>密码</font>
								</td>
								<td align="center">
									<input type="password" name="upassword" size="25" placeholder="请确认密码" id="repassword" onfocus="showTips('repassword','请输入确认密码')" onblur="checkpassword('repassword','两次密码不一致')"/>
								</td>
								<td>
									<span id="repasswordspan"></span>
								</td>
							</tr>
							<tr>
								<td align="right">
									<font>性别</font>
								</td>
								<td align="center">
									<input type="radio" name="usex" value="男"  />男&nbsp; &nbsp;&nbsp;&nbsp;
									<input type="radio" name="usex" value="女" checked="checked" />女
								</td>
								<td></td>
							</tr>
							<tr>
								<td align="right">
									<font>Email</font>
								</td>
								<td align="center">
									<input type="email" name="umail" size="25" id="email" onfocus="showTips('email','邮箱必填！')" onblur="checkTips('email','邮箱不能为空！')"/>
								</td>
								<td>
									<span id="emailspan"></span>
								</td>
							</tr>
							<tr>
								<td align="right">
									<font>电话号码</font>
								</td>
								<td align="center">
									<input type="tel" name="utnumber" size="25" />
								</td>
								<td>
									
								</td>
							</tr>
							
							<tr>
								<td colspan="2" align="center">
									<button type="submit">确认修改</button>
								</td>
								<td>
									<button type="button" onclick="hide()">取消</button>
								</td>
							</tr>
						</table>
					</form>
			
		</div>