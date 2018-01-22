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
	<title>����� ��Ʈ - �۾���</title>
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
		//ȭ���� ���̿� �ʺ� ���Ѵ�.
		var maskHeight = $(document).height();  
		var maskWidth = $(window).width();  

		//����ũ�� ���̿� �ʺ� ȭ�� ������ ����� ��ü ȭ���� ä���.
		$('#mask').css({'width':maskWidth,'height':maskHeight});  

		//�ִϸ��̼� ȿ�� - �ϴ� 1�ʵ��� ��İ� �ƴٰ� 80% ���������� ����.
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
	<a href="llist.dol" style="color: red;"><img src="../icons/lost.png"/>��������</a>
	<a href="wlist.dow" ><img src="../icons/watch.png"/>���������</a>
	<br>
	
	<div id="mask"></div>
		<div class="window">
			<input type="button" class="close" value="�ݱ�"/>
		</div>
	<a href="#" class="openMask"><img src="../icons/info.png"/>������� �߰����� �� ���ǻ���</a> <br>
		 <a href="wlist.dow" class="button"><center>��Ϻ���</center></a>
	<div>
	<table class="wwrite_view" cellpadding="0" cellspacing="0" style="margin-right:auto; margin-left:auto; width: 50%;" >
		<form action="wwrite.dow" method="post">
			<tr>
				<td id="head"  >�̸�</td>
				<td><input type="text" name="cid" value=<%=cid %> size="40"></td>
			</tr>
			<tr>
				<td id="head" >ǰ��</td>
				<td><input type="text" name="wbreed" size="40"></td>
			</tr>
			<tr>
				<td id="head">����</td>
				<td><input type="text" name="wage" size="40"></td>
			</tr>
			<tr>
				<td id="head">����</td>
				<td><input type="text" name="wgender" size="40"></td>
			</tr>
			
			<tr>
				<td id="head" >��ġ</td>
				<td><input type="text" name="wlocation" size="40"></td>
			</tr>
			<tr>
				<td id="head"> ����</td>
				<td><input type="file" name="wfilename"></td>
			</tr>
			<tr>
				<td id="head">����ó</td>
				<td><input type="text" name="wcontact" size="40"></td>
			</tr>
			<tr>
				<td id="head"> Ư�̻���</td>
				<td><textarea name="wmemo" cols="40"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
				<center><input type="submit" value="�Է�"></center>
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