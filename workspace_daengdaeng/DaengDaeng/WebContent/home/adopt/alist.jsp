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
	<title>����� ��Ʈ - �۾���</title>
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

		$('#mask').append("&nbsp; &nbsp;&nbsp; &nbsp;������� �Ծ��ϰ� �;��!: �ݷ����� ���� ���� ����� �Ծ����� ����� ������!<br><br><br>"
				+"&nbsp; &nbsp;���⵿�� �߰� �� ���� ���� 10���� ������ ������ ã�� ���� ���,<br> "+
				"&nbsp; &nbsp;�ش� ��, ��, �� ���� �������� ���� �Ǿ� ���ο��� ����/�о��� ���ֽ��ϴ�.<br>"+
				"1.&nbsp; ��� �� �Ծ��� ���Ͻô� ���⵿���� �ִ� ������ ���� ��ȭ�� �ɾ� �Ծ� �ȳ��� �����ñ� �ٶ��ϴ�.<br>"+
				"2.&nbsp; �Ծ� ��ȣ�ü��� �̸� ��ȭ�� �����Ͻð�, ������� �ȳ��� ���� �湮 �Ͻ� ���� �����մϴ�.<br>"+
				"3.&nbsp; �Ծ� �� �ź��� ���纻 2��� ����, ����, ����� �� �ʿ��� ������ �غ��ϰ� ��ȣ�ü��� �湮�� <br>"+
				"&nbsp; &nbsp; &nbsp;&nbsp;�Ծ��༭�� �ۼ��ؾ� �մϴ�.<br>"+
				"4.&nbsp; �Ծ� ��ȣ�ü����� ��û�� ������ ���� �湮�ؾ� �մϴ�.<br>"+
				"5.&nbsp; �̼����ڿ��Դ� �ݷ������� �о����� �ʽ��ϴ�. <Br>"+
				"&nbsp; &nbsp; &nbsp;&nbsp;�о��� ���ϴ� �̼����ڴ� �θ���� ����� ��� �ݵ�� �θ�԰� �Բ� �湮�ؾ� �մϴ�.<br>"+
				"6.&nbsp; �Ծ��� �����̳� ������ ���к��� ������ ���� �н� �� �ڿ����� ������ ���� <br>"+
				"&nbsp; &nbsp; &nbsp;&nbsp;�߼�ȭ ������� �� �Ϻ� ��� û���� �� �ֽ��ϴ�."
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
		<li><a href="#top" id="top-link" class="skel-layers-ignoreHref"><img src="../icons/dog_gray.png"/>����� ���</a></li>
		<li><a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/calendar_gray.png"/>����� ���̾</a>
		<ul id="subMenu">
			<li id="subMenu_li"><a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/write_gray.png"/>����� ����</a></li>
			<li id="subMenu_li"> <a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/write_gray.png"/>����� �߾�</a><li>
			<li id="subMenu_li"><a href="#about" id="about-link" class="skel-layers-ignoreHref"><img src="../icons/health_gray.png"/>����� �ǰ���ø</a></li>
		</ul>
		</li>
		<li><a href="#contact" id="contact-link" class="skel-layers-ignoreHref"><img src="../icons/dog_gray.png"/>����� Ŀ��Ƽ��</a>
		<ul id="subMenu">
			<li><a href="../board/list.do" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/chat_gray.png"/>��������</a></li>
			<li><a href="alist.jsp" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/location_gray.png"/>���������</a><li>
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
	
	<a href="alist.doa" style="color: red;"><img src="../icons/home.png">�Ծ�����</a>
	<a href="../lost/llist.dol" ><img src="../icons/lost.png"/>��������</a>
	<a href="../watch/wlist.dow" ><img src="../icons/watch.png"/>���������</a>
	<br>
		<div id="mask"></div>
	<div class="window">
		<input type="button" href="#" class="close" value="�ݱ�"/>
	</div>
	<a href="#" class="openMask"><img src="../icons/info.png"/>�Ծ���� ���ǻ���</a>
	
		
		<% if(session.getAttribute("cid")!=null){ %>
		<p id="link">
	
			<a href="awrite_view.doa" class="button">���ۼ�</a>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
			<a href="#" onclick="window.open('info.html', 'name', 'resizable= no width=430 height=750'); return false">�Ծ繮��</a>
		</p>
	<% } else{ %>
		<p id="link">

		<a href="../login.html" class="button">�α���</a>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
	</p>
	<%} %>
	<div>
	
	<c:forEach items="${alist}" var="dto">
	<table class="alist" cellpadding="0" cellspacing="0"  style="width:350px">
	
		<tr align="center">			
			<td colspan="4"><img src='adoptimage/${dto.filename}' width='300px'></td>
			
		</tr>
		<tr align="center" >
			<td width="50px">��ȣ</td>
			<td align="center" width="50px">${dto.aId}</td>
			<td width="60px">�Խ���</td>
			<td width="150px">${dto.cid}</td>
		</tr>
		<tr align="center">
			<td width="50px">����</td>
			<td width="50px">${dto.aage}</td>
			<td width="60px">ǰ��</td>
			<td width="150px">${dto.abreed}</td>
			
		</tr>

		<tr align="center">
			<td width="50px">����</td>
			<td width="50px">${dto.agender}</td>
			<td width="60px">��ġ</td>
			<td width="150px">${dto.alocation}</td>
		</tr>

		<tr align="center">
			<td  colspan="2">��¥</td>
			<td colspan="2">${dto.aDate}</td>	
		</tr>

		<!-- master�� �α��� �Ǿ��� ��쿡�� �Խñ� ���� ���� -->
		<% if(session.getAttribute("cid")!="null"){ %>
		<tr align="center">
			<td colspan="4">
				<a href="#" onclick="window.open('info2.html', 'name', 'resizable= no width=430px height=750px'); return false">�Խù����� ����</a>&nbsp; &nbsp;
				<a href="#" onclick="window.open('info.html', 'name', 'resizable= no width=430px height=750px'); return false">�Ծ繮��</a>
			</td>
		</tr>
	<% } else if(session.getAttribute("cid").equals("master")){ %>
		<tr align="center">
				<td  colspan="4">	
				<a href="adelete.doa?aId=${dto.aId}">�����ϱ�</a>&nbsp; &nbsp; &nbsp;
				<a href="#" onclick="window.open('info.html', 'name', 'resizable= no width=430px height=750px'); return false">�Ծ繮��</a>
				</td>
		</tr>
	<%} else{ %>
			<tr align="center">
			<td colspan="4">
				<a href="#" onclick="window.open('info2.html', 'name', 'resizable= no width=430px height=750px'); return false">�Խù����� ����</a>&nbsp; &nbsp;
				<a href="#" onclick="window.open('info.html', 'name', 'resizable= no width=430px height=750px'); return false">�Ծ繮��</a>
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