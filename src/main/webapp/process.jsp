<%-- 
    Document   : exception
    Created on : Oct 31, 2020, 4:20:52 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Process Page</title>
    </head>
    <body>
        <%@ page errorPage="error.jsp" %>
        <%
            String num1 = request.getParameter("num1");
            String num2 = request.getParameter("num2");
            int a = Integer.parseInt(num1);
            int b = Integer.parseInt(num2);
            out.print(a/b);
        %>
    </body>
</html>
