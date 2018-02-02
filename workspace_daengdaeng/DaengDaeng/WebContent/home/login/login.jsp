<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
	Prologue by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<link rel="daengdaeng icon" href="../images/favicon.ico" type="image/x-icon" />
	<title>����� ��Ʈ-�α���</title>
	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="../assets/css/main.css" />
	<link rel="stylesheet" href="../assets/css/login.css" />
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		
	<!-- Scripts -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.scrolly.min.js"></script>
	<script src="../assets/js/jquery.scrollzer.min.js"></script>
	<script src="../assets/js/skel.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/ie/respond.min.js"></script>
	<script src="../assets/js/main.js"></script>
 <script type="text/javascript">
    function check() {
     var form = document.formlogin;
     
    
     if(form.cid.value.replace(/\s/ig, "") == "") {
      alert("���̵� �Է��ϼ���.");
      return false;
     }
     if(form.cpw.value.replace(/\s/ig, "") == "") {
         alert("��й�ȣ�� �Է��ϼ���.");
         return false;
        }
     if(!/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$/.test(form.cpw.value)) {
      alert(" ��й�ȣ�� Ʋ�Ƚ��ϴ�.");
      return false;
     } 
   
     
   return true;
     
    }
 
  </script>
</head>
<body>
<!-- Header -->
<div id="header">
	<div class="top">
		<nav id="join_login">
		<a href="../join/join.jsp" ><button class="btn_sm">ȸ������</button></a><br><br>
		<a href="login.jsp"><button class="btn_sm">�α���</button></a>
		</nav>
		<!-- Nav -->
	<nav id="nav">
	<ul>
		<li><a href="login.jsp" id="top-link" class="skel-layers-ignoreHref"><img src="../icons/dog_gray.png"/>����� ���</a></li>
		<li><a href="#" id="portfolio-link" class="skel-layers-ignoreHref">����� ���̾</a>
		<ul id="subMenu">
			<li id="subMenu_li"><a href="login.jsp" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/calendar_gray.png"/>����� ����</a></li>
			<li id="subMenu_li"> <a href="login.jsp" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/write_gray.png"/>����� �߾�</a><li>
			<li id="subMenu_li"><a href="login.jsp" id="about-link" class="skel-layers-ignoreHref"><img src="../icons/health_gray.png"/>����� �ǰ���ø</a></li>
		</ul>
		</li>
		<li><a href="#" id="contact-link" class="skel-layers-ignoreHref">����� Ŀ��Ƽ��</a>
		<ul id="subMenu">
			<li><a href="login.jsp" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/chat_gray.png"/>��������</a></li>
			<li><a href="../adopt/alist.doa" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/location_gray.png"/>���������</a><li>
		</ul>
		</li>
	</ul>
	</nav>
	</div>
</div>

<!-- Main -->
<div id="top2">
	<img src="../images/logo002.png" id="logo_img"/>
</div>

<!--login form  -->
<div id="login">
	<form name=formlogin action="/DaengDaeng/LoginCheck" method="POST" onsubmit="return check();">
		���̵�:	<input type="text" name="cid" size="10"><br>
		��й�ȣ: <input type="text" name="cpw" size="10"><br>
		
		<input type="submit" value="�α���">
	
	</form>
		<a href="../join/join.jsp" style="margin-left:50%;"><button class="btn_sm">ȸ������</button></a>
		<br><Br><br>
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