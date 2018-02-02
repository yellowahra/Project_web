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
	<title>����� ��Ʈ-��������</title>
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
   // �ɼǸ�� 
   var valueArr = []; 
   var showArr = []; 
   var hideArr = []; 
   // �ɼǸ���� �迭�� ��� 
   $("#selectname > option").each(function () { 
      valueArr.push($(this).val()); 
   }); 
   $.each(valueArr, function (index, element) { // �迭�� ���Ҽ���ŭ �ݺ� 
      if ($.inArray(element, showArr) == -1) { // showArr ���� ���� ã�´�.  ���� �������(-1) 
         showArr.push(element); // ������ showArr���߰� 
         } else { 
         hideArr.push(index); // ������ hideArr��index �߰� 
      } 
   }); 
   // �ߺ��� index����� �������� �����ش�. 
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
			<li id="subMenu_li"><a href="calendarlist.doc" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/calendar_gray.png"/>����� ����</a></li>
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
	<p style="font-size: 160%; color: black; margin-left: 10%" >��������</p>

		<% if(session.getAttribute("cid")!=null){ %>
	
	
		<select name="selectname" id="selectname" style="margin-left:10%; font-size: 25pt; width: 50%; height: 50%;">
				 <option value="none">�ݷ��߼���</option>
			<c:forEach items="${calendarlist}" var="dto">
				<c:if test="${dto.cid==cid}">
						  <option value="${dto.dname}">${dto.dname}</option>
				</c:if>
			</c:forEach>		
		</select>
		<Br><Br>
		
		<form name="select" method="post" action="ccalendarlist.doc" style="margin-left:10%; font-size: 25pt; width: 50%;">
			<input value="���õ� �ݷ���" name="select" id="selectdog" style="border:none; font-size: 25pt;" ><br>
			<input type="submit" value="�Է�">
		</form>
		<br><br>
	<% } else{ %>
		<p id="link">

		<a href="../login/login.jsp" class="button">�α���</a>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
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