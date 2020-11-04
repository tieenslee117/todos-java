<%-- 
    Document   : error
    Created on : Oct 31, 2020, 4:21:02 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
<!--    <%@ page isErrorPage="true" %>
        <h3><%=exception%></h3>-->
    <center>
        <h1>Error</h1>
        <h2><%=exception.getMessage() %><br/> </h2>
    </center>
    </body>
</html>
