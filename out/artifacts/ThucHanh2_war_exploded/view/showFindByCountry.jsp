<%--
  Created by IntelliJ IDEA.
  User: HoangLinh
  Date: 5/19/2020
  Time: 12:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/user?action=findByCountry" method="post">
    <tr>
        <td><input type="text" name="findByCountry"></td>
        <td><input type="submit" value="Search"></td>
        <td><a href="/user"><input type="button" value="Cancel"></a></td>
    </tr>
</form>
<h4>Result : </h4>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Email</td>
        <td>Country</td>
    </tr>
    <c:forEach items="${list}" var="user">
        <tr>
            <td>${user.getId()}</td>
            <td>${user.getName()}</td>
            <td>${user.getEmail()}</td>
            <td>${user.getCountry()}</td>
        </tr>
    </c:forEach>
</table>
<a href="/user"><input type="button" value="Back Home"></a>
</body>
</html>
