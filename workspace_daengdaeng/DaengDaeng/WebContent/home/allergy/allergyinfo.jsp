<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="EUC-KR">

<link rel="daengdaeng icon" href="../images/favicon.ico" type="image/x-icon" />
<title>�ݷ��� �˷����� ����</title>
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
&#x25B6;�˷����� ����&#x25C0;<br>
<a href="#" onclick="toggle_visibility('reaction1');">&lt;1. ���� ���� �ܽ��ϴ�.&gt;</a><br>
<div id="reaction1" style="display:none;">
������ �˷������� ���� ������ ���� �ܴ� �����Դϴ�. <bR>
�˷������ �������� �����ϱ� ������ <br>
�ݷ����� ��ҿ� �ٸ��� ���� �ܴ� �ٸ�<br>
�ǽ��� �ʿ䰡 �ֽ��ϴ�.<BR>
</div>

<a href="#" onclick="toggle_visibility('reaction2');">&lt;2. ���� ���� �Ӱų� �����ϴ�.&gt;</a><br>
<div id="reaction2" style="display:none;">
�˷������ �ݷ����� �߿��� �������� �����մϴ�. <br>
Ư�� ���̳� �߰��� ���̰� �Ӱ� �����Ǿ��ٸ� <br>
�˷������� ���ɼ��� �����ϴ�.<br>
</div>

<a href="#" onclick="toggle_visibility('reaction3');">&lt;3. ������ ���� ���ϴ�.&gt;</a><br>
<div id="reaction3" style="display:none;">
�ݷ��ߵ鵵 ���ó�� �ɰ��糪 Ǯ, ���� � ���� <br>
�˷����Ⱑ �Ͼ�⵵ �մϴ�.<br>
�ݷ����� ���� ���� �ܰų� ������ ���ϰ� ���ٸ�<br>
�˷����⸦ �ΰ� ���� �� �ֽ��ϴ�.<br>
</div>

<a href="#" onclick="toggle_visibility('reaction4');">&lt;4. �Ǻι���, ���帧, ������ ����ϴ�.&gt;</a><br>
<div id="reaction4" style="display:none;">
�˷������ �Ǻθ� �ڱ��ϱ� ������ �����̳� ���� ��<bR>
�Ǻ� ��ȯ�� ������ �� �ֽ��ϴ�.<bR>
���Ӹ��ƴ϶� �Ϳ��� ������ �Ͼ� �� �� �ֱ� ������, <br>
�ݷ��� �Ǻο� ����, ���帧, ������ ������ �ʾҴ��� <br>
���÷� Ȯ���� �ִ� ���� �����ϴ�.<Br>
</div>

<a href="#" onclick="toggle_visibility('reaction5');">&lt;5. ���䳪 ���縦 �Ѵ�.&gt;</a><br>
<div id="reaction5" style="display:none;">
�˷����� ��ȯ�� ������ �ִٸ�,<bR>
��ȭ������� ������ ��ĥ�� �ֽ��ϴ�.<bR>
��, ����, ���忰 ���� ������ ��Ÿ���� <br>
�̴� ���䳪 ���縦 �����մϴ�.<br>
�������� ���� �� ���䰡 ���� ��쿡��<br>
���ǻ�� ����� ���°��� �����ϴ�.<Br>
</div>


<a href="#" onclick="toggle_visibility('reason');">&lt;�˷����� ����&gt;</a><br>
<div id="reason" style="display:none;">
�˷������ �����߿� �ִ� �ɰ���, <Br>
����� ������ ���ߵ˴ϴ�.<br>
���� �������� ���ߵǱ⵵ �ϴµ�, <br>
�˷����⸦ ������ ���ɼ��� �ִ� ������ <br>
�Ұ��, ����ǰ, �߰��, ���, ��, ����, <br>
������, ��, ����, �������, ÷���� ���� �ֽ��ϴ�.
</div>


&#x25B6;�˷����� ���� ��ȭ���&#x25C0;<br>
<a href="#" onclick="toggle_visibility('treat1');">&lt;1. ������ �����մϴ�.&gt;</a><br>
<div id="treat1" style="display:none;">
�ݷ��ߵ� ����� ���������� ���� �˷����Ⱑ ���� �� �ֽ��ϴ�.<br>
�׷��� ������ ���� û���Ͽ� ������ �����ϴ� ���� �����ϴ�.<br>
���� ī���� ������ ����ϰ� ���� ���ɼ��� �ſ� ���� ������<br>
�ǵ����̸� ī���� �����ϰ� �� �ٴڿ��� ��Ȱ�ϴ� ���� �����ϴ�.<br>
</div>
<a href="#" onclick="toggle_visibility('treat2');">&lt;2. ������ ���� ���Դϴ�.&gt;</a><br>
<div id="treat2" style="display:none;">
�ݷ��ߵ� ���ó�� Ư�� ���Ŀ� ���� <br>�˷����� ������ ���� �� �ֽ��ϴ�. <bR>

�ݷ����� ���� �� ���ϰ� ���������� ȣ���ϰų�<Br>
���� �� ����� ���� ������ ���δٸ� <Br>
�� ������ �����ϰ� ���̴� ���� �����ϴ�.<br>
</div>
<a href="#" onclick="toggle_visibility('treat3');">&lt;3. ���ڱؼ� ��ǰ�� ����մϴ�.&gt;</a><br>
<div id="treat3" style="display:none;">
�ݷ����� �˷����� ��ȯ�� ������ ������ �̸� �ؼ��ϰ���<br>
���� ����� ��Ű�� ��찡 �����ϴ�. <br>
������ ��忡�� ������ ���� ��ǰ�� ���Ǳ� ������ <bR>
��ǰ ���п� ���� �˷����Ⱑ �� ��ȭ �� ���� �ֽ��ϴ�. <br>
���� ���� �̷��� �ְ��� ħ������ ��Ź�� ������ <br>
���ڱؼ� ������ ����ϴ� ���� �����ϴ�. <br><br><br><br>
</div>

<p style="color: red; font-size: 120%; text-align: center;">
**���ǻ���**<br>
��� ������ �˷����� �Ӹ� �ƴ϶�<br> 
�ٸ� ���ο� ���ؼ��� ��Ÿ�� �� �����Ƿ�<br>
�ݵ�� ���ǻ�� ����ϴ� ���� �����ϴ�.<br>
�ڰ� ������ �ſ� �����մϴ�.<br>
</p>
 </div>
</body>
</html>