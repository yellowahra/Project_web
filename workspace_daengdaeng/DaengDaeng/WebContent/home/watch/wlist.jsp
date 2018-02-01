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
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.min.js"></script>

<link rel="daengdaeng icon" href="../images/favicon.ico" type="image/x-icon" />
	<title>����� ��Ʈ-���������</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="../assets/css/main.css" />
	<!-- <link rel="stylesheet" href="../assets/css/joinin.css" /> -->
	<link rel="stylesheet" href="board.css" />
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->

	<style>
	#mask{  
	  position:absolute;  
	  z-index:9000;  
	  background-color:#000;  
	  display:none;  
	  left:0;
	  top:0;
	  font-color:white;
	  margin-left: auto;
	  margin-right: auto;
	  padding-top: 5em;
	  padding-left: 15em;
	
	}
	
	.window{
	  display: none;
	  position:absolute;  
	  margin-left:auto;
	  margin-right:auto;
	  z-index:10000;
	}
	.window .close{
	
		margin-top: 30em;
		margin-left: 60em;
		font-size: 10pt;
	}
	#main{
		
		padding-top: 3em;
		padding-left: 3em;
	}

	</style>
	<script src="https://code.jquery.com/jquery-latest.js"></script> 
	<script>
	function wrapWindowByMask(){
		//ȭ���� ���̿� �ʺ� ���Ѵ�.
		var maskHeight = $(document).height();  
		var maskWidth = $(window).width();  

		//����ũ�� ���̿� �ʺ� ȭ�� ������ ����� ��ü ȭ���� ä���.
		$('#mask').css({'width':maskWidth,'height':maskHeight});  

		//�ִϸ��̼� ȿ�� - �ϴ� 1�ʵ��� ��İ� �ƴٰ� 80% �������� ����.
		$('#mask').fadeIn(1000);      
		$('#mask').fadeTo("slow",1);    
			
		//������ ���� �� ����.
		$('.window').show();
		

			
	}
	$(document).ready(function(){
	
		$('#mask').append("&nbsp; &nbsp;&nbsp; &nbsp;������� �߰��߾��!: �������ų� ������ ���� ������ �߰��ϸ� �Ű��� �ּ���.<br><br><br>"
				+
				
				"1.&nbsp; ������Ҹ� �����ų� ������ ������ �߰��� ���<br>"+
				"&nbsp;&nbsp;&nbsp; ���� ��, ��, ��û�� �ش� ���⵿�� ��ȣ�ü��� �Ű��ؾ��մϴ�. (������ȣ�����ý��� 1577-0954)<br>"+
				"2.&nbsp; ������� ���� ���� �����̶� ���� ������� ��ų� �Ȱų� ���̸� <br>"+
				"&nbsp;&nbsp;&nbsp; 500���� ������ ������ ���� �˴ϴ�.<br>"+
				"3.&nbsp; ����, ����, ��û���� �������� �߰ߵǴ� ���⵿���� ��ȣ���� �� �ֵ��� �ʿ��� ��ġ�� �ؾ��ϸ�, <br>"+
				"&nbsp;&nbsp;&nbsp; ������ ã�� �� �ֵ��� �� ����� 7�� �̻� �����ؾ� �մϴ�.<br>"+
				"4.&nbsp; ���� �� 10���� ������ ������ ã�� ���� ���, <Br>"+
				"&nbsp;&nbsp;&nbsp; �ش� ��, ��, �� ���� ������ �������� ���� �Ǿ� ���ο��� �����ϰų� �о��� ���ֽ��ϴ�.<br>"
		);
		//���� �� ����
		$('.openMask').click(function(e){

			e.preventDefault();
			wrapWindowByMask();
		});
		
		//�ݱ� ��ư�� ������ ��
		$('.window .close').click(function (e) {  
		    //��ũ �⺻������ �۵����� �ʵ��� �Ѵ�.
		    e.preventDefault();  
		    $('#mask, .window').hide();  
		});       

		//���� ���� ������ ��
		$('#mask').click(function () {  
		    $(this).hide();  
		    $('.window').hide();  
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
	
	<a href="../adopt/alist.doa" ><img src="../icons/home.png">�Ծ�����</a>
	<a href="../lost/llist.dol" ><img src="../icons/lost.png"/>��������</a>
	<a href="wlist.dow" style="color: red;"><img src="../icons/watch.png"/>���������</a>
	<br>
		<div id="mask"></div>
	<div class="window">
		<input type="button" href="#" class="close" value="�ݱ�"/>
	</div>
	<a href="weightinfo.html" class="openMask"><img src="../icons/info.png"/>������� �߰����� �� ���ǻ���</a>
	
		
		<% if(session.getAttribute("cid")!=null){ %>
		<p id="link">
	
			<a href="wwrite_view.dow" class="button">���ۼ�</a>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
		</p>
	<% } else{ %>
		<p id="link">

		<a href="../login/login.html" class="button">�α���</a>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
	</p>
	<%} %>
<div>

	<c:forEach items="${wlist}" var="dto">
	

	<table class="wlist" cellpadding="0" cellspacing="0"  style="width:50%;">

	
		<tr align="center">			
			<td colspan="4"><img src='watchimage/${dto.wfilename}' width='80%'></td>
			
		</tr>
		<tr align="center" >
			<td width="70" nowrap>��ȣ</td>
			<td align="center" width="70" nowrap>${dto.wId}</td>
			<td width="50" nowrap>�ۼ���</td>
			<td width="50" nowrap>${dto.cid}</td>
		</tr>
		<tr align="center">
			<td >����</td>
			<td >${dto.wage}</td>
			<td >ǰ��</td>
			<td >${dto.wbreed}</td>
			
		</tr>

		<tr align="center">
			<td>����</td>
			<td>${dto.wgender}</td>
			<td>��ġ</td>
			<td>${dto.wlocation}</td>
		</tr>
		<tr align="center">
			<td>����ó</td>
			<td colspan="3">${dto.wcontact}</td>

		</tr>
		<tr align="center">
			<td>Ư�̻���</td>
			<td colspan="3">${dto.wmemo}</td>

		</tr>
		<tr align="center">
			<td  colspan="2">��¥</td>
			<td colspan="2">${dto.wDate}</td>	
		</tr>
		<c:choose>
		<c:when test="${dto.cid==cid}">
			<tr align="center">
						<td  colspan="4">	<a href="wdelete.dow?wId=${dto.wId}">�����ϱ�</a>&nbsp; &nbsp; &nbsp;
						
						</td>
					
				</tr>
		</c:when>
		<c:when test="${dto.cid!=cid}">
			<tr align="center">
			<td colspan="4">
				<a href="#" onclick="window.open('info2.html', 'name', 'resizable= no width=430px height=750px'); return false">�Խù����� ����</a>&nbsp; &nbsp; &nbsp;
				<a href="#" onclick="window.open('info.html', 'name', 'resizable= no width=430px height=750px'); return false">�����̽Ű���?</a>
			</td>
		</tr>
		
		</c:when>
		</c:choose>
		
		</table>

	</c:forEach>
</div>
</div>
		<!-- Footer -->
			<div id="footer" >
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