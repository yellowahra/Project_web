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
<!-- <script type="text/javascript">
	$(document).ready(function(){
		
		$("#adoptinfo").click(function(){
			alert("�Ծ�����");
		});
		
	});

</script> -->
	<style>
	#mask {  
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
	
		margin-top: 20em;
		margin-left: 30em;
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
		$('#mask').fadeTo("slow",0.9);    
	
		
		//������ ���� �� ����.
		$('.window').show();
		
		
	}

	$(document).ready(function(){
		//���� �� ����
		$('.openMask').click(function(e){
			e.preventDefault();
			wrapWindowByMask();
		});
		$("#mask").append("&nbsp; &nbsp;&nbsp; &nbsp;������� �Ծ��ϰ� �;��!: �ݷ����� ���� ���� ����� �Ծ����� ����� ������!<br><br><br>");
		$("#mask").append("&nbsp; &nbsp;���⵿�� �߰� �� ���� ���� 10���� ������ ������ ã�� ���� ���,<br> "+
				"&nbsp; &nbsp;�ش� ��, ��, �� ���� �������� ���� �Ǿ� ���ο��� ����/�о��� ���ֽ��ϴ�.<br>"+
				"1.&nbsp; ��� �� �Ծ��� ���Ͻô� ���⵿���� �ִ� ������ ���� ��ȭ�� �ɾ� �Ծ� �ȳ��� �����ñ� �ٶ��ϴ�.<br>"+
				"2.&nbsp; �Ծ� ��ȣ�ü��� �̸� ��ȭ�� �����Ͻð�, ������� �ȳ��� ���� �湮 �Ͻ� ���� �����մϴ�.<br>"+
				"3.&nbsp; �Ծ� �� �ź��� ���纻 2��� ����, ����, ����� �� �ʿ��� ������ �غ��ϰ� ��ȣ�ü��� �湮�� <br>"+
				"&nbsp; &nbsp; &nbsp;&nbsp;�Ծ��༭�� �ۼ��ؾ� �մϴ�.<br>"+
				"4.&nbsp; �Ծ� ��ȣ�ü����� ��û�� ������ ���� �湮�ؾ� �մϴ�.<br>"+
				"5.&nbsp; �̼����ڿ��Դ� �ݷ������� �о����� �ʽ��ϴ�. <Br>"+
				"&nbsp; &nbsp; &nbsp;&nbsp;�о��� ���ϴ� �̼����ڴ� �θ���� ����� ��� �ݵ�� �θ�԰� �Բ� �湮�ؾ� �մϴ�.<br>"+
				"6.&nbsp; �Ծ��� �����̳� ������ ���к��� ������ ���� �н� �� �ڿ����� ������ ���� <br>"+
				"&nbsp; &nbsp; &nbsp;&nbsp;�߼�ȭ ������� �� �Ϻ� ��� û���� �� �ֽ��ϴ�.<br>"
		
		);
		
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
<style type="text/css">
.button {
background-color: white;
color: black;
border: 2px solid #4CAF50;
padding: 10px 20px;
text-align: center;
text-decoration: none;
display: inline-block;
font-size: 16px;
margin-left:20px;

}
.button:hover {
background-color: #4CAF50;
color: white;
}

</style>
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
			<li><a href="list.do" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/chat_gray.png"/>��������</a></li>
			<li><a href="alist.doa" id="portfolio-link" class="skel-layers-ignoreHref"><img src="../icons/location_gray.png"/>���������</a><li>
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
	<a href="alist.doa" ><img src="../icons/location_gray.png"/>�Ծ�����</a>
	<a href="#portfolio" ><img src="../icons/location_gray.png"/>��������</a>
	<a href="#portfolio" ><img src="../icons/location_gray.png"/>���������</a>
	<br>
	
	<div id="mask"></div>
		<div class="window">
			<input type="button" href="#" class="close" value="�ݱ�"/>
		</div>
	<a href="#" class="openMask">�Ծ���� ���ǻ���</a>

	<c:forEach items="${alist}" var="dto">
	<table class="alist" cellpadding="0" cellspacing="0"  style="width:350px">
		<tr align="center" >
			<td width="100px">��ȣ</td>
			<td align="center" width="100px">${dto.aId}</td>
		</tr>
		<tr align="center">
			<td width="100px">�̸�</td>
			<td width="100px">${dto.cid}</td>
		</tr>
		<tr align="center">			
			<td width="100px">ǰ��</td>
			<td width="100px">${dto.abreed}</td>
		</tr>
		<tr align="center">
			<td width="100px">����</td>
			<td width="100px">${dto.aage}</td>
		</tr>
		<tr align="center">
			<td width="100px">����</td>
			<td width="100px">${dto.agender}</td>
		</tr>
		<tr align="center">
			<td width="100px">��ġ</td>
			<td width="100px">${dto.alocation}</td>
		</tr>
		<tr align="center">
			<td width="100px">��¥</td>
			<td width="100px">${dto.aDate}</td>	
		</tr>
		<tr align="center">
			<td width="100px">��ȸ��</td>
			<td width="100px">${dto.aHit}</td>	
		</tr>
		</table>
	</c:forEach>
	
	
		<% if(session.getAttribute("cid")!=null){ %>
		<tr id="link">
	
			<td colspan="5" align="center"><a href="write_view.do" class="button">���ۼ�</a></td>
		</tr>
	<% } else{ %>
		<tr id="link">

		<td colspan="5" align="center">�۾��⸦ ���� <a href="../login.html" class="button">�α���</a></td>
	</tr>
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