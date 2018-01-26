<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="EUC-KR">

<link rel="daengdaeng icon" href="../images/favicon.ico" type="image/x-icon" />
<title>반려견 약복용 정보</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.min.js">
</script>

<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="../assets/css/joinin.css" />
<div id="top2">
	<img src="../images/logo002.png" id="logo_img"/>
</div>

<script type="text/javascript">

    function toggle_visibility(id) {
       var e = document.getElementById(id);
       if(e.style.display == 'block')
          e.style.display = 'none';
       else
          e.style.display = 'block';
    }

</script>
<style>
body{
font-size: 20pt;

}
div a {
	 font-weight: bold;
	 font-color: black;

}
</style>
</head>
<body>
<img src="medicine_info.jpg" alt="adopt dog" style="width: 100%; margin-bottom:1em;">
<div style="margin-left: 1em; margin-right: 1em; margin-bottom: 3em;">
&#x25B6;반려견의 투약방법&#x25C0;<br>
<a href="#" onclick="toggle_visibility('pill');">&lt;알약 투약방법&gt;</a><br>
<div id="pill" style="display:none;">
1. 왼속바닥이 콧등 부분에 닿게 하여 <br>반려견 머리를 뒤로 젖힙니다.<br>
2. 왼손엄지와 검지로 송곳니 뒤쪽을 잡고 입을 벌립니다.<br>
3. 오른존 중지와 검지로 약을 잡고<br> 가능한 한 안쪽에 약을 집어 넣습니다.<br>
4. 약을 넣은 후 입을 닫고 약 3초간 기다립니다.<br>
5. 반려견의 코에 바람을 불어 주면서 손을 놓으면 <br>혀로 코를 핥으면서 삼키게 됩니다.<Br>
</div>

<a href="#" onclick="toggle_visibility('syrup');">&lt;물약 투약방법&gt;</a><br>
<div id="syrup" style="display:none;">
1. 왼손 바닥이 아래턱에 닿도록 잡고 입을 벌립니다.<br>
2. 오른손으로 물약이 들어있는 스포이드 또는 주사기를<br> 입 옆쪽 이빨 사이로 짜서 넣습니다.<br>
3. 약을 넣은 후 입을 마둘게 하여 잠시 동안 기다립니다.<br>
</div>

<a href="#" onclick="toggle_visibility('powder');">&lt;가루약 투약방법&gt;</a><br>
<div id="powder" style="display:none;">
1. 가루약을 설탕물 또는 요구르트에 섞습니다.<br>
2. 위의 물약 먹이는 방법으로 먹입니다.<br>
3. 가루약은 좋아하는 음식과 섞어서 주면 잘 먹습니다.<br>
</div>

<a href="#" onclick="toggle_visibility('drop');">&lt;안약과 귀약 투약방법&gt;</a><br>
<div id="drop" style="display:none;">
1. 반려견이 약을 보지 못하게 합니다.<br>
2. 안약과 귀약을 투여할 때는 <br>개의 눈과 귀가 상하지 않게 조심스럽게 넣어줍니다.<br>

</div>
</body>
</html>