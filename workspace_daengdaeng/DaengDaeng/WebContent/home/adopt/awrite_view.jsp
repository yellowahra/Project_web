 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- <%@ page import= "com.oreilly.servlet.MultipartRequest" %>
<%@ page import= "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import= "java.util.Enumeration" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!-- ���� ���ε� ó���� ���� MultipartRequest ��ü�� ����Ʈ -->
<%@ page import="com.oreilly.servlet.MultipartRequest" %>  --%>
 <%!
	String cname, cid, cpw;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<link rel="daengdaeng icon" href="../images/favicon.ico" type="image/x-icon" />
	<title>����� ��Ʈ - �۾���</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="../assets/css/main.css" />
	<link rel="stylesheet" href="board.css" />
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
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
		<a href="../modify.jsp"><button class="btn_sm">ȸ����������</button><br><br>
		<a href="../logout.jsp"><button class="btn_sm">�α׾ƿ�</button>
		</section>
	<% } else{ %>
		<nav id="join_login">
		<a href="../joinin.html" ><button class="btn_sm">ȸ������</button></a><br><br>
		<a href="../login.html"><button class="btn_sm">�α���</button></a>
	</nav>
	<%} %>
	<!-- Nav -->
	<nav id="nav">
	<ul>
		<li><a href="#top" id="top-link" class="skel-layers-ignoreHref"><img src="../icons/dog_gray.png"/>����� ���</a></li>
		<li><a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/calendar_gray.png"/>����� ���̾</a>
		<ul id="subMenu">
			<li id="subMenu_li"><a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/write_gray.png"/>����� ����</a></li>
			<li id="subMenu_li"> <a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/write_gray.png"/>����� �߾�</a><li>
			<li id="subMenu_li"><a href="#about" id="about-link" class="skel-layers-ignoreHref"><img src="../icons/health_gray.png"/>����� �ǰ���ø</a></li>
		</ul>
		</li>
		<li><a href="#contact" id="contact-link" class="skel-layers-ignoreHref"><img src="../icons/dog_gray.png"/>����� Ŀ��Ƽ��</a>
		<ul id="subMenu">
			<li><a href="../board/list.do" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/chat_gray.png"/>��������</a></li>
			<li><a href="alist.doa" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/location_gray.png"/>���������</a><li>
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
<table class="write_view" cellpadding="0" cellspacing="0" border="1">
		<form action="awrite.doa" method="post">
			<tr>
				<td  id="head">�̸�</td>
				<td><input type="text" name="cid" value=<%=cid %> size="30"></td>
			</tr>
			<tr>
				<td id="head"> ǰ��</td>
				<td><input type="text" name="abreed" size="40"></td>
			</tr>
			<tr>
				<td id="head">����</td>
				<td><input type="text" name="aage" size="40"></td>
			</tr>
			<tr>
				<td id="head"> ����</td>
				<td><input type="text" name="agender" size="40"></td>
			</tr>
			
			<tr>
				<td id="head"> ��ġ</td>
				<td><input type="text" name="alocation" size="40"></td>
			</tr>
			<tr>
				<td id="head"> ����</td>
				<td><input type="file" name="filename"></td>
			</tr>
		
			<tr>
				<td colspan="2">
				<input type="submit" value="�Է�"> &nbsp; &nbsp; &nbsp;
				</td>
			</tr>
		</form>
	

			
	</form>
	</table>
	 <a href="alist.doa"><center>��Ϻ���</center></a>
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