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
	<title>댕댕이 노트-유기견정보</title>
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
	
	<style>
	#mask, #mask2 {  
	  position:absolute;  
	  z-index:9000;  
	  background-color:#000;  
	  display:none;  
	  left:0;
	  top:0;
	  font-color:white;
	  margin-left: auto;
	  margin-right: auto;
	  padding-top: 3em;
	  padding-left: 15em;
	
	}
	
	.window, .window2{
	  display: none;
	  position:absolute;  
	  margin-left:auto;
	  margin-right:auto;
	  z-index:10000;
	}
	.window .close{
	
		margin-top: 40em;
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
		//화면의 높이와 너비를 구한다.
		var maskHeight = $(document).height();  
		var maskWidth = $(window).width();  

		//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
		$('#mask').css({'width':maskWidth,'height':maskHeight});  

		//애니메이션 효과 - 일단 1초동안 까맣게 됐다가 80% 불투명도로 간다.
		$('#mask').fadeIn(1000);      
		$('#mask').fadeTo("slow",1);    
			
		//윈도우 같은 거 띄운다.
		$('.window').show();
			
	}

	$(document).ready(function(){

		$('#mask').append("&nbsp; &nbsp;&nbsp; &nbsp;유기견을 발견했어요!: 버려지거나 주인을 잃은 동물을 발견하면 신고해 주세요.<br><br><br>"
				+
				
				"1.&nbsp; 공공장소를 떠돌거나 버려진 동물을 발견한 경우<br>"+
				"&nbsp;&nbsp;&nbsp; 관할 시, 군, 구청과 해당 유기동물 보호시설에 신고해야합니다. (동물보호관리시스템 1577-0954)<br>"+
				"2.&nbsp; 유기견을 주인 없는 동물이라 여겨 마음대로 잡거나 팔거나 죽이면 <br>"+
				"&nbsp;&nbsp;&nbsp; 500만원 이하의 벌금을 내게 됩니다.<br>"+
				"3.&nbsp; 시장, 군수, 구청장은 관내에서 발견되는 유기동물이 보호받을 수 있도록 필요한 조치를 해야하며, <br>"+
				"&nbsp;&nbsp;&nbsp; 주인을 찾을 수 있도록 그 사실을 7일 이상 공고해야 합니다.<br>"+
				"4.&nbsp; 공고 후 10일이 지나도 주인을 찾지 못한 경우, <Br>"+
				"&nbsp;&nbsp;&nbsp; 해당 시, 구, 구 등이 동물의 소유권을 갖게 되어 개인에게 기증하거나 분양할 수있습니다.<br>"
		);
		//검은 막 띄우기
		$('.openMask').click(function(e){
			e.preventDefault();
			wrapWindowByMask();
		});

		//닫기 버튼을 눌렀을 때
		$('.window .close').click(function (e) {  
		    //링크 기본동작은 작동하지 않도록 한다.
		    e.preventDefault();  
		    $('#mask, .window').hide();  
		});       

		//검은 막을 눌렀을 때
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
	
<!-- Main -->
<div id="main">
	
	<a href="../adopt/alist.doa" ><img src="../icons/home.png">입양정보</a>
	<a href="../lost/llist.dol"><img src="../icons/lost.png"/>실종정보</a>
	<a href="wlist.dow" style="color: red;" ><img src="../icons/watch.png"/>유기견정보</a>
	<br>
	
	<div id="mask"></div>
		<div class="window">
			<input type="button" class="close" value="닫기"/>
		</div>
	<a href="#" class="openMask"><img src="../icons/info.png"/>유기견을 발견했을 때 주의사항</a> <br>
		 <a href="wlist.dow" class="button"><center>목록보기</center></a>
	<div>
	<table class="wwrite_view" cellpadding="0" cellspacing="0" style="margin-right:auto; margin-left:auto; width: 50%;" >
		<form action="wwrite.dow" method="post">
			<tr>
				<td id="head"  >이름</td>
				<td><input type="text" name="cid" value=<%=cid %> size="40"></td>
			</tr>
			<tr>
				<td id="head" >품종</td>
				<td><input type="text" name="wbreed" size="40"></td>
			</tr>
			<tr>
				<td id="head">나이</td>
				<td><input type="text" name="wage" size="40"></td>
			</tr>
			<tr>
				<td id="head">성별</td>
				<td><input type="text" name="wgender" size="40"></td>
			</tr>
			
			<tr>
				<td id="head" >위치</td>
				<td><input type="text" name="wlocation" size="40"></td>
			</tr>
			<tr>
				<td id="head"> 파일</td>
				<td><input type="file" name="wfilename"></td>
			</tr>
			<tr>
				<td id="head">연락처</td>
				<td><input type="text" name="wcontact" size="40"></td>
			</tr>
			<tr>
				<td id="head"> 특이사항</td>
				<td><textarea name="wmemo" cols="40"></textarea></td>
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