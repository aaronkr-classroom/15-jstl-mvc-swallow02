<!-- core_tags.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
    <p>browser 변수 값 설정</p>
    <c:set var="browser" value="${header['User-Agent']}" />
    <c:out value="${ browser}" />
   
   <p>browser 변수 값 제거 후
   <c:remove var="browser"/>
   <c:out value="${browser}"/>
   
   <hr>
   <% String num ="";request.getParameter("number"); %>
   <c:set var="number" value="<%=num %>"/>
   <c:choose>
       <c:when test="${number % 2 == 0}">
         <p><c:out value="${number}"/>은 짝수입니다.</p>
       </c:when>
       <c:when test="${number % 2 == 1}">
         <p><c:out value="${number}"/>은 홀수입니다.</p>
       </c:when>
       <c:otherwise>
       <p>숫자가 아닙니다.</p>
       </c:otherwise>
   </c:choose>
   
   <hr>
   <h3>구구단</h3>
   <table>
      <c:forEach var="i" begin="1" end="9">
         <tr>
           <c:forEach var="j" begin="1" end="9">
              <td width=100>${i}*${j}=${i*j}</td>
           </c:forEach>
         </tr>
      </c:forEach>
   </table>
</body>
</html>