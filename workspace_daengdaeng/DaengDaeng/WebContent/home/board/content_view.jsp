<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%!
	String cname, cid, cpw;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<link rel="daengdaeng icon" href="../images/favicon.ico" type="image/x-icon" />
	<title>����� ��Ʈ-��������</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="../assets/css/main.css" />
	<link rel="stylesheet" href="board.css" />
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
<%
	cname = (String)session.getAttribute("cname");
	cid = (String)session.getAttribute("cid");
	cpw = (String)session.getAttribute("cpw");

%>
<!-- Header -->

<div id="header">
		<div class="top">
	<% if(session.getAttribute("cid")!=null){ %>
		<section id="info">
		<input id="info" type="hidden" name="cid" size="10" value=<%=cid %>><%=cid %>�� �ȳ��ϼ���
		<a href="../login/modify.jsp"><button class="btn_sm">ȸ����������</button><br><br>
		<a href="../login/logout.jsp"><button class="btn_sm">�α׾ƿ�</button>
		</section>
	<% } else{ %>
		<nav id="join_login">
		<a href="../join/join.jsp" ><button class="btn_sm">ȸ������</button></a><br><br>
		<a href="../login/login.html"><button class="btn_sm">�α���</button></a>
	</nav>
	<%} %>
	<!-- Nav -->
	<nav id="nav">
	<ul>
		<li><a href="../register/dlist.dod" id="top-link" class="skel-layers-ignoreHref"><img src="../icons/dog_gray.png"/>����� ���</a></li>
		<li><a href="#" id="portfolio-link" class="skel-layers-ignoreHref">����� ���̾</a>
		<ul id="subMenu">
			<li id="subMenu_li"><a href="../calendar/calendarlist.doc" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/calendar_gray.png"/>����� ����</a></li>
			<li id="subMenu_li"> <a href="../photo/photolist.dop" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/write_gray.png"/>����� �߾�</a><li>
			<li id="subMenu_li"><a href="../health/healthhome.jsp" id="about-link" class="skel-layers-ignoreHref"><img src="../icons/health_gray.png"/>����� �ǰ���ø</a></li>
		</ul>
		</li>
		<li><a href="#" id="contact-link" class="skel-layers-ignoreHref">����� Ŀ��Ƽ��</a>
		<ul id="subMenu">
			<li><a href="list.do" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/chat_gray.png"/>��������</a></li>
			<li><a href="../adopt/alist.doa" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/location_gray.png"/>���������</a><li>
		</ul>
		</li>
	</ul>
	</nav>
	</div>
</div>
<div id="top2">
	<img src="../images/logo002.png" id="logo_img"/>
</div>
	
<!-- Main -->
<div id="main">
	<table class="content_view"  cellpadding="0" cellspacing="0" border="1">
		<form action="modify.do" method="post">
			<input type="hidden" name="bId" value="${content_view.bId}">
			<tr>
				<td id="head">��ȣ</td>
				
				<td>${content_view.bId}</td>
			</tr>
			<tr>
				<td id="head">��ȸ��</td>
				<td>${content_view.bHit}</td>
			</tr>
			<tr>
				<td id="head">�̸�</td>
				<td><input type="text" name="cid" value="${content_view.cid}" ></td>
			</tr>
			<tr>
				<td id="head">����</td>
				<td><input type="text" name="bTitle" value="${content_view.bTitle}" size="35"></td>
			</tr>
			<tr>
				<td id="head">����</td>
				<td><textarea rows="10" name="bContent" cols="35">${content_view.bContent}</textarea></td>
			</tr>
	<c:choose>
		<c:when test="${content_view.cid==cid}">
			
			<tr align="center">
						<td  colspan="2">
					<input type="submit" value="����">&nbsp; &nbsp; &nbsp;
					<a href="delete.do?bId=${content_view.bId}">�����ϱ�</a>&nbsp; &nbsp; &nbsp;
						
						</td>
					
				</tr>
		</c:when>
		<c:when test="${dto.cid!=cid}">
			<tr align="center">
			<td colspan="4">
					<a href="list.do">��Ϻ���</a>&nbsp; &nbsp; &nbsp;
					<a href="reply_view.do?bId=${content_view.bId}">�亯</a>&nbsp; &nbsp; &nbsp;
			</td>
		</tr>
		
		</c:when>
		</c:choose>

		</form>
	</table>
</div>

		<!-- Footer -->
			<div id="footer" >

				<!-- Copyright -->
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>

			</div>

</body>
</html>