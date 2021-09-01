<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <%
      //session 영역에 있는 데이터를 제거한 후 , main.jsp로 이동하시오.
      session.invalidate(); 
    
      response.sendRedirect("Login.jsp");
    
    %>

</body>
</html>