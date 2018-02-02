 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="daengdaeng icon" href="../images/favicon.ico" type="image/x-icon" />
	<title>댕댕이 노트-회원가입</title>
	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="../assets/css/main.css" />
	<link rel="stylesheet" href="../assets/css/joinin.css" />
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
     var form = document.formjoin;
     
     if(form.cname.value.replace(/\s/ig, "") == "") {
      alert("이름은 필수 입력 사항입니다.");
      return false;
     }
     
     if(form.cid.value.replace(/\s/ig, "") == "") {
      alert("아이디는 필수 입력 사항입니다.");
      return false;
     }
     if(!/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$/.test(form.cpw.value)) {
      alert(" 영문/숫자포함 6자 이상");
      return false;
     } else {
      if(form.cpw.value != form.cpw2.value ) {
       alert("비밀번호를 확인하세요.")
       return false;
      }
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
		<a href="join.jsp" ><button class="btn_sm">회원가입</button></a><br><br>
		<a href="../login/login.jsp"><button class="btn_sm">로그인</button></a>
		</nav>
		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a href="../login/login.jsp" id="top-link" class="skel-layers-ignoreHref"><img src="../icons/dog_gray.png"/>댕댕이 등록</a></li>
				<li><a href="#" id="portfolio-link" class="skel-layers-ignoreHref">댕댕이 다이어리</a>
				<ul id="subMenu">
					<li id="subMenu_li"><a href="../login/login.jsp" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/calendar_gray.png"/>댕댕이 일정</a></li>
					<li id="subMenu_li"> <a href="../login/login.jsp" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/write_gray.png"/>댕댕이 추억</a><li>
					<li id="subMenu_li"><a href="../login/login.jsp" id="about-link" class="skel-layers-ignoreHref"><img src="../icons/health_gray.png"/>댕댕이 건강수첩</a></li>
				</ul>
				</li>
				<li><a href="#" id="contact-link" class="skel-layers-ignoreHref">댕댕이 커뮤티니</a>
				<ul id="subMenu">
					<li><a href="../login/login.jsp" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/chat_gray.png"/>정보공유</a></li>
					<li><a href="../adopt/alist.doa" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/location_gray.png"/>유기견정보</a><li>
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

	
<!-- Main -->

<div id="main" >
 <p style="font-size: 160%; color: black; margin-bottom: -10%;" >회원가입</p>
</div>

		<form name="formjoin" action="joinwrite.doj" method="post" onsubmit="return check();">
			이름: <input type="text" name="cname" size="20"><Br>
			아이디: <input type="text" name="cid" size="20"><Br>
			비밀번호:&nbsp; &nbsp; &nbsp;<b>*영문/숫자포함 6자이상</b> <input type="text" name="cpw" size="20"><Br>
			
			비밀번호확인: <input type="text" name="cpw2" size="20"><Br>
			이메일: <input type="text" name="cemail" size="30"><br>
			<center><input type="submit" value="입력"></center>
		</form>



		<!-- Footer -->
			<div id="footer">

				<!-- Copyright -->
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>

			</div>
</body>
</html>