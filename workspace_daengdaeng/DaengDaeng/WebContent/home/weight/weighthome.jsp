<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%!
	String cname,cid, cpw;
	
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.min.js"></script>

<link rel="daengdaeng icon" href="../images/favicon.ico" type="image/x-icon" />
	<title>댕댕이 노트 - 글쓰기</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="../assets/css/main.css" />
	<!-- <link rel="stylesheet" href="../assets/css/joinin.css" /> -->
	<link rel="stylesheet" href="board.css" />
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<script>
$(function(){
	var idval = $("#selectdog");
	$('#selectname').change(function(){
		
		var element = $(this).find('option:selected');
		var myTag = element.attr('value');
		idval.val(myTag);
		
		
	});
	
	
	
});


</script>
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
		<a href="../modify.jsp"><button class="btn_sm">회원정보수정</button><br><br>
		<a href="../logout.jsp"><button class="btn_sm">로그아웃</button>
		</section>
	<% } else{ %>
		<nav id="join_login">
		<a href="../joinin.html" ><button class="btn_sm">회원가입</button></a><br><br>
		<a href="../login.html"><button class="btn_sm">로그인</button></a>
	</nav>
	<%} %>
		
	<!-- Nav -->
	<nav id="nav">
	<ul>
		<li><a href="../register/dlist.dod" id="top-link" class="skel-layers-ignoreHref"><img src="../icons/dog_gray.png"/>댕댕이 등록</a></li>
		<li><a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/calendar_gray.png"/>댕댕이 다이어리</a>
		<ul id="subMenu">
			<li id="subMenu_li"><a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/write_gray.png"/>댕댕이 일정</a></li>
			<li id="subMenu_li"> <a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/write_gray.png"/>댕댕이 추억</a><li>
			<li id="subMenu_li"><a href="slist.dos" id="about-link" class="skel-layers-ignoreHref"><img src="../icons/health_gray.png"/>댕댕이 건강수첩</a></li>
		</ul>
		</li>
		<li><a href="#contact" id="contact-link" class="skel-layers-ignoreHref"><img src="../icons/dog_gray.png"/>댕댕이 커뮤티니</a>
		<ul id="subMenu">
			<li><a href="../board/list.do" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/chat_gray.png"/>정보공유</a></li>
			<li><a href="../adopt/alist.doa" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/location_gray.png"/>유기견정보</a><li>
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
	<div align="center">
		<a href="../weight/weighthome.jsp" style="color: red;"><img src="weightimage/scale.png" width="50px">몸무게_Weight</a>&nbsp; &nbsp; &nbsp;&nbsp;
		<a href="#" ><img src="weightimage/medicine.png" width="50px"/>약_Medicine</a>&nbsp; &nbsp; &nbsp;&nbsp;
		<a href="#" ><img src="weightimage/allergy.png" width="50px"/>알레르기_Allergy</a>&nbsp; &nbsp; &nbsp;&nbsp;
		<a href="#" ><img src="weightimage/vaccine.png" width="50px"/>백신_Vaccine</a>
		<br><br>
	</div>


		<% if(session.getAttribute("cid")!=null){ %>
		<p id="link">
	
		<select name="selectname" id="selectname">
				 <option value="none">반려견선택</option>
			<c:forEach items="${slist}" var="dto">
				<c:if test="${dto.cid==cid}">
						  <option value="${dto.dname}">${dto.dname}</option>
				</c:if>
			</c:forEach>		
		</select>
	<input value="dname" id='selectdog'>
			
		<div>

	
	
		<table class="slist" cellpadding="0" cellspacing="0"  >
		<tr align="center" >
			<td>몸무게</td>
			<td>이름</td>
			<td>날짜</td>
			<td>삭제</td>
		</tr>	
	<c:forEach items="${slist}" var="dto">
		<tr>
			<td align="center">${dto.dweight}kg</td>
			<td>${dto.dname}</td>
			<td width="10">${dto.sDate}</td>
			<td><a href="sdelete.dos?sId=${dto.sId}">삭제하기</a><td>
		</tr>	
	</c:forEach>
		</table>




	</div>
			
			
			
		</p>
	<% } else{ %>
		<p id="link">

		<a href="../login.html" class="button">로그인</a>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
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