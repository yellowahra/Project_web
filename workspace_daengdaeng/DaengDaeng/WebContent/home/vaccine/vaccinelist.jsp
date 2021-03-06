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
	<title>댕댕이 노트-예방접종</title>
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
		<input id="info" type="hidden" name="cid" size="10" value=<%=cid %>><%=cid %>님 안녕하세요
		<a href="../login/modify.jsp"><button class="btn_sm">회원정보수정</button><br><br>
		<a href="../login/logout.jsp"><button class="btn_sm">로그아웃</button>
		</section>
	<% } else{ %>
		<nav id="join_login">
		<a href="../join/join.jsp" ><button class="btn_sm">회원가입</button></a><br><br>
		<a href="../login/login.jsp"><button class="btn_sm">로그인</button></a>
	</nav>
	<%} %>
		
	<!-- Nav -->
	<nav id="nav">
	<ul>
		<li><a href="../register/dlist.dod" id="top-link" class="skel-layers-ignoreHref"><img src="../icons/dog_gray.png"/>댕댕이 등록</a></li>
		<li><a href="#" id="portfolio-link" class="skel-layers-ignoreHref">댕댕이 다이어리</a>
		<ul id="subMenu">
			<li id="subMenu_li"><a href="../calendar/calendarlist.doc" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/calendar_gray.png"/>댕댕이 일정</a></li>
			<li id="subMenu_li"> <a href="../photo/photolist.dop" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/write_gray.png"/>댕댕이 추억</a><li>
			<li id="subMenu_li"><a href="../health/healthhome.jsp" id="about-link" class="skel-layers-ignoreHref"><img src="../icons/health_gray.png"/>댕댕이 건강수첩</a></li>
		</ul>
		</li>
		<li><a href="#" id="contact-link" class="skel-layers-ignoreHref">댕댕이 커뮤티니</a>
		<ul id="subMenu">
			<li><a href="../board/list.do" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/chat_gray.png"/>정보공유</a></li>
			<li><a href="../adopt/alist.doa" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/location_gray.png"/>유기견정보</a><li>
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
		<a href="../weight/slist.dos"><img src="../health/scale.png" width="50px">몸무게_Weight</a>&nbsp; &nbsp; &nbsp;&nbsp;
		<a href="../medicine/mlist.dom"><img src="../health/medicine.png" width="50px"/>약_Medicine</a>&nbsp; &nbsp; &nbsp;&nbsp;
		<a href="../allergy/allergylist.doal"><img src="../health/allergy.png" width="50px"/>알레르기_Allergy</a>&nbsp; &nbsp; &nbsp;&nbsp;
		<a href="vlist.dov"  style="color: red;" ><img src="../health/vaccine.png" width="50px"/>예방접종_Vaccine</a>
		<br><br>
		<a href="#" onclick="window.open('vaccineinfo.jsp', 'name', 'resizable= no width=700px height=800px'); return false" 
				style="margin-left:10%;"><img src="../icons/info.png"/>꼭 필요한 예방접종</a>&nbsp; &nbsp; &nbsp;
	<a href="#" onclick="window.open('vaccinealert.jsp', 'name', 'resizable= no width=700px height=800px'); return false" 
				style="margin-left:10%;"><img src="../icons/info.png"/>예방접종 전후 주의사항</a>&nbsp; &nbsp; &nbsp;
	</div>

		<% if(session.getAttribute("cid")!=null){ 
			request.setCharacterEncoding("EUC-KR");
			String select = request.getParameter("select");  
			session.setAttribute("select", select);
			session.getAttribute("select");%>
<%-- 	<%= select %> --%>
<br>
	<center style="color:red; font-size: 30pt;"><%= select %> 예방접종</center>
		<center><a href="vlist.dov">다른 반려견 선택</a></center>
		<table class="vvlist" cellpadding="0" cellspacing="0"  width="70%">
				<tr align="center" >
					<td width="20" align="center">이름</td>
					<td width="30">주사이름</td>
					<td width="20">접종날짜</td>
					<td width="30">부작용</td>
					<td width="50">메모</td>
					<td width="5">삭제하기</td>
				</tr>	
			<c:forEach items="${vvlist}" var="dto">
				<c:if test="${dto.dname==select}">
					<c:if test="${dto.cid==cid}">
						<c:if test="${dto.vname!=null}">
					<tr>
						<td align="center">${dto.dname}</td>
						<td align="center">${dto.vname}</td>
						<td align="center">${dto.vinjdate}</td>
						<td align="center">${dto.vseff}</td>
						<td align="center">${dto.vmemo}</td>
						<td align="center"><a href="vdelete.dov?vId=${dto.vId}">삭제하기</a></td>
					</tr>	
					</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</table>

		<form name="dnamev" method="post" action="vwrite_view.dov" style="margin-left:10%; margin-bottom:1em; font-size: 20pt; width: 50%;">
			<input value=<%= select %> name="dnamev" id="selectdog" style="border:none;" type="hidden">
			<input type="submit" value="입력">
		</form>
	
		
		
	<% } else{ %>
		<p id="link">

		<a href="../login/login.jsp" class="button">로그인</a>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
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