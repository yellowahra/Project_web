 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="daengdaeng icon" href="../images/favicon.ico" type="image/x-icon" />
	<title>����� ��Ʈ-ȸ������</title>
	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="../assets/css/main.css" />
	<link rel="stylesheet" href="../assets/css/joinin.css" />
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	
	<!-- Scripts -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.scrolly.min.js"></script>
	<script src="../assets/js/jquery.scrollzer.min.js"></script>
	<script src="../assets/js/skel.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/ie/respond.min.js"></script>
	<script src="../assets/js/main.js"></script> 

</head>
<body>
<!-- Header -->
<div id="header">
	<div class="top">
		<nav id="join_login">
		<a href="join.jsp" ><button class="btn_sm">ȸ������</button></a><br><br>
		<a href="../login/login.html"><button class="btn_sm">�α���</button></a>
		</nav>
		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a href="../login/login.html" id="top-link" class="skel-layers-ignoreHref"><img src="../icons/dog_gray.png"/>����� ���</a></li>
				<li><a href="#" id="portfolio-link" class="skel-layers-ignoreHref">����� ���̾</a>
				<ul id="subMenu">
					<li id="subMenu_li"><a href="../login/login.html" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/calendar_gray.png"/>����� ����</a></li>
					<li id="subMenu_li"> <a href="../login/login.html" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/write_gray.png"/>����� �߾�</a><li>
					<li id="subMenu_li"><a href="../login/login.html" id="about-link" class="skel-layers-ignoreHref"><img src="../icons/health_gray.png"/>����� �ǰ���ø</a></li>
				</ul>
				</li>
				<li><a href="#" id="contact-link" class="skel-layers-ignoreHref">����� Ŀ��Ƽ��</a>
				<ul id="subMenu">
					<li><a href="../login/login.html" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/chat_gray.png"/>��������</a></li>
					<li><a href="../adopt/alist.doa" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/location_gray.png"/>���������</a><li>
				</ul>
				</li>
			</ul>
		</nav>
	</div>
</div>

<!-- Main -->
<div id="top2">
	<img src="../images/logo002.png" id="logo_img"/>
</div>

	
<!-- Main -->

<div id="main" >
 <p style="font-size: 160%; color: black; margin-bottom: -10%;" >ȸ������</p>
</div>

		<form action="joinwrite.doj" method="post">
			�̸�: <input type="text" name="cname" size="20">
			���̵�: <input type="text" name="cid" size="20">
			��й�ȣ: <input type="text" name="cpw" size="20">
			�̸���: <input type="text" name="cemail" size="30"><br>
			<center><input type="submit" value="�Է�"></center>
		</form>



		<!-- Footer -->
			<div id="footer">

				<!-- Copyright -->
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>

			</div>
</body>
</html>