<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="EUC-KR">

<link rel="daengdaeng icon" href="../images/favicon.ico" type="image/x-icon" />
<title>�ݷ��� �ູ�� ����</title>
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
&#x25B6;�ݷ����� ������&#x25C0;<br>
<a href="#" onclick="toggle_visibility('pill');">&lt;�˾� ������&gt;</a><br>
<div id="pill" style="display:none;">
1. �޼ӹٴ��� ��� �κп� ��� �Ͽ� <br>�ݷ��� �Ӹ��� �ڷ� �����ϴ�.<br>
2. �޼վ����� ������ �۰��� ������ ��� ���� �����ϴ�.<br>
3. ������ ������ ������ ���� ���<br> ������ �� ���ʿ� ���� ���� �ֽ��ϴ�.<br>
4. ���� ���� �� ���� �ݰ� �� 3�ʰ� ��ٸ��ϴ�.<br>
5. �ݷ����� �ڿ� �ٶ��� �Ҿ� �ָ鼭 ���� ������ <br>���� �ڸ� �����鼭 ��Ű�� �˴ϴ�.<Br>
</div>

<a href="#" onclick="toggle_visibility('syrup');">&lt;���� ������&gt;</a><br>
<div id="syrup" style="display:none;">
1. �޼� �ٴ��� �Ʒ��ο� �굵�� ��� ���� �����ϴ�.<br>
2. ���������� ������ ����ִ� �����̵� �Ǵ� �ֻ�⸦<br> �� ���� �̻� ���̷� ¥�� �ֽ��ϴ�.<br>
3. ���� ���� �� ���� ���Ѱ� �Ͽ� ��� ���� ��ٸ��ϴ�.<br>
</div>

<a href="#" onclick="toggle_visibility('powder');">&lt;����� ������&gt;</a><br>
<div id="powder" style="display:none;">
1. ������� ������ �Ǵ� �䱸��Ʈ�� �����ϴ�.<br>
2. ���� ���� ���̴� ������� ���Դϴ�.<br>
3. ������� �����ϴ� ���İ� ��� �ָ� �� �Խ��ϴ�.<br>
</div>

<a href="#" onclick="toggle_visibility('drop');">&lt;�Ⱦ�� �;� ������&gt;</a><br>
<div id="drop" style="display:none;">
1. �ݷ����� ���� ���� ���ϰ� �մϴ�.<br>
2. �Ⱦ�� �;��� ������ ���� <br>���� ���� �Ͱ� ������ �ʰ� ���ɽ����� �־��ݴϴ�.<br>

</div>
</body>
</html>