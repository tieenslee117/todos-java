<%-- 
    Document   : welcome
    Created on : Oct 31, 2020, 3:00:40 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello <%= request.getParameter("name") %> </h1>
        
        <h2> This is config file
            <%
            String driver = config.getInitParameter("dname");
            out.print(driver);
            %>
        </h2>
    </body>
</html>
