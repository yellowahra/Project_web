<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="daengdaeng icon" href="../images/favicon.ico" type="image/x-icon" />
<title>칼로리계산기</title>
<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="../assets/css/joinin.css" />

</head>
<body>
<div id="top2">
	<img src="../images/logo002.png" id="logo_img"/>
</div>
<img src="dog-calculating-calories.jpg" alt="adopt dog" style="width: 100%; margin-top:3em; margin-bottom:1em;">


	<form name="calories" method="post">
	<input type="text" name="insertweight" width="200" size="10">
	<br>
	<input type="submit" value="계산" name="calsubmit">
	<input type="reset" value="다시 입력" name="calreset"> 
	<%
	double calories=0;
	double avgact=0; 
	double normalact=0;
	double moreact=0; 
	double lessweight=0;
	double moreweight=0; 
	double baby=0;
	double toddler=0;
	/* String calories2="";
	String avgact2=""; 
	String normalact2=""; String moreact2="";
	String lessweight2=""; String moreweight2=""; 
	String baby2=""; String toddler2=""; */
	if(request.getMethod().equals("POST")){
		int insertweight=Integer.parseInt(request.getParameter("insertweight"));
		calories= (30*insertweight) +70;
		avgact = (calories)*1.5;
		normalact = calories*2;
		moreact = calories*5;
		lessweight = calories*1;
		moreweight =calories*1.7;
		baby =calories*3;
		toddler =calories*2;
			
		
	}
	%>
	</form>
<div style="margin-left:1em; margin-bottom: 3em;">

	기본칼로리: <%= calories %> Kcal<br>
	&lt;활동량에 따른 필요 칼로리&gt;<br>
	평균활동량: <%= avgact %> Kcal<br>
	적당한운동: <%= normalact %> Kcal<br>
	격렬한운동: <%= moreact %> Kcal<br>
	&lt;체중변화에 따른 필요 칼로리&gt;<br>
	체중감량: <%= lessweight %> Kcal<br>
	체중늘리기: <%= moreweight %> Kcal<br>
	&lt;성장기에 필요한 칼로리&gt;<br>
	생후 4개월 이전의 성장기: <%= baby %> Kcal<br>
	생후 4개월 이후의 성장기: <%= toddler %> Kcal<br>


</div>	
</body>
</html>