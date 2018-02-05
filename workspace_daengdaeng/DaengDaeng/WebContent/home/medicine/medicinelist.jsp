<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%!
	String cname,cid, cpw;
	
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.min.js" charset='euc-kr'></script>

<link rel="daengdaeng icon" href="../images/favicon.ico" type="image/x-icon" />
	<title>����� ��Ʈ-��������</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="../assets/css/main.css" />
	<!-- <link rel="stylesheet" href="../assets/css/joinin.css" /> -->
	<link rel="stylesheet" href="board.css" />
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>


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
		<a href="../login/login.jsp"><button class="btn_sm">�α���</button></a>
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
			<li><a href="../board/list.do" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/chat_gray.png"/>��������</a></li>
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
		<Br><Br>
<!-- Main -->
<div id="main">
	<div align="center">
		<a href="../weight/slist.dos"><img src="../health/scale.png" width="50px">������_Weight</a>&nbsp; &nbsp; &nbsp;&nbsp;
		<a href="mlist.dom" style="color: red;" ><img src="../health/medicine.png" width="50px"/>��_Medicine</a>&nbsp; &nbsp; &nbsp;&nbsp;
		<a href="../allergy/allergylist.doal" ><img src="../health/allergy.png" width="50px"/>�˷�����_Allergy</a>&nbsp; &nbsp; &nbsp;&nbsp;
		<a href="../vaccine/vlist.dov" ><img src="../health/vaccine.png" width="50px"/>��������_Vaccine</a>
		<br><br>
		<a href="#" onclick="window.open('medicineinfo.jsp', 'name', 'resizable= no width=700px height=800px'); return false" 
				style="margin-left:10%;"><img src="../icons/info.png"/>�� ���� ���� ����</a>&nbsp; &nbsp; &nbsp;<br><br><br>
	</div>

		<% if(session.getAttribute("cid")!=null){ 
			request.setCharacterEncoding("EUC-KR");
			String select = request.getParameter("select");  
			session.setAttribute("select", select);
			session.getAttribute("select");%>
<%-- 	<%= select %> --%>
	
	<center style="color:red; font-size: 30pt;"><%= select %> �ູ��</center>
		<center><a href="mlist.dom">�ٸ� �ݷ��� ����</a></center>
		<table class="mmlist" cellpadding="0" cellspacing="0"  width="50em">
				<tr align="center" >
					<td width="50" align="center">�̸�</td>
					<td width="20">���̸�</td>
					<td width="10">�뷮</td>
					<td width="30">�����ֱ�</td>
					<td width="30">���ۿ�</td>
					<td width="30">�޸�</td>
					<td width="30">�����ϱ�</td>
				</tr>	
			<c:forEach items="${mmlist}" var="dto">
				<c:if test="${dto.dname==select}">
					<c:if test="${dto.cid==cid}">
					<c:if test="${dto.mname!=null}">
					<tr>
						<td align="center">${dto.dname}</td>
						<td align="center">${dto.mname}</td>
						<td align="center">${dto.mdosage}</td>
						<td align="center">${dto.mfreq}</td>
						<td align="center">${dto.mseff}</td>
						<td align="center">${dto.mmemo}</td>
						<td align="center"><a href="mdelete.dom?mId=${dto.mId}">�����ϱ�</a></td>
					</tr>	
					</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</table>

		<form name="dnamem" method="post" action="mwrite_view.dom" style="margin-left:10%; font-size: 20pt; width: 50%;">
			<input value=<%= select %> name="dnamem" id="selectdog" style="border:none;">
			<input type="submit" value="�Է�">
		</form>
	
		
		
	<% } else{ %>
		<p id="link">

		<a href="../login/login.jsp" class="button">�α���</a>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
	</p>
	<%} %>
	
</div>
		<!-- Footer -->
			<div id="footer">
				<!-- Copyright -->
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
			</div>
</body>
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.scrolly.min.js"></script>
	<script src="../assets/js/jquery.scrollzer.min.js"></script>
	<script src="../assets/js/skel.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/ie/respond.min.js"></script>
	<script src="../assets/js/main.js"></script> 
</html>