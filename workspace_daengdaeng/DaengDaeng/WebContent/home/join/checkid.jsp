<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.sql.*" %>

<%-- <jsp:useBean id="selectController" class="sogom.mgmt.libs.controller.SelectController"></jsp:useBean> --%>
<%-- <%
    String user_number = request.getParameter("cid");
    //�����ͺ��̽� ������ ���� ����
    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    
    try{
     Class.forName("oracle.jdbc.driver.OracleDriver");
     
     con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","daengdaeng","oracle_11g");
     
     String sql = "select * from customer where cid = ?";
     pstmt = con.prepareStatement(sql);
     pstmt.setString(1, cid);
     rs = pstmt.executeQuery();
     
    boolean flag = true;
    String str = "";
    if(cid == null){
    	cid = "";
    }
    
    if(!cid.equals("")){
        flag = selectController.idCheck(cid);
    }
    if(flag){    // �̹� �����ϴ� ����
        str = "NO";
        out.print(str);
    
    }else{        // ��밡���� ����
        str = "YES";
        out.print(str);
    }
%> --%>

 <%
   //���̵� �ߺ��˻�
   //�Ѿ�� ���̵� �� ��������
   String cid = request.getParameter("cid");
 
   //�ߺ��� ���̵� �ִ��� �������� ������ ����
   boolean check = false;
   
   //�����ͺ��̽� ������ ���� ����
   Connection con = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;
    String str = "";
   try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","daengdaeng","oracle_11g");
    
    String sql = "select * from customer where cid = ?";
    pstmt = con.prepareStatement(sql);
    pstmt.setString(1, cid);
    rs = pstmt.executeQuery();
    
    if(cid == null || rs.next()==true){
     check = false;
     str = "NO";
    } 
    //�׷��� ������ ��밡���� ���̵�.
    else {
     check = true;
     str = "YES";
    }
    
   } catch(Exception e) {
    out.println(e.getMessage());
   } 
   finally {
    if(rs != null) rs.close();
    if(pstmt != null) pstmt.close();
    if(con != null) con.close();
   }
   
   if(check){
    // ["]�� ""�ȿ��� ������ \�� �տ� ����� �մϴ�.
    out.print("{\"result\" :\"success\"}" );
    }else{
    out.print("{\"result\" :\"fail\"}" );
   }
 
 %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>