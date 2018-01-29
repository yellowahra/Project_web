<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="EUC-KR">

<link rel="daengdaeng icon" href="../images/favicon.ico" type="image/x-icon" />
<title>반려견 알레르기 정보</title>
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
<img src="allergyimage/allergy.jpg" alt="adopt dog" style="width: 100%; margin-bottom:1em;">
<div style="margin-left: 1em; margin-right: 1em; margin-bottom: 3em;">
&#x25B6;알레르기 증상&#x25C0;<br>
<a href="#" onclick="toggle_visibility('reaction1');">&lt;1. 몸을 자주 긁습니다.&gt;</a><br>
<div id="reaction1" style="display:none;">
강아지 알레르기의 흔한 증상은 몸을 긁는 증상입니다. <bR>
알레르기는 가려움을 동반하기 때문에 <br>
반려견이 평소와 다르게 많이 긁는 다면<br>
의심할 필요가 있습니다.<BR>
</div>

<a href="#" onclick="toggle_visibility('reaction2');">&lt;2. 발을 자주 핥거나 깨뭅니다.&gt;</a><br>
<div id="reaction2" style="display:none;">
알레르기는 반려견의 발에도 가려움을 유발합니다. <br>
특히 발이나 발가락 사이가 붉게 변색되었다면 <br>
알레르기일 가능성이 높습니다.<br>
</div>

<a href="#" onclick="toggle_visibility('reaction3');">&lt;3. 눈곱이 많이 낍니다.&gt;</a><br>
<div id="reaction3" style="display:none;">
반려견들도 사람처럼 꽃가루나 풀, 먼지 등에 의해 <br>
알레르기가 일어나기도 합니다.<br>
반려견이 눈을 가꾸 긁거나 눈곱이 심하게 꼈다면<br>
알레르기를 앓고 있을 수 있습니다.<br>
</div>

<a href="#" onclick="toggle_visibility('reaction4');">&lt;4. 피부발진, 여드름, 염증이 생깁니다.&gt;</a><br>
<div id="reaction4" style="display:none;">
알레르기는 피부를 자극하기 때문에 발진이나 염증 등<bR>
피부 질환을 가져올 수 있습니다.<bR>
몸뿐만아니라 귀에도 염증이 일어 날 수 있기 때문에, <br>
반려견 피부에 발진, 여드름, 염증이 나지는 않았는지 <br>
수시로 확인해 주는 것이 좋습니다.<Br>
</div>

<a href="#" onclick="toggle_visibility('reaction5');">&lt;5. 구토나 설사를 한다.&gt;</a><br>
<div id="reaction5" style="display:none;">
알레르기 질환을 가지고 있다면,<bR>
소화기관에도 영향을 미칠수 있습니다.<bR>
위, 소장, 대장염 등의 증상이 나타나며 <br>
이는 구토나 설사를 유발합니다.<br>
지속적인 설사 및 구토가 있을 경우에는<br>
수의사와 상담해 보는것이 좋습니다.<Br>
</div>


<a href="#" onclick="toggle_visibility('reason');">&lt;알레르기 원인&gt;</a><br>
<div id="reason" style="display:none;">
알레르기는 공기중에 있는 꽃가루, <Br>
진드기 등으로 유발됩니다.<br>
또한 음식으로 유발되기도 하는데, <br>
알레르기를 유발할 가능성이 있는 음식은 <br>
소고기, 유제품, 닭고기, 계란, 밀, 누룩, <br>
옥수수, 콩, 간장, 돼지고기, 첨가제 등이 있습니다.
</div>


&#x25B6;알레르기 증상 완화방법&#x25C0;<br>
<a href="#" onclick="toggle_visibility('treat1');">&lt;1. 먼지를 제거합니다.&gt;</a><br>
<div id="treat1" style="display:none;">
반려견도 사람과 마찬가지로 먼지 알레르기가 있을 수 있습니다.<br>
그렇기 때문에 집을 청소하여 먼지를 제거하는 것이 좋습니다.<br>
또한 카펫은 먼지를 흡수하고 있을 가능성이 매우 높기 때문에<br>
되도록이면 카펫을 정리하고 맨 바닥에서 생활하는 것이 좋습니다.<br>
</div>
<a href="#" onclick="toggle_visibility('treat2');">&lt;2. 음식을 가려 먹입니다.&gt;</a><br>
<div id="treat2" style="display:none;">
반려견도 사람처럼 특정 음식에 대한 <br>알레르기 반응이 있을 수 있습니다. <bR>

반려견이 먹은 후 심하게 간지러움을 호소하거나<Br>
설사 및 구토와 같은 증상을 보인다면 <Br>
그 음식을 제외하고 먹이는 것이 좋습니다.<br>
</div>
<a href="#" onclick="toggle_visibility('treat3');">&lt;3. 저자극성 제품을 사용합니다.&gt;</a><br>
<div id="treat3" style="display:none;">
반려견이 알레르기 질환을 가지고 있으면 이를 해소하고자<br>
자주 목욕을 시키는 경우가 많습니다. <br>
하지만 목욕에도 강아지 전용 제품이 사용되기 때문에 <bR>
제품 성분에 따라 알레르기가 더 악화 될 수도 있습니다. <br>
또한 같은 이류로 애견의 침구류를 세탁할 때에도 <br>
저자극성 세제를 사용하는 것이 좋습니다. <br><br><br><br>
</div>

<p style="color: red; font-size: 120%; text-align: center;">
**주의사항**<br>
모든 증상은 알레르기 뿐만 아니라<br> 
다른 원인에 의해서도 나타날 수 있으므로<br>
반드시 수의사와 상담하는 것이 좋습니다.<br>
자가 진단은 매우 위험합니다.<br>
</p>
 </div>
</body>
</html>