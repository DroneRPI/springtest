<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <title>DataBase List</title>
</head>
<body>
<h1>
    DataBase List
</h1>
<table border="1">
    <tr align="center">
        <td width="100px">No</td>
        <td width="100px">Latitude</td>
        <td width="100px">Longitude</td>
    </tr>
<c:forEach var="data" items="${datas}">
    <tr align="center">
        <td>${data.no}</td>
        <td>${data.Latitude}</td>
        <td>${data.Longitude}</td>
    </tr>
</c:forEach>
</table>
</body>
</html>
