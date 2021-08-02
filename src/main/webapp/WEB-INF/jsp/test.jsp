<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WelCome</title>
</head>
<body background="/images/body.jpg" onload="load()">
<script>
	function load(){
		document.getElementById('clientWidth').value = document.body.clientWidth;
		document.getElementById('clientHeight').value = document.body.clientHeight;
	}
	function goView(obj){
		if(obj == 'docker'){
			window.open ('dockerView','_top');
		}
		else if(obj =='kuai8'){
			window.open ('kuai8View','_top');
		}
		else if(obj =='bootstrap'){
			window.open ('bootstrap','_top');
		}
		else if(obj =='mima'){
			window.open ('mima','_top');
		}
		else if(obj =='redis'){
			window.open ('redis','_top');
		}
	}
</script>

<form action="" name="searchForm">
<div class="main-heading">
	<h1 class="text-center" style="color: #fff;">
		My HomePage
	</h1>
	
</div>
<div>
	<p style="color: #fff;">屏幕宽度：</p>
	<input type="text" id="clientWidth">
	<p style="color: #fff;">屏幕高度：</p>
	<input type="text" id="clientHeight">
</div>
<div class="h50"></div>
<div class="main-line pb0">
	<div class="container">
		<div class="row mainAuction text-center">
			<label class="screen-reader-text" for="s">Search for:</label>
			<div class="sf_search" id="search">
				<span class="sf_block">
				<input class="sf_input" placeholder="Search for:" autocomplete="off" type="text"  name="v_search" >
				</span>
			</div>
		</div>
	</div>
</div>
<div class="h10"></div>
<div class="main-line pb0">
	<div class="container">
		<div class="row mainAuction">
			<div class="main-heading">
				<span  class="menu-tab">
					简历
				</span>
			</div>
			<div class="col-sm-12 col-xs-12">
			<!--left start-->
				<div class="left-wrap clear">
						<div class="col-sm-3 col-xs-6 item album animation">
							<a class="cdAlbum" href="#" onclick="goView('docker')">
								<img src="/images/cv.jpg" class="center-block">
							</a>	
						</div>
				</div>
			</div>
		</div>
		<!--//row-->
	</div>
</div>
<div class="h10"></div>
<div class="main-line pb0">
	<div class="container">
		<div class="row mainAuction">
			<div class="main-heading">
				<span  class="menu-tab" onclick="goView('mima')">
					知识点
				</span>
			</div>
			<div class="col-sm-12 col-xs-12">
			<!--left start-->
				<div class="left-wrap clear">
						<div class="col-sm-3 col-xs-6 item album animation">
							<a class="cdAlbum" href="#" onclick="goView('docker')">
								<img src="/images/docker_over.jpg" class="center-block">
							</a>	
						</div>
						<div class="col-sm-3 col-xs-6 item album animation ">
							<a class="cdAlbum" href="#" onclick="goView('bootstrap')">
								<img src="/images/bootstrap.jpg" class="center-block">
							</a>	
						</div>
						<div class="col-sm-3 col-xs-6 item album animation ">
							<a class="cdAlbum" href="#" onclick="goView('springboot')">
								<img src="/images/springboot.jpg" class="center-block">
							</a>	
						</div>
						<div class="col-sm-3 col-xs-6 item album animation ">
							<a class="cdAlbum" href="#" onclick="goView('nginx')">
								<img src="/images/nginx.jpg" class="center-block">
							</a>	
						</div>
						<div class="col-sm-3 col-xs-6 item album animation ">
							<a class="cdAlbum" href="#" onclick="goView('python')">
								<img src="/images/python.jpg" class="center-block">
							</a>	
						</div>
						<div class="col-sm-3 col-xs-6 item album animation ">
							<a class="cdAlbum" href="#" onclick="goView('redis')">
								<img src="/images/redis.png" class="center-block">
							</a>	
						</div>
				</div>
			</div>
			<!--//left-->
			<!--right start-->
			<!-- <div class="col-sm-6 col-xs-12 right mb10-xs">
					<div class="right-wrap clear">
						<div class="col-sm-6 col-xs-6 item album animation">
							<a class="cdAlbum" href="#">
								<img src="/images/kuai8.jpg" class="center-block">
							</a>	
						</div>
						<div class="col-sm-6 col-xs-6 item album animation">
							<a class="cdAlbum" href="#">
								<img src="/images/bootstrap.jpg" class="center-block">
							</a>	
						</div>
					</div>
			</div> -->
			<!--//right-->
		</div>
		<!--//row-->
	</div>
</div>
<div class="h10"></div>
<div class="main-line pb0">
	<div class="container">
		<div class="row mainAuction">
			<div class="main-heading">
				<span  class="menu-tab">
					彩票
				</span>
			</div>
			<div class="col-sm-12 col-xs-12">
			<!--left start-->
				<div class="left-wrap clear">
						<div class="col-sm-3 col-xs-6 item album animation">
							<a class="cdAlbum" href="#" onclick="goView('kuai8')">
								<img src="/images/kuai8.jpg" class="center-block">
							</a>	
						</div>
				</div>
			</div>
		</div>
		<!--//row-->
	</div>
</div>

</form>
</body>
</html>