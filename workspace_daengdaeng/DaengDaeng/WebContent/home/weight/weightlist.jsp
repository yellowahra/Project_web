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
	<title>����� ��Ʈ-ü�߰���</title>
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
		<a href="slist.dos" style="color: red;"><img src="weightimage/scale.png" width="50px">������_Weight</a>&nbsp; &nbsp; &nbsp;&nbsp;
		<a href="../medicine/mlist.dom" ><img src="weightimage/medicine.png" width="50px"/>��_Medicine</a>&nbsp; &nbsp; &nbsp;&nbsp;
		<a href="../allergy/allergylist.doal" ><img src="weightimage/allergy.png" width="50px"/>�˷�����_Allergy</a>&nbsp; &nbsp; &nbsp;&nbsp;
		<a href="../vaccine/vlist.dov" ><img src="weightimage/vaccine.png" width="50px"/>��������_Vaccine</a>
		<br><br>
	</div>

		<% if(session.getAttribute("cid")!=null){ 
			request.setCharacterEncoding("EUC-KR");
			String select = request.getParameter("select");  
			session.setAttribute("select", select);
			session.getAttribute("select");%>
 	
		<center><a href="#" onclick="window.open('calories.jsp', 'name', 'resizable= no width=500px height=750px'); return false" 
				style="margin-left:10%; font-size: 25pt; color:blue;">
		Į�θ�����</a>&nbsp; &nbsp; &nbsp;</center>
	
<div class="graphBox" style="margin-left:10%;">

	<script type="text/javascript">
		google.charts.load('current', {'packages':['corechart']});
		google.charts.setOnLoadCallback(drawVisualization);
	
		function drawVisualization() { 
			var data = google.visualization.arrayToDataTable([
					['Month', 'weight'],
					['2017/4/3',  5.5],
					['2017/6/3',  6.2],
					['2017/7/3',  7.7],
					['2017/9/3',  6],
					['2017/12/3',  6]
				]);
			var options = {
					title : '������',
					vAxis: {title: '����(kg)'},
					hAxis: {title: '��¥'}, 
					seriesType: 'line',
					/* series: {5: {type: 'line'}} */
				};
			
			var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
			chart.draw(data, options);
		}
	</script>
	<img src="../images/under_construction.png" style="width:20%; height: 10%; margin-left:10%;">��Ʈ �����ϱ�
	<div id="chart_div" style="width:50%; height: 50%;"></div>


</div>
<center style="color:red; font-size: 30pt;"><%= select %> ������</center>
	<center><a href="slist.dos">�ٸ� �ݷ��� ����</a></center>
		<table class="wlist" cellpadding="0" cellspacing="0"  width="50em">
				<tr align="center" >
					<td width="50" align="center">�̸�</td>
					<td width="10">������</td>
					<td width="20">��¥</td>
					<td width="30">����</td>
				</tr>	
			<c:forEach items="${wlist}" var="dto">
				<c:if test="${dto.cid==cid}">
					<c:if test="${dto.dname==select}">
					<c:if test="${dto.dweight!=null}">
					<tr>
						<td align="center">${dto.dname}</td>
						<td align="center">${dto.dweight}kg</td>
						<td align="center">${dto.sDate}</td>
						<td align="center"><a href="sdelete.dos?sId=${dto.sId}">�����ϱ�</a></td>
					</tr>
					</c:if>	
					</c:if>
				</c:if>
			</c:forEach>
		</table>

	<form name="dnamew" method="post" action="swrite_view.dos" style="margin-left:10%; margin-bottom: 1em;font-size: 20pt; width: 50%;">
			<center><input value=<%= select %> name="dnamew" id="selectdog" style="border:none;" type="hidden"></center>
			<input type="submit" value="ü���Է��ϱ�">
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