<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.sql.*" %>
 <%
   //아이디 중복검사
   //넘어온 아이디 값 가져오기
   String cid = request.getParameter("cid");
 
   //중복된 아이디가 있는지 없는지를 저장할 변수
   boolean check = false;
   
   //데이터베이스 연동을 위한 변수
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
    
    if(cid == null || rs.next()==true){
     check = false;
    } 
    //그렇지 않으면 사용가능한 아이디.
    else {
     check = true;
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
    // ["]는 ""안에서 쓰려면 \를 앞에 써줘야 합니다.
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