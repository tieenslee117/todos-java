<%-- 
    Document   : redirect
    Created on : Oct 31, 2020, 3:30:45 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Redirect Page</title>
    </head>
    <body>
        <% response.sendRedirect("https://www.google.com/webhp"); %>
    </body>
</html>
