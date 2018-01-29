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
	<title>댕댕이 노트-회원정보 수정</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="assets/css/main.css" />
	<link rel="stylesheet" href="assets/css/joinin.css" />
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
<%
	cname = (String)session.getAttribute("cname");
	cid = (String)session.getAttribute("cid");
	cpw = (String)session.getAttribute("cpw");

%>
<!-- Header -->
<div id="header">
		<div class="top">
		<section id="info">
		<input id="info" type="hidden" name="cid" size="10" value=<%=cid %>><%=cid %>님 안녕하세요
		<a href="modify.jsp"><button class="btn_sm">회원정보수정</button><br><br>
		<a href="logout.jsp"><button class="btn_sm">로그아웃</button>
		</section>
	</nav>
	<!-- Nav -->
	<nav id="nav">
	<ul>
		<li><a href="register/dlist.dod" id="top-link" class="skel-layers-ignoreHref"><img src="icons/dog_gray.png"/>댕댕이 등록</a></li>
		<li><a href="#" id="portfolio-link" class="skel-layers-ignoreHref"><img src="icons/calendar_gray.png"/>댕댕이 다이어리</a>
		<ul id="subMenu">
			<li id="subMenu_li"><a href="calendar/calendarlist.doc" id="portfolio-link" class="skel-layers-ignoreHref"><img src="icons/write_gray.png"/>댕댕이 일정</a></li>
			<li id="subMenu_li"> <a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><img src="icons/write_gray.png"/>댕댕이 추억</a><li>
			<li id="subMenu_li"><a href="health/healthhome.jsp" id="about-link" class="skel-layers-ignoreHref"><img src="icons/health_gray.png"/>댕댕이 건강수첩</a></li>
		</ul>
		</li>
		<li><a href="#" id="contact-link" class="skel-layers-ignoreHref"><img src="icons/dog_gray.png"/>댕댕이 커뮤티니</a>
		<ul id="subMenu">
			<li><a href="board/list.do" id="portfolio-link" class="skel-layers-ignoreHref"><img src="icons/chat_gray.png"/>정보공유</a></li>
			<li><a href="adopt/alist.doa" id="portfolio-link" class="skel-layers-ignoreHref"><img src="icons/location_gray.png"/>유기견정보</a><li>
		</ul>
		</li>
	</ul>
	</nav>
	</div>
</div>
<div id="top2">
	<img src="images/logo002.png" id="logo_img"/>
</div>
	
<!-- Main -->
<div id="main">
	
	<%=	session.getAttribute("cid")%>님의 회원정보 수정이 정상 처리되었습니다.<br>
	<a href="logout.jsp"><button class="btn_sm">로그아웃</button></a>&nbsp;&nbsp; <a href="modify.jsp"><button class="btn_sm">회원정보 수정</button></a>
	<a href="home.jsp"><button class="btn_sm">홈으로</button></a>

</div>

		<!-- Footer -->
			<div id="footer">

				<!-- Copyright -->
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>

			</div>

</body>
</html>