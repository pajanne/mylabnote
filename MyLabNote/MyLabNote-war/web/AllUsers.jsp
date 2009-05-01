<%-- 
    Document   : AllUsers
    Created on : Jan 6, 2009, 6:17:08 PM
    Author     : pajanne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="org.mylabnote.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MyLabNote: Users</title>
    </head>
    <body>
        <h1>MyLabNote</h1>
        <hr />
        <a href='./'>Home</a> |
        <a href='UserController'>Users</a> |
        <a href='EntryController'>Entries</a>
        <hr />

        <h2>User Details</h2>
        <c:choose>
        <c:when test="${requestScope.user.version == null}">
            <c:set var="userVersion" value="1" scope="session" />
        </c:when>
        <c:otherwise>
            <c:set var="userVersion" value="${requestScope.user.version}" scope="session" />
        </c:otherwise>
        </c:choose>
        <form action="UserController" method="get">
            <input type="hidden" name="userVersion" value="${userVersion}" />
            <table border='1' cellpadding='4'>
                <tbody>
                    <tr>
                        <td>User Identity</td>
                        <td><input name='userId' value='${requestScope.user.id}' type='text'></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input name='userName' value='${requestScope.user.name}' type='text'></td>
                    </tr>
                    <tr>
                        <td>User Email</td>
                        <td><input name='userEmail' value='${requestScope.user.email}' type='text'></td>
                    </tr>
                </tbody>
            </table>
            <br />
            <input name='submit' value='search' type='submit' />
            <input name='submit' value='add' type='submit' />
            <input name='submit' value='update' type='submit' />
            <input name='submit' value='delete' type='submit' />
        </form>

        <h2>All Users</h2>
        <table border="1" cellpadding='4'>
            <thead>
                <tr>
                    <th>User ID</th>
                    <th>Name</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${requestScope.users}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.name}</td>
                    <td>${user.email}</td>
                </tr>
                </c:forEach>
            </tbody>
        </table>

        <h2>Messages</h2>
        <c:if test="${requestScope.message != null}">
            <font color='red'>${requestScope.message}</font>
        </c:if>
        <c:if test="${requestScope.info != null}">
            <font color='green'>${requestScope.info}</font>
        </c:if>

    </body>
</html>
