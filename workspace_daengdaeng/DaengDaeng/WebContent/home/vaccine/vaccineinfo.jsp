<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="EUC-KR">

<link rel="daengdaeng icon" href="../images/favicon.ico" type="image/x-icon" />
<title>반려견 예방접종정보</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.min.js">
</script>

<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="../assets/css/joinin.css" />
<div id="top2">
	<img src="../images/logo002.png" id="logo_img"/>
</div>

<script type="text/javascript">
	window.onload = function(){
		var gallery = document.getElementById("gallery");
		var num=0;
		
		document.getElementById('prev').onclick = function(){
			num--;
			
			if(num<0){
				num=9;
			}
			gallery.src = "vaccineimage\\vaccineinfo" + num+".jpg";
			
		};
		
		document.getElementById('next').onclick = function(){
			num++;
			
			if(num>9){
				num=0;
			}
			gallery.src = "vaccineimage\\vaccineinfo" + num+".jpg";
			
		};
	};

</script>

</head>
<body>
	<p align="center" style="margin-top: 2em;">
		<img  src="vaccineimage\\left.png" id="prev">
		<img  src="vaccineimage\\vaccineinfo0.jpg" id="gallery" style="width: 100%;">
		<img  src="vaccineimage\\right.png" id="next">
	</p>
</body>
</html>