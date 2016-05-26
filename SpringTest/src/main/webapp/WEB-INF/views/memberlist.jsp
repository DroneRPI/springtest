<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <title>MemberList</title>
</head>
<body>
<h1>
    Member List
</h1>
<table border="1">
    <tr align="center">
        <td width="100px">아이디</td>
        <td width="100px">비밀번호</td>
        <td width="100px">이름</td>
        <td width="100px">이메일</td>
        <td width="100px">핸드폰</td>
    </tr>
<c:forEach var="login" items="${logins}">
    <tr align="center">
        <td>${login.id}</td>
        <td>${login.pwd}</td>
        <td>${login.names}</td>
        <td>${login.email}</td>
        <td>${login.phone}</td>
    </tr>
</c:forEach>
</table>
</body>
</html>
