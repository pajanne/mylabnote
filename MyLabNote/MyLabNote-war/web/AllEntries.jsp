<%-- 
    Document   : AllEntries
    Created on : Jan 7, 2009, 3:40:52 PM
    Author     : pajanne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="org.mylabnote.servlet.*" %>
<%@ page import="java.util.Calendar" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MyLabNote: Entries</title>
    </head>
    <body>
        <h1>MyLabNote</h1>
        <hr />
        <a href='./'>Home</a> |
        <a href='UserController'>Users</a> |
        <a href='EntryController'>Entries</a>
        <hr />

        <h2>Entry Details</h2>
        Coming soon...

        <h2>All Entries</h2>
        <table border="1" cellpadding='4'>
            <thead>
                <tr>
                    <th>Entry ID</th>
                    <!-- th>Date</th -->
                    <th>Name</th>
                    <th>Details</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="entry" items="${requestScope.entries}">
                <tr>
                    <td>${entry.id}</td>
                    <!-- td>${entry.creationDate}</td -->
                    <td>${entry.name}</td>
                    <td>${entry.details}</td>
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
