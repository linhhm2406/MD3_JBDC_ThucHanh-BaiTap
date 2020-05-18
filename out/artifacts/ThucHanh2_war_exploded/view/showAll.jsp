<%--
  Created by IntelliJ IDEA.
  User: HoangLinh
  Date: 5/18/2020
  Time: 11:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/maincss.css">
</head>
<body>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Email</td>
        <td>Country</td>
        <td>Action</td>
        <td>Action</td>
    </tr>
    <c:forEach items="${list}" var="user">
        <tr>
            <td>${user.getId()}</td>
            <td>${user.getName()}</td>
            <td>${user.getEmail()}</td>
            <td>${user.getCountry()}</td>
            <td><a href="/user?action=update&id=${user.getId()}">Update</a></td>
            <td><a href="/user?action=delete&id=${user.getId()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<a href="/user?action=add"><input type="button" value="Creat new User"></a>
<a href="/user?action=findByCountry"><input type="button" value="Find ByCountry"></a>
</body>
</html>
