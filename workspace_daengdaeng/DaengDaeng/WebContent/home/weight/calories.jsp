<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="daengdaeng icon" href="../images/favicon.ico" type="image/x-icon" />
<title>Į�θ�����</title>
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
	<input type="submit" value="���" name="calsubmit">
	<input type="reset" value="�ٽ� �Է�" name="calreset"> 
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

	�⺻Į�θ�: <%= calories %> Kcal<br>
	&lt;Ȱ������ ���� �ʿ� Į�θ�&gt;<br>
	���Ȱ����: <%= avgact %> Kcal<br>
	�����ѿ: <%= normalact %> Kcal<br>
	�ݷ��ѿ: <%= moreact %> Kcal<br>
	&lt;ü�ߺ�ȭ�� ���� �ʿ� Į�θ�&gt;<br>
	ü�߰���: <%= lessweight %> Kcal<br>
	ü�ߴø���: <%= moreweight %> Kcal<br>
	&lt;����⿡ �ʿ��� Į�θ�&gt;<br>
	���� 4���� ������ �����: <%= baby %> Kcal<br>
	���� 4���� ������ �����: <%= toddler %> Kcal<br>


</div>	
</body>
</html>