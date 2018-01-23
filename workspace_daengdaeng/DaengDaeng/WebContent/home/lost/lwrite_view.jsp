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
	<title>댕댕이 노트 - 글쓰기</title>
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

		$('#mask').append("&nbsp; &nbsp;&nbsp; &nbsp;반려견이 실종됐어요!: 먼저 당황하지 마시고 침찾하게 하나씩 따라해보세요!<br><br><br>"
				+
				
				"1.&nbsp; 최초 실종된 장소를 기점으로 주변을 찾아보세요<br>"+
				"&nbsp;&nbsp;&nbsp; 처음부터 먼 거리를 이동하지는 않아요. 시간이 흐름에 따라 범위를 차츰 확대해 나가세요.<br>"+
				"2.&nbsp; 주변 유기 동물 보호소에 연락 및 전다지를 만들어 배포해 보세요. <br>"+
				"3.&nbsp; 잘 알수 있는 사진과 연락처를 기재한 전다지를 제작하여 주변 관공서 및 동물변원, 애견샵 등과 잘 보이는 곳에 배포해 보세요.<br>"+
				"4.&nbsp; 또한 전국에 구조된 동물들을 유기견정보나 동물보호관리시스템의 홈페이지등에서 매일 확인해 보세요<Br>"+
		
				"5.&nbsp; 인터넷을 최대한 이용해 다양한 경로로 알리세요. <br>"+
				"&nbsp; &nbsp; &nbsp;&nbsp;페이스북, 트위터등 여러 SNS를 통해 위에 작업한 전단지를 퍼트리고 각 동호회 및 카페 등에도 알려보세요!"
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
		<li><a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/calendar_gray.png"/>댕댕이 다이어리</a>
		<ul id="subMenu">
			<li id="subMenu_li"><a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/write_gray.png"/>댕댕이 일정</a></li>
			<li id="subMenu_li"> <a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/write_gray.png"/>댕댕이 추억</a><li>
			<li id="subMenu_li"><a href="#about" id="about-link" class="skel-layers-ignoreHref"><img src="../icons/health_gray.png"/>댕댕이 건강수첩</a></li>
		</ul>
		</li>
		<li><a href="#contact" id="contact-link" class="skel-layers-ignoreHref"><img src="../icons/dog_gray.png"/>댕댕이 커뮤티니</a>
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
	<a href="llist.dol" style="color: red;"><img src="../icons/lost.png"/>실종정보</a>
	<a href="../watch/wlist.dow" ><img src="../icons/watch.png"/>유기견정보</a>
	<br>
	
	<div id="mask"></div>
		<div class="window">
			<input type="button" class="close" value="닫기"/>
		</div>
	<a href="#" class="openMask"><img src="../icons/info.png"/>반려견을 잃어버렸을 때 주의사항</a> <br>
		 <a href="llist.dol" class="button"><center>목록보기</center></a>
	<div>
	<table class="lwrite_view" cellpadding="0" cellspacing="0" style="margin-right:auto; margin-left:auto; width: 50%;" >
		<form action="lwrite.dol" method="post">
			<tr>
				<td id="head"  >이름</td>
				<td><input type="text" name="cid" value=<%=cid %> size="40"></td>
			</tr>
			<tr>
				<td id="head" > 품종</td>
				<td><input type="text" name="lbreed" size="40"></td>
			</tr>
			<tr>
				<td id="head">나이</td>
				<td><input type="text" name="lage" size="40"></td>
			</tr>
			<tr>
				<td id="head"> 성별</td>
				<td><input type="text" name="lgender" size="40"></td>
			</tr>
			
			<tr>
				<td id="head" > 위치</td>
				<td><input type="text" name="llocation" size="40"></td>
			</tr>
			<tr>
				<td id="head"> 파일</td>
				<td><input type="file" name="filename"></td>
			</tr>
			<tr>
				<td id="head"> 주인정보</td>
				<td><input type="text" name="lcontact" size="40"></td>
			</tr>
			<tr>
				<td id="head"> 특이사항</td>
				<td><textarea name="lmemo" cols="40"></textarea></td>
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