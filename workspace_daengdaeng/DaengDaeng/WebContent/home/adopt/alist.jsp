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
	<title>댕댕이 노트 - 글쓰기</title>
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
	  padding-top: 3em;
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
	
		margin-top: 40em;
		margin-left: 60em;
		font-size: 10pt;
	}
	.close{
		margin-bottom: 0em;
	}
	#main{
		
		padding-top: 3em;
		padding-left: 3em;
	}
	table{
		margin-top: 2em;
		margin-left: auto;
		margin-right: auto;
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

		$('#mask').append("&nbsp; &nbsp;&nbsp; &nbsp;유기견을 입양하고 싶어요!: 반려견을 사지 말고 유기견 입양으로 사랑을 나눠요!<br><br><br>"
				+"&nbsp; &nbsp;유기동물 발견 후 공고를 통해 10일이 지나도 주인을 찾지 못한 경우,<br> "+
				"&nbsp; &nbsp;해당 시, 군, 구 등이 소유권을 갖게 되어 개인에게 기증/분양할 수있습니다.<br>"+
				"1.&nbsp; 목록 중 입양을 원하시는 유기동물이 있는 곳으로 직접 전화를 걸어 입양 안내를 받으시기 바랍니다.<br>"+
				"2.&nbsp; 입양 보호시설에 미리 전화로 문의하시고, 담당자의 안내에 따라 방문 일시 등을 예약합니다.<br>"+
				"3.&nbsp; 입양 시 신분증 복사본 2장과 개집, 개줄, 목걸이 등 필요한 물픔을 준비하고 보호시설을 방문해 <br>"+
				"&nbsp; &nbsp; &nbsp;&nbsp;입양계약서를 작서해야 합니다.<br>"+
				"4.&nbsp; 입양 보호시설에는 신청자 본인이 직접 방문해야 합니다.<br>"+
				"5.&nbsp; 미성년자에게는 반려동물을 분양하지 않습니다. <Br>"+
				"&nbsp; &nbsp; &nbsp;&nbsp;분양을 원하는 미성년자는 부모님의 허락을 얻어 반드시 부모님과 함께 방문해야 합니다.<br>"+
				"6.&nbsp; 입양은 무료이나 동물의 무분별한 번식을 막고 분실 시 자연번식 방지를 위한 <br>"+
				"&nbsp; &nbsp; &nbsp;&nbsp;중성화 수술비용 등 일부 경비가 청수될 수 있습니다."
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
		<li><a href="#top" id="top-link" class="skel-layers-ignoreHref"><img src="../icons/dog_gray.png"/>댕댕이 등록</a></li>
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
			<li><a href="alist.jsp" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/location_gray.png"/>유기견정보</a><li>
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
	
	<a href="alist.doa" style="color: red;"><img src="../icons/home.png">입양정보</a>
	<a href="../lost/llist.dol" ><img src="../icons/lost.png"/>실종정보</a>
	<a href="../watch/wlist.dow" ><img src="../icons/watch.png"/>유기견정보</a>
	<br>
		<div id="mask"></div>
	<div class="window">
		<input type="button" href="#" class="close" value="닫기"/>
	</div>
	<a href="#" class="openMask"><img src="../icons/info.png"/>입양관련 주의사항</a>
	
		
		<% if(session.getAttribute("cid")!=null){ %>
		<p id="link">
	
			<a href="awrite_view.doa" class="button">글작성</a>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
			<a href="#" onclick="window.open('info.html', 'name', 'resizable= no width=430 height=750'); return false">입양문의</a>
		</p>
	<% } else{ %>
		<p id="link">

		<a href="../login.html" class="button">로그인</a>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
	</p>
	<%} %>
	<div>
	
	<c:forEach items="${alist}" var="dto">
	<table class="alist" cellpadding="0" cellspacing="0"  style="width:350px">
	
		<tr align="center">			
			<td colspan="4"><img src='adoptimage/${dto.filename}' width='300px'></td>
			
		</tr>
		<tr align="center" >
			<td width="50px">번호</td>
			<td align="center" width="50px">${dto.aId}</td>
			<td width="60px">게시자</td>
			<td width="150px">${dto.cid}</td>
		</tr>
		<tr align="center">
			<td width="50px">나이</td>
			<td width="50px">${dto.aage}</td>
			<td width="60px">품종</td>
			<td width="150px">${dto.abreed}</td>
			
		</tr>

		<tr align="center">
			<td width="50px">성별</td>
			<td width="50px">${dto.agender}</td>
			<td width="60px">위치</td>
			<td width="150px">${dto.alocation}</td>
		</tr>

		<tr align="center">
			<td  colspan="2">날짜</td>
			<td colspan="2">${dto.aDate}</td>	
		</tr>

		<!-- master로 로그인 되었을 경우에만 게시글 삭제 가능 -->
		<% if(session.getAttribute("cid")!="null"){ %>
		<tr align="center">
			<td colspan="4">
				<a href="#" onclick="window.open('info2.html', 'name', 'resizable= no width=430px height=750px'); return false">게시물관련 문의</a>&nbsp; &nbsp;
				<a href="#" onclick="window.open('info.html', 'name', 'resizable= no width=430px height=750px'); return false">입양문의</a>
			</td>
		</tr>
	<% } else if(session.getAttribute("cid").equals("master")){ %>
		<tr align="center">
				<td  colspan="4">	
				<a href="adelete.doa?aId=${dto.aId}">삭제하기</a>&nbsp; &nbsp; &nbsp;
				<a href="#" onclick="window.open('info.html', 'name', 'resizable= no width=430px height=750px'); return false">입양문의</a>
				</td>
		</tr>
	<%} else{ %>
			<tr align="center">
			<td colspan="4">
				<a href="#" onclick="window.open('info2.html', 'name', 'resizable= no width=430px height=750px'); return false">게시물관련 문의</a>&nbsp; &nbsp;
				<a href="#" onclick="window.open('info.html', 'name', 'resizable= no width=430px height=750px'); return false">입양문의</a>
			</td>
		</tr>
	<%} %>
				
		</table>
	</c:forEach>
		
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
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.scrolly.min.js"></script>
	<script src="../assets/js/jquery.scrollzer.min.js"></script>
	<script src="../assets/js/skel.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/ie/respond.min.js"></script>
	<script src="../assets/js/main.js"></script> 
</html>