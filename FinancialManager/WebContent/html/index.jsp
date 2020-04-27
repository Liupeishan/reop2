<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
			
		<title>云财务首页</title>

		<!-- 引入Bootstrap核心样式文件 -->
		<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet"  />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mycss.css" />
		<!-- 引入jQuery核心js文件 -->
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
		<!-- 引入BootStrap核心js文件 -->
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/myjquery.js" ></script>
	</head>
	<body>
	
		<!--logo部分-->
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="main.jsp"></jsp:include>
		<jsp:include page="float.jsp"></jsp:include>
		<!--浮动的侧边栏-->
		
		<!--轮播图-->
		<div style="position:absolute; top:95px;">
			<div style="margin-top:-20px;">
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						<li data-target="#carousel-example-generic" data-slide-to="3"></li>
						<li data-target="#carousel-example-generic" data-slide-to="4"></li>
					</ol>
	
					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<form class="navbar-form navbar-left search" role="search">
					        <div class="form-group">
					          <input type="text" class="form-control" placeholder="Search">
					        </div>
					        <button type="submit" class="btn btn-default" >搜索</button>
					    </form>
						<div class="item active">
							<img src="${pageContext.request.contextPath}/img/59c0a8b848ee1.jpg" alt="...">
							<div class="carousel-caption">
								
							</div>
						</div>
						<div class="item">
							<img src="${pageContext.request.contextPath}/img/veer-300645402.jpg" alt="...">
							<div class="carousel-caption">
								...
							</div>
						</div>
						<div class="item">
							<img src="${pageContext.request.contextPath}/img/5e55e4636f424.jpg" alt="...">
							<div class="carousel-caption">
								...
							</div>
						</div>
						<div class="item">
							<img src="${pageContext.request.contextPath}/img/5e539b3c7f771.jpg" alt="...">
							<div class="carousel-caption">
								...
							</div>
						</div>
						<div class="item">
							<img src="${pageContext.request.contextPath}/img/82565c7d75b5925648a2297d0b2a3ac7.jpg" alt="...">
							<div class="carousel-caption">
								...
							</div>
						</div>
					</div>
	
					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
			
			<!--功能使用-->
			<div class="container">
				<div class="jumbotron" align="center" style="background:#FFFFFF;">
					<h2>云财务--智能云财务助力企业预算转型</h2>
					<p style="font-size:16px;">为小微企业量身打造的一款专业云财务应用，帮助财务人员进行公司各项财务决策，
						包括：固定资产决策、资金预算决策、<br />融资决策、财务结构选择等，
						同时可在线搜索各类经营决策方式，高效、智能提升小微企业财务管理水平。</p>
					<p><a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/html/login.jsp" role="button">决策方法学习</a></p>
				</div>
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<div id="function">
						<ul>
							<li>
								<span class="glyphicon glyphicon-envelope glyphicon-active" data-name="function-1">
									<br /><a href="${pageContext.request.contextPath}/html/login.jsp">分享经验</a>
								</span>
							</li>
							<li>
								<span class="glyphicon glyphicon-search" data-name="function-2">
									<br /><a href="${pageContext.request.contextPath}/html/login.jsp">查询财务策略</a>
								</span>
							</li>
							<li>
								<span class="glyphicon glyphicon-list-alt" data-name="function-3">
									<br /><a href="${pageContext.request.contextPath}/html/login.jsp">预算决策</a>
								</span>
							</li>
						</ul>
					</div>
				</div>
				<!-- 功能解说 -->
				<div class="container" id="function-span">
					<span class="glyphicon glyphicon-triangle-left" aria-hidden="true"></span>
					<div>
						<ul>
							<li>
								<div class="function-detail" data-name="function-1">
									<div class="function-detail-left">
										<font>分享您的财务经验，</font>
										不管是在最新财经新闻中学习到的新方法，
										还是在工作过程中遇到的具有学习意义的经典案例，都可以通过邮件发送给我们
									</div>
									<div class="function-detail-right">
										<div class="function-tr-1">
											<img src="${pageContext.request.contextPath}/img/f073cc69163d402d84eab54190625e04.jpg"  />
										</div>
										<div class="function-tr-2">
											<img src="${pageContext.request.contextPath}/img/234.png"  />
										</div>
										<div class="function-tr-2">
											<img src="${pageContext.request.contextPath}/img/u=204736015,903533963&fm=26&gp=0.jpg"  />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="function-detail none" data-name="function-2">
									<div class="function-detail-left">
										<font>财务管理中有许多策略，</font>
										查看最新最全的方法，不需要书本不需要记忆也快速可以使用。
									</div>
									<div class="function-detail-right">
										<div class="function-tr-1">
											<img src="${pageContext.request.contextPath}/img/2909d399eee14c3f93ce3e52edfccf66.jpg"  />
										</div>
										<div class="function-tr-2">
											<img src="${pageContext.request.contextPath}/img/u=3540212204,1139392553&fm=26&gp=0.jpg"  />
										</div>
										<div class="function-tr-2">
											<img src="${pageContext.request.contextPath}/img/timg1.jpg"  />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="function-detail none" data-name="function-3">
									<div class="function-detail-left">
										<font>企业中遇到很多难以抉择的财务方案？</font>
										云财务帮你决策，为您提供安全保险的方案选择，加入VIP，
										<br />还可以为您私人定制私人咨询。
									</div>
									<div class="function-detail-right">
										<div class="function-tr-1">
											<img src="${pageContext.request.contextPath}/img/u=3534965655,257694616&fm=15&gp=0.jpg"  />
										</div>
										<div class="function-tr-2">
											<img src="${pageContext.request.contextPath}/img/veer-150585107.jpg"  />
										</div>
										<div class="function-tr-2">
											<img src="${pageContext.request.contextPath}/img/small99fdb938aaceaf5761c19e321174d6231579622574.jpg"  />
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<span class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span>
				</div>
			</div>
			
			<!--分类管理-->
			<div class="container" style="margin-top:80px;">
				<div id="type-mana">
					<!-- Indicators -->
					<div id="manager">
						<ul>
							<li style="opacity:1;">
								<span class="glyphicon glyphicon-home">
									<a href="#function">固定资产</a>
								</span>
							</li>
							<li>
								<span class="glyphicon glyphicon-signal">
									<a href="#function">证券</a>
								</span>
							</li>
							<li>
								<span class="glyphicon glyphicon-tasks">
									<a href="#function">项目资金</a>
								</span>
							</li>
							<li>
								<span class="glyphicon glyphicon-yen">
									<a href="#function">融资</a>
								</span>
							</li>
							<li>
								<span class="glyphicon glyphicon-object-align-bottom">
									<a href="#function">资本结构</a>
								</span>
							</li>
							<li>
								<span class="glyphicon glyphicon-calendar">
									<a href="#function">库存现金</a>
								</span>
							</li>
						</ul>
					</div>
					<div class="container" id="manager-span">
						<div class="atitle" style="display:block">
							<ul>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s5.png"  />
										<div class="myatitle">
											<h4>数据可视化实验室移动端作品集</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s6.gif"  />
										<div class="myatitle">
											<h4>知识产权日特别策划 | 版权改"盗"归"正"年代记</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s7.gif"  />
										<div class="myatitle">
											<h4>地球日特别策划 | 你向大海丢弃的塑料哪儿去了？</h4>
										</div>
									</a>
								</li>
								
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s8.gif"  />
										<div class="myatitle">
											<h4>0-100岁，看看哪些高发癌症值得关注？</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s9.gif"  />
										<div class="myatitle">
											<h4>个税专项附加扣除有最优解吗？有！点此计算</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s10.gif"  />
										<div class="myatitle">
											<h4>家庭暴力 从来不是“家务事”</h4>
										</div>
									</a>
								</li>
							</ul>
						</div>
						
						<div class="atitle">
							<ul>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s15.gif"  />
										<div class="myatitle">
											<h4>高铁站离你有多远？①</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s16.gif"  />
										<div class="myatitle">
											<h4>深港双城生活</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s17.gif"  />
										<div class="myatitle">
											<h4>北京奥运十年：场馆们的后奥运时代</h4>
										</div>
									</a>
								</li>
								
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s18.gif"  />
										<div class="myatitle">
											<h4>专利药为什么这么贵？</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s19.jpg"  />
										<div class="myatitle">
											<h4>财新获2018全球最佳数据新闻团队奖 视频回顾颁奖礼精彩瞬间</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s20.gif"  />
										<div class="myatitle">
											<h4>爱眼日特别策划：“眼镜大国”养成记</h4>
										</div>
									</a>
								</li>
								
								
							</ul>
						</div>
						<div class="atitle">
							<ul>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s9.gif"  />
										<div class="myatitle">
											<h4>我们调查了384名高校学生与老师的相处状况，他们说......</h4>
										</div>
									</a>
								</li>
								
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s10.gif"  />
										<div class="myatitle">
											<h4>个税专项附加扣除有最优解吗？有！点此计算</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s11.jpg"  />
										<div class="myatitle">
											<h4>冰川消融威胁：洪水猛兽与水源短缺</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s12.gif"  />
										<div class="myatitle">
											<h4>艾滋病日特别策划：性教育缺位 中国防治形势不容乐观</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s13.gif"  />
										<div class="myatitle">
											<h4>水平面下的阿尔茨海默病</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="../img/statistic/s14.jpg"  />
										<div class="myatitle">
											<h4>高铁站离你有多远？①</h4>
										</div>
									</a>
								</li>
							</ul>
						</div>
						<div class="atitle">
							<ul>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s9.gif"  />
										<div class="myatitle">
											<h4>我们调查了384名高校学生与老师的相处状况，他们说......</h4>
										</div>
									</a>
								</li>
								
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s10.gif"  />
										<div class="myatitle">
											<h4>个税专项附加扣除有最优解吗？有！点此计算</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s11.jpg"  />
										<div class="myatitle">
											<h4>冰川消融威胁：洪水猛兽与水源短缺</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s12.gif"  />
										<div class="myatitle">
											<h4>艾滋病日特别策划：性教育缺位 中国防治形势不容乐观</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s13.gif"  />
										<div class="myatitle">
											<h4>水平面下的阿尔茨海默病</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s14.jpg"  />
										<div class="myatitle">
											<h4>高铁站离你有多远？①</h4>
										</div>
									</a>
								</li>
							</ul>
						</div>
						<div class="atitle">
							<ul>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s21.gif"  />
										<div class="myatitle">
											<h4>2133家博物馆，235万件文物，我们画出了“国家宝藏”的画像</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s22.gif"  />
										<div class="myatitle">
											<h4>你的十年一晃而过，他们的十年很漫长</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s23.jpg"  />
										<div class="myatitle">
											<h4>世界水日特别策划：水都不够用，何以写“物语”？</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s5.png"  />
										<div class="myatitle">
											<h4>数据可视化实验室移动端作品集</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s6.gif"  />
										<div class="myatitle">
											<h4>知识产权日特别策划 | 版权改"盗"归"正"年代记</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s7.gif"  />
										<div class="myatitle">
											<h4>地球日特别策划 | 你向大海丢弃的塑料哪儿去了？</h4>
										</div>
									</a>
								</li>
							</ul>
						</div>
						<div class="atitle">
							<ul>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s9.gif"  />
										<div class="myatitle">
											<h4>我们调查了384名高校学生与老师的相处状况，他们说......</h4>
										</div>
									</a>
								</li>
								
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s10.gif"  />
										<div class="myatitle">
											<h4>个税专项附加扣除有最优解吗？有！点此计算</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="../img/statistic/s11.jpg"  />
										<div class="myatitle">
											<h4>冰川消融威胁：洪水猛兽与水源短缺</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s12.gif"  />
										<div class="myatitle">
											<h4>艾滋病日特别策划：性教育缺位 中国防治形势不容乐观</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s13.gif"  />
										<div class="myatitle">
											<h4>水平面下的阿尔茨海默病</h4>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="${pageContext.request.contextPath}/img/statistic/s14.jpg"  />
										<div class="myatitle">
											<h4>高铁站离你有多远？①</h4>
										</div>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div>
				<h2 align="center">---分享案例---</h2>
				<div style="background-color:#C9302C;height:650px;" id="exmaple">
					<ul>
						<li>
							<img src="${pageContext.request.contextPath}/img/img-bc2c60704bb813b06f6679d6abf830d4.jpg"  height="570px;"/>
							<span class="exmaple-span">
								调整股权结构。目前，中国大多数上市公司股权结构不合理，普通存在国有股比例过大、社会公众股比例偏小的现象。据统计，在2000年上报的沪深两市A股公司中，
								国有股、国有法人股在总股本的比例超过50%的公司有498家，占全部1040家公司的47.88%超过75%的公司有406家，占上市公司总数的39.04%，有的甚至达到93%以上。
								形成事实上的“一股独占”或“一股独大”。增发新股由于全部为社会公众股，相对提高了社会公众股的比重，有利于发挥社会股东的监督和决策作用，
								有利于建立健全完善的公司管理结构。
							</span>
						</li>
						<li>
							<img src="${pageContext.request.contextPath}/img/img-c4c9a5498626ce1f9154a6adb452394d.jpg"  height="570px;"/>
							<span class="exmaple-span">
								蓝天公司是经营机电设备的一家国有企业，改革开放以来由于该企业重视开拓新的市场和保持良好的资本结构，
								逐渐在市场上站稳了脚跟，同时也使企业得到了不断的发展和壮大，在建立现代企业制度的过程中走在了前面。
								为进一步拓展国际市场，公司需要在国外建立一全资子公司。公司目前的资本来源包括面值为1元的普通股
								1000万股和平均利率为10%的3200万元的负债。预计企业当年能实现息税前利润1600万元。
								开办这个全资子公司就是为了培养新的利润增长点，该全资子公司需要投资4000万元。预计该子公司建成投产之后会为公司增加销售收入2000万元，其中变动成本为1100万元，
								固定成本为500万元。该项资金来源有三种筹资形式：(1)以11%的利率发行债券；(2)按面值发行股利率为12%的优先股；(3)按每股20元价格发行普通股。
								在不考虑财务风险的情况下，试分析该公司选择哪一种筹资方式（提示：利用无差别点分析法）。
							</span>
						</li>
						<li>
							<img src="${pageContext.request.contextPath}/img/img-eda3606c9d90b3e1da846d8a5db72bab.jpg"  height="570px;"/>
							<span class="exmaple-span">
								2001年2月5日至20日，青岛啤酒公司上网定价增发社会公众公司普通A股1亿股，每股7.87股，筹集资金净额为7.59元。
								筹额效率较高，其筹资主要投向收购部分异地中外合资啤酒生产企业的外方投资者权，以及对公司全资厂和控股子公司实施技术改造等，由此可以大大提高公司的盈利能力。
								2001年6月，青岛啤酒股份公司召开股东大会，作出了关于授权公司董事分于公司下次年会前最多可购回公司发行在外的境外上市外资股10%的特别决议。公司董事会计划回购H股股份的10%，
								即3468.5万股，虽然这样做将会导致公司注册资本的减少，但是当时H股股价接近于每股净资产值，若按每股净资产值2.36元计算，两地市场存在明显套利空间，仅仅花去了8185.66万元，
								却可以缩减股本比例3.46%，而且可以在原来预测的基础上增加每股盈利。
							</span>
						</li>
						<li>
							<img src="${pageContext.request.contextPath}/img/img-ed1d18b817f5bcb8442d43bc59a6c6c4.jpg"  height="570px;"/>
							<span class="exmaple-span">
								融通资金，持续发展。从资本运作角度出发，上市公司为了今后的可持续性发展，必须寻找并培植新的利润增长点，这就需要大量的资金来保证企业项目的顺利实施。
								上市公司通过配股筹资面临着困境，其主要原因是拥有绝大多数股份的国有股持在者普通资金匮乏，无货币资金参与配股，难以满足上市公司（特别是大股东）筹资的要求；
								再加上国家和法人股不能上市流通，缺乏一个畅通的流通转让渠道，其参与配股的积极性不高，如果放弃配股，
								又会使国在法人处于不利的投资地位，甚至造成国有资产流失。因此，需增发新股。
							</span>
						</li>
						<li style="margin-right:5px;">
							<img src="${pageContext.request.contextPath}/img/img-f653da40d0be110aa3eff724ff465d31.jpg"  height="570px;"/>
							<span class="exmaple-span">
								ABC股份有限公司是一家高科技民营企业，
								其开发和生产的某种纳米材料的市场潜力巨大，公司未来有着非常光明的发展前景。
								公司目前正处于创业阶段，急需资金支持。但是由于公司规模较小，
								且目前（初创阶段）的盈利水平和现金净流量较低等诸多条件的限制，
								公司难以通过向公众发行股票的方式来筹集资金。ABC公司采取的筹资方案是，
								定向（非公开）向若干战略投资者发行价值800万元、利率为10%的抵押公司债券。
								债券投资者认为，如果任ABC公司的股东和管理者自行其是，以公司的资产作为保证借入新的债务，
								显然将使原有债权人暴露在更大的风险之下。出于保持或增加其索偿权的安全性的愿望，
								经与ABC公司协商后双方共同在债务契约中写入若干保护性条款，
								其中规定允许公司只有在满足下列条件的前提下才能发行其他公司债券：(1)税前利息保障倍数大于4；
								(2)抵押资产的净折余价值保持在抵押债券价值的2倍以上；(3)负债与权益比率不高于0.5。
							</span>
						</li>
					</ul>
				</div>
			</div>
			<div class="container">
				<div id="bottom1">
						<p>
							财新网所刊载内容之知识产权为财新传媒及/或相关权利人专属所有或持有。未经许可，禁止进行转载、摘编、复制及建立镜像等任何使用。
							<br /><a href="#">京ICP证090880号</a>京ICP备：10026701 | 
							<a href="#">京公网安备 11010502034662号</a>|<a href="#">广播电视节目制作经营许可证：京第1015号</a>
							|<a href="#">出版物经营许可证：第直100013号</a><br  />
							Copyright 财新网 All Rights Reserved 版权所有 复制必究<br  />
							违法和不良信息举报电话：<a href="#" style="color:bule;">010-85905141</a>　举报邮箱：laixin@caixin.com
						</p>
					</div>
					<div id="bottom2">
						<a href="#">关于我们</a>|
						<a href="#">加入我们</a>|
						<a href="#">云财务预算管理</a>|
						<a href="#">意见与反馈</a>|
						<a href="#">提供新闻线索</a>|
						<a href="#">联系我们</a>|
						<a href="#">友情链接</a>|
						<a href="#">网站地图</a>|<br  />
					</div>
			</div>
		</div>
	</body>

</html>