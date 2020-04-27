
	function checkform(){
			//获取该元素的值
			//设置用户名的
				var uValue=document.getElementById("user").value;
				if(uValue==""){
					//给出错误警告
					//显示变量的值时，不加双引号
					alert("用户名不能为空");
					return false;
				}
				//设置密码的
				var pValue=document.getElementById("password").value;
				if(pValue==""){
					alert("密码不能为空");
					return false;
				}
				//设置确认密码的
				var rpValue=document.getElementById("repassword").value;
				if(rpValue!=pValue){
					alert("两次密码不一致");
					return false;
				}
				//设置邮箱
				var eValue=document.getElementById("email").value;
				if(!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/.test(eValue)){
					alert("邮箱格式不正确");
					return false;
				}
				var nValue=document.getElementById("name").value;
				if(nValue==""){
					//给出错误警告
					//显示变量的值时，不加双引号
					alert("姓名不能为空");
					return false;
				}
				var cValue=document.getElementById("check").value;
				if(cValue==""){
					alert("验证码输入错误");
					return false;
				}
			}

//聚焦事件，给出提示
			function showTips(id,info){
				document.getElementById(id+"span").innerHTML="<font color='gray' size='2'>"+info+"</font>";
			}
			//离焦事件，校验，并给出提示
			function checkTips(id,info){
				var Value=document.getElementById(id).value;
				if(Value==""){
					document.getElementById(id+"span").innerHTML="<font color='red' size='2'>"+info+"</font>";
				}else{
					document.getElementById(id+"span").innerHTML="";
				}
			}
			//验证确认密码
			function checkpassword(id,info){
				var pValue=document.getElementById("password").value;
				var rpValue=document.getElementById(id).value;
				if(rpValue!=pValue){
					document.getElementById(id+"span").innerHTML="<font color='red' size='2'"+info+"</font>";
				}else{
					document.getElementById(id+"span").innerHTML="";
				}
			}
			
			var cities=new Array(3);
			cities[0]=Array("武汉市","黄冈市","襄阳市","荆州市");
			cities[1]=Array("长沙市","郴州市","株洲市","岳阳市");
			cities[2]=Array("石家庄市","邯郸市","廊坊市","保定市");
			cities[3]=Array("郑州市","洛阳市","开封市","安阳市");
			function changecity(val){
				var cityEle=document.getElementById("city");
				cityEle.options.length=0;
				for(var i=0;i<cities.length;i++){
					if(val==i){
						
						for(var j=0;j<cities[i].length;j++){
							var textNode=document.createTextNode(cities[i][j]);
							var opEle=document.createElement("option");
							opEle.appendChild(textNode);
							cityEle.appendChild(opEle);
						}
					}
				}
			}