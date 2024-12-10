<!--  mvc_success.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="ch18.com.model.LoginBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC</title>
</head>
<body>
  <h3>로그인 성공했습니다.</h3>
  <p> <%
    LoginBean bean=(LoginBean) request.getAttribute("bean");
    out.print("아이디:"+bean.getId());
    %></p>
</body>
</html>