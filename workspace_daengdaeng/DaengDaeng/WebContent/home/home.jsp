<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	String cname, cid, cpw;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<link rel="daengdaeng icon" href="images/favicon.ico" type="image/x-icon" />
	<title>����� ��Ʈ</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="assets/css/main.css" />

	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->

	<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
	 	<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollzer.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
		<script src="assets/js/ie/respond.min.js"></script>
			<script src="assets/js/main.js"></script> 
</head>
<body>
<%
	cname = (String)session.getAttribute("cname");
	cid = (String)session.getAttribute("cid");
	cpw = (String)session.getAttribute("cpw");

%>
<!-- Header -->
<div id="header">
		<div class="top">
		<section id="info">
		<input id="info" type="hidden" name="cid" size="10" value=<%=cid %>><%=cid %>�� �ȳ��ϼ���
		<a href="login/modify.jsp"><button class="btn_sm">ȸ����������</button><br><br>
		<a href="login/logout.jsp"><button class="btn_sm">�α׾ƿ�</button>
		</section>

	<!-- Nav -->
	
	
	<nav id="nav">
	<ul>
		<li><a href="register/dlist.dod" id="top-link" class="skel-layers-ignoreHref"><img src="icons/dog_gray.png"/>����� ���</a></li>
		<li><a href="#" id="portfolio-link" class="skel-layers-ignoreHref">����� ���̾</a>
		<ul id="subMenu">
			<li id="subMenu_li"><a href="calendar/calendarlist.doc" id="portfolio-link" class="skel-layers-ignoreHref"><img src="icons/calendar_gray.png"/>����� ����</a></li>
			<li id="subMenu_li"> <a href="photo/photolist.dop" id="portfolio-link" class="skel-layers-ignoreHref"><img src="icons/write_gray.png"/>����� �߾�</a><li>
			<li id="subMenu_li"><a href="health/healthhome.jsp" id="about-link" class="skel-layers-ignoreHref"><img src="icons/health_gray.png"/>����� �ǰ���ø</a></li>
		</ul>
		</li>
		<li><a href="#" id="contact-link" class="skel-layers-ignoreHref">����� Ŀ��Ƽ��</a>
		<ul id="subMenu">
			<li><a href="board/list.do" id="portfolio-link" class="skel-layers-ignoreHref"><img src="icons/chat_gray.png"/>��������</a></li>
			<li><a href="adopt/alist.jsp" id="portfolio-link" class="skel-layers-ignoreHref"><img src="icons/location_gray.png"/>���������</a><li>
		</ul>
		</li>
	</ul>
	</nav>
	
	</div>
</div>

	
<!-- Main -->
<div id="main">
	<!-- Intro -->
	<section id="top" class="one dark cover">
		<div class="container">
		<header>
			<img class="logo_img" src="images/logo001.png"/><Br>
		</header>
		<input type="hidden" name="cid" size="10" value=<%=cid %>><%=cid %>�� �ȳ��ϼ���
		</div>
		<br><Br>
		<div style="margin-left:30%;">
		
	<a href="adopt/alist.doa" ><img src="icons/home.png">�Ծ�����</a>&nbsp; &nbsp; &nbsp;&nbsp;
	<a href="lost/llist.dol"><img src="icons/lost.png"/>��������</a>&nbsp; &nbsp; &nbsp;&nbsp;
	<a href="watch/wlist.dow" ><img src="icons/watch.png"/>���������</a>
	<br>
		
		</div>
	</section>


</div>

	<img src="images/home_dog2.jpg" width="100%">
	

		<!-- Footer -->
			<div id="footer" >

				<!-- Copyright -->
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>

			</div>


</body>
</html>