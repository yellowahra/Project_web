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
	<!-- jQuery UI CSS����  -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
	<!-- // jQuery �⺻ js���� -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
	<!-- // jQuery UI ���̺귯�� js���� -->
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
		<li><a href="dlist.dod" id="top-link" class="skel-layers-ignoreHref"><img src="../icons/dog_gray.png"/>����� ���</a></li>
		<li><a href="#" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/calendar_gray.png"/>����� ���̾</a>
			<ul id="subMenu">
				<li id="subMenu_li"><a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/write_gray.png"/>����� ����</a></li>
				<li id="subMenu_li"> <a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/write_gray.png"/>����� �߾�</a><li>
				<li id="subMenu_li"><a href="../health/healthhome.jsp" id="about-link" class="skel-layers-ignoreHref"><img src="../icons/health_gray.png"/>����� �ǰ���ø</a></li>
			</ul>
		</li>
		<li><a href="#" id="contact-link" class="skel-layers-ignoreHref"><img src="../icons/dog_gray.png"/>����� Ŀ��Ƽ��</a>
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
	
<!-- Main -->
<div id="main">

	<div>
	<table class="dwrite_view" cellpadding="0" cellspacing="0" style="margin-right:auto; margin-left:auto; width: 50%;" >
		<form action="dwrite.dod" method="post">
			<tr>
				<td id="head"  >�ݷ����̸�</td>

				<td><input type="text" name="cid" value=<%=cid %> size="40"></td>
			</tr>
			<tr>
				<td id="head"  >�ݷ����̸�</td>
				<td><input type="text" name="dname" size="40"></td>
			</tr>
			<tr>
				<td id="head">����</td>
				<td><input type="file" name="dfilename"></td>
			</tr>
			<tr>
				<td id="head">ǰ��</td>
				<td><input type="text" name="dbreed" size="40"></td>
			</tr>
			<tr>
				<td id="head">�¾��</td>
				<td><input type="text" id="testDatepicker" name="dbd"></td>
			</tr>
			<tr>
				<td id="head">�����̵ȳ�</td>
				<td><input type="text" id="testDatepicker2" name="dad"></td>
			</tr>
			<tr>
				<td id="head">����</td>
				<td><input type="text" name="dage" size="40"></td>
			<tr>
				<td id="head">����</td>
				<td><input type="text" name="dgender" size="40"></td>
			</tr>
			
			<tr>
				<td id="head" >������</td>
				<td><input type="text" name="dweight" size="10">kg</td>
			</tr>
			<tr>
				<td id="head" >��Ϲ�ȣ</td>
				<td><input type="text" name="didnum" size="40"></td>
			</tr>
	
			<tr>
				<td colspan="2">
				<center><input type="submit" value="�Է�"></center>
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