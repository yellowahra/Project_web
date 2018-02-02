<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
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
	<title>댕댕이 노트-일정관리</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="../assets/css/main.css" />
	<!-- <link rel="stylesheet" href="../assets/css/joinin.css" /> -->
	<link rel="stylesheet" href="board.css" />
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<script language="javascript" charset='euc-kr'>
$(function(){
	var idval = $("#selectdog");
	$('#selectname').change(function(){
		
		var element = $(this).find('option:selected');
		var myTag = element.attr('value');
		idval.val(myTag);
	});

});

$(function () { 
   // 옵션목록 
   var valueArr = []; 
   var showArr = []; 
   var hideArr = []; 
   // 옵션목록을 배열로 등록 
   $("#selectname > option").each(function () { 
      valueArr.push($(this).val()); 
   }); 
   $.each(valueArr, function (index, element) { // 배열의 원소수만큼 반복 
      if ($.inArray(element, showArr) == -1) { // showArr 에서 값을 찾는다.  값이 없을경우(-1) 
         showArr.push(element); // 없으면 showArr에추가 
         } else { 
         hideArr.push(index); // 있으면 hideArr에index 추가 
      } 
   }); 
   // 중복된 index목록을 역순으로 지워준다. 
   for (var i in hideArr.reverse()) { 
      $("#selectname > option").eq(hideArr[i]).remove(); 
   } 
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
			<li id="subMenu_li"><a href="calendarlist.doc" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/calendar_gray.png"/>댕댕이 일정</a></li>
			<li id="subMenu_li"> <a href="../photo/photolist.dop" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/write_gray.png"/>댕댕이 추억</a><li>
			<li id="subMenu_li"><a href="../health/healthhome.jsp" id="about-link" class="skel-layers-ignoreHref"><img src="../icons/health_gray.png"/>댕댕이 건강수첩</a></li>
		</ul>
		</li>
		<li><a href="#" id="contact-link" class="skel-layers-ignoreHref">댕댕이 커뮤티니</a>
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
	<p style="font-size: 160%; color: black; margin-left: 10%" >일정관리</p>

		<% if(session.getAttribute("cid")!=null){ %>
	
	
		<select name="selectname" id="selectname" style="margin-left:10%; font-size: 25pt; width: 50%; height: 50%;">
				 <option value="none">반려견선택</option>
			<c:forEach items="${calendarlist}" var="dto">
				<c:if test="${dto.cid==cid}">
						  <option value="${dto.dname}">${dto.dname}</option>
				</c:if>
			</c:forEach>		
		</select>
		<Br><Br>
		
		<form name="select" method="post" action="ccalendarlist.doc" style="margin-left:10%; font-size: 25pt; width: 50%;">
			<input value="선택된 반려견" name="select" id="selectdog" style="border:none; font-size: 25pt;" ><br>
			<input type="submit" value="입력">
		</form>
		<br><br>
	<% } else{ %>
		<p id="link">

		<a href="../login/login.jsp" class="button">로그인</a>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
	</p>
	<%} %>
	
</div>
		<!-- Footer -->
			<div id="footer" style="position:absolute; bottom: 0px; width:100%;">
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