<%--
  Created by IntelliJ IDEA.
  User: HoangLinh
  Date: 5/18/2020
  Time: 11:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/user?action=update" method="post">
    <table>
        <tr>
            <td>ID</td>
            <td><i name="newId">${user.getId()}</i></td>
        </tr>
        <tr>
            <td>Name</td>
            <td><input type="text" name="newName" value="${user.getName()}"></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="newEmail" value="${user.getEmail()}"></td>
        </tr>
        <tr>
            <td>Country</td>
            <td><input type="text" name="newCountry" value="${user.getCountry()}"></td>
        </tr>
        <tr>
            <td><input type="submit" value="Submit"></td>
            <td><a href="/user"><input type="button" value="Cancel"></a></td>
        </tr>
    </table>
</form>
</body>
</html>
