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
	<title>����� ��Ʈ-��������</title>
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
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js" charset="EUC-KR"></script>

<link rel="stylesheet" href="jquery.ui.timepicker.css">
<script src="jquery.ui.timepicker.js"></script>
<style>
.ui-timepicker { font-size: 12px; width: 10em; }
#ui-timepicker-div { padding: 0em; }
.ui-timepicker-hours, .ui-timepicker-minutes { padding: 0;}  
.ui-timepicker-table .ui-timepicker-title { line-height: 1.8em; text-align: center; }
.ui-timepicker-table td { padding: 0em; width: 10em; }
.ui-timepicker-table th.periods { padding: 0; width: 10em; }
.ui-timepicker-table td span {
	display:block;
    padding:0;
    width: 10em;

    text-align:center;
    text-decoration:none;
}
.ui-timepicker-table td a {
    display:block;
    padding:0;
    width: 3em;
    cursor: pointer;
    text-align:center;
    text-decoration:none;
}
/* buttons and button pane styling */
.ui-timepicker .ui-timepicker-buttonpane {
    background-image: none; margin:0; padding:0; border-left: 0; border-right: 0; border-bottom: 0;
}
.ui-timepicker .ui-timepicker-buttonpane button { margin:0; cursor: pointer; padding: 0; width:auto; overflow:visible; font-color: red;}

</style>  
<script>
$(function() {

    $('#timepicker').timepicker({
    	showNowButton: true,
    	showCloseButton: true,
   
    });
  
});

	$(function() {
		  $( "#testDatepicker" ).datepicker({
			    changeMonth: true, 
		        changeYear: true,
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
	
	<%  
	request.setCharacterEncoding("EUC-KR");
	String dnamen = request.getParameter("dnamen");  
	session.setAttribute("dnamen", dnamen);
	session.getAttribute("dnamen");%>

	<%-- <%= dnamen %> --%>
	<div>
	<table class="calendarwrite_view" cellpadding="0" cellspacing="0" style="margin-right:auto; width: 50%; font-size: 20pt;" >
		<form  name="formcalendar" action="calendarwrite.doc" method="post">
			<tr>
				<td id="head"  width="100"  nowrap>�ݷ����̸�</td>

				<td><input type="text" name="cid" value=<%=cid %> size="20"></td>
			</tr>
			<tr>
				<td id="head" width="100"  nowrap>�ݷ����̸�</td>
				<td><input type="text" name="dname" value=<%=dnamen %> size="20"></td>
			</tr>
		
			<tr>
			<td id="head" width="100" nowrap>��¥</td>
				<td><input type="text" id="testDatepicker"  name="ndate"></td>
			</tr>
			
			<tr>
			<td id="head" width="100" nowrap>�ð�</td>		
				<td><input type="text" id="timepicker" name="ntime"></td>
			<tr>
			<td id="head" width="100" nowrap>����</td>
				<td><select name="ntype">
					  <option value="����">����</option>
					  <option value="��">��</option>
					  <option value="����">����</option>
					  <option value="��ġ" >��ġ</option>
					  <option value="��å">��å</option>
					  <option value="�躯">�躯</option>
					  <option value="����">����</option>
					  <option value="����">����</option>
					   <option value="�̿�">�̿�</option>
				</select></td>
			</tr>
			<tr>
				<td id="head" width="100" nowrap>�޸�</td>
				<td><textarea name="nmemo" cols="40"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input value=<%=dnamen %> name="select" id="selectdog" type="hidden" >
				<center><input type="submit" value="�Է�"></center>
				</td>
			</tr>
		</form>

	</table>
	</div>

</div>

		<!-- Footer -->
			<div id="footer" style="position:absolute; bottom: 0px; width:100%;">

				<!-- Copyright -->
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>

			</div>
</body>
</html>