<%-- 
    Document   : login
    Created on : Nov 3, 2020, 10:16:18 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
    </head>
    <body>
        <jsp:include page=".././header.jsp"></jsp:include>
	<div class="container col-md-8 col-md-offset-3" style="overflow: auto">
		<h1>User Login</h1>
		<form action="<%=request.getContextPath()%>/login" method="POST">
			<div class="form-group">
				<label for="uname">User Name:</label>
                                <input type="text"
					class="form-control" id="name" placeholder="User Name"
					name="name" required>
			</div>

			<div class="form-group">
				<label for="uname">Password:</label> 
                                <input type="password"
					class="form-control" id="password" placeholder="Password"
					name="password" required>
			</div>


			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
    </body>
</html>
