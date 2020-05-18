<%--
  Created by IntelliJ IDEA.
  User: HoangLinh
  Date: 5/19/2020
  Time: 12:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/user?action=delete" method="post">
    <table>
        <tr>
            <td>ID</td>
            <td><input type="text" name="id" value="${user.getId()}"></td>
        </tr>
        <tr>
            <td>Name</td>
            <td>${user.getName()}</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>${user.getEmail()}</td>
        </tr>
        <tr>
            <td>Country</td>
            <td>${user.getCountry()}</td>
        </tr>
        <tr>
            <td><input type="submit" value="Confirm"></td>
            <td><a href="/user"><input type="button" value="Cancel"></a></td>
        </tr>
    </table>
</form>
</body>
</html>
