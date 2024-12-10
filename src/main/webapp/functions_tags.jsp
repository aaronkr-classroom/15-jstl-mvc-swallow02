<!-- functions_tags.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL: Functions</title>
</head>
<body>
  <p>Java 문자열 검색</p>
  <p>Hello,Java Server Pages! => 
     ${fn:contains("Hello, Jaba Server Pages!","java") }</p>
  <p>hello,java server pages! => 
     ${fn:containsIgnoreCase("hello, jaba Ssrver pages!","JAVA") }</p>
     
     <hr>
     <c:set var="texts" value="${fn:split('Hello, Jaba Server Pages!', ' ') }" />
     <c:forEach var="i" begin="0" end="${fn:length(texts)-1 }">
        <p>text[${i}] = ${texts[i]}</p>
     </c:forEach>
     <p><c:out value="${fn:join(texts,'*') }" /></p>
</body>
</html>