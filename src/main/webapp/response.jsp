<%-- 
    Document   : response
    Created on : Oct 31, 2020, 9:51:36 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello</title>
    </head>
    <body>
        <jsp:useBean id="mybean" scope="session" class="controller.NameHandler" />
        <jsp:setProperty name="mybean" property="name" />
        <h1>Hello <jsp:getProperty name="mybean" property="name" />!</h1>
    </body>
</html>