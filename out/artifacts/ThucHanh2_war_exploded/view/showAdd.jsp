<%--
  Created by IntelliJ IDEA.
  User: HoangLinh
  Date: 5/19/2020
  Time: 12:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/user?action=add" method="post">
    <table>
        <tr>
            <td>ID</td>
            <td><input type="text" name="newId"></td>
        </tr>
        <tr>
            <td>Name</td>
            <td><input type="text" name="newName"></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="newEmail"></td>
        </tr>
        <tr>
            <td>Country</td>
            <td><input type="text" name="newCountry"></td>
        </tr>
        <tr>
            <td><input type="submit" value="Submit"></td>
            <td><a href="/user"><input type="button" value="Cancel"></a></td>
        </tr>
    </table>
</form>
</body>
</html>
