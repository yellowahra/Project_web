 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

 <%!
	String cname, cid, cpw;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<link rel="daengdaeng icon" href="../images/favicon.ico" type="image/x-icon" />
	<title>댕댕이 노트-예방접종</title>
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
	<!-- jQuery UI CSS파일  -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
	<!-- // jQuery 기본 js파일 -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
	<!-- // jQuery UI 라이브러리 js파일 -->
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
	<script>
	$(function() {
		  $( "#testDatepicker" ).datepicker({
		        showOn: "both", 
		        buttonImage: "calendar.png", 
		        buttonImageOnly: true 
		  });
		  $( "#testDatepicker2" ).datepicker({
		        showOn: "both", 
		        buttonImage: "calendar.png", 
		        buttonImageOnly: true 
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
		<li><a href="#" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/calendar_gray.png"/>댕댕이 다이어리</a>
		<ul id="subMenu">
			<li id="subMenu_li"><a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/write_gray.png"/>댕댕이 일정</a></li>
			<li id="subMenu_li"> <a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/write_gray.png"/>댕댕이 추억</a><li>
			<li id="subMenu_li"><a href="../health/healthhome.jsp" id="about-link" class="skel-layers-ignoreHref"><img src="../icons/health_gray.png"/>댕댕이 건강수첩</a></li>
		</ul>
		</li>
		<li><a href="#" id="contact-link" class="skel-layers-ignoreHref"><img src="../icons/dog_gray.png"/>댕댕이 커뮤티니</a>
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
	<Br><Br>
<!-- Main -->
<div id="main">
	<div align="center">
		<a href="../weight/slist.dos"><img src="../health/scale.png" width="50px">몸무게_Weight</a>&nbsp; &nbsp; &nbsp;&nbsp;
		<a href="../medicine/mlist.dom"><img src="../health/medicine.png" width="50px"/>약_Medicine</a>&nbsp; &nbsp; &nbsp;&nbsp;
		<a href="#"><img src="../health/allergy.png" width="50px"/>알레르기_Allergy</a>&nbsp; &nbsp; &nbsp;&nbsp;
		<a href="vlist.dov"  style="color: red;" ><img src="../health/vaccine.png" width="50px"/>예방접종_Vaccine</a>
		<br><br>
		<a href="#" onclick="window.open('vaccineinfo.jsp', 'name', 'resizable= no width=700px height=800px'); return false" 
				style="margin-left:10%;"><img src="../icons/info.png"/>꼭 필요한 예방접종</a>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
	<a href="#" onclick="window.open('vaccinealert.jsp', 'name', 'resizable= no width=700px height=800px'); return false" 
				style="margin-left:10%;"><img src="../icons/info.png"/>예방접종 전후 주의사항</a>&nbsp; &nbsp; &nbsp;
	</div>
	
	<%  
	request.setCharacterEncoding("EUC-KR");
	String dnamev = request.getParameter("dnamev");  
	session.setAttribute("dnamev", dnamev);
	session.getAttribute("dnamev");%>

	<%= dnamev %>
	<div>
	<table class="vwrite_view" cellpadding="0" cellspacing="0" style="margin-right:auto; margin-left:auto; width: 60%; font-size: 20pt;" >
		<form action="vwrite.dom" method="post">
			<tr>
				<td id="head"  width="30%">반려인이름</td>

				<td><input type="text" name="cid" value=<%=cid %> size="40"></td>
			</tr>
			<tr>
				<td id="head" width="30%" >반려견이름</td>
				<td><input type="text" name="dname" value=<%=dnamev %> size="40"></td>
			</tr>
		
			<tr>
			<td id="head" >주사이름</td>
				<td><input type="text" name="vname" size="40"></td>
			</tr>
			
			<tr>
			<td id="head">접종날짜</td>
				<td><input type="text" id="testDatepicker" name="vinjdate" size="40"></td>
			<tr>
				<td id="head">부작용</td>
				<td><input type="text" name="vseff" size="40"></td>
			</tr>
			<tr>
				<td id="head">메모</td>
				<td><textarea name="vmemo" cols="40"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
				<center><input type="submit" value="입력"></center>
				</td>
			</tr>
		</form>

	</table>
	</div>

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