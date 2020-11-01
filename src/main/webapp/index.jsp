<%-- 
    Document   : index
    Created on : Oct 31, 2020, 9:49:25 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="style.css" />
    </head>
    <body>
        <%@ page import="java.util.*" %>
        <%@ page info="this is info" %>
        <h1>Greeting Form</h1>
        <form name="Name input form" action="response.jsp">
            <input name="name" type="text" placeholder="Enter your name" />
            <input type="submit" value="submit"/>
        </form>
        <hr/>
        Current Time: <%=java.util.Calendar.getInstance().getTime() %>
                <hr/>

        <form action="welcome.jsp" name="submit name">
            <input name="name" type="text" placeholder="Enter your name but submit to another" />
            <input type="submit" value="let's go" />
        </form>
        <hr/>

        <h1>This is implicit objects</h1>
        <table id="table">
            <thead>
                <tr>
                    <th>Object</th>
                    <th>Type</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>out</td>
                    <td>JspWriter</td>
                </tr>
                <tr>
                    <td>request</td>
                    <td>HttpServletRequest</td>
                </tr>
                <tr>
                    <td>response</td>
                    <td>HttpServletResponse</td>
                </tr>
                <tr>
                    <td>config</td>
                    <td>SerlvetConfig</td>
                </tr>
                <tr>
                    <td>application</td>
                    <td>ServletContext</td>
                </tr>
                <tr>
                    <td>session</td>
                    <td>HttpSesstion</td>
                </tr>
                <tr>
                    <td>pageContext</td>
                    <td>PageContext</td>
                </tr>
                <tr>
                    <td>page</td>
                    <td>Object</td>
                </tr>
                <tr>
                    <td>exception</td>
                    <td>Throwable</td>
                </tr>
                
            </tbody>
        </table>
        <hr/>
        <form action='redirect.jsp' name="redirect">
            <input type='submit' value="go to google" />
        </form>
        <hr />
        <h1>This is exception example</h1>
        <form name="exception" action='process.jsp'>
            <input name="num1" type="text" />
            <input name="num2" type='text' />
            <input type='submit' value="divide" />
        </form>
    </body>
</html>
