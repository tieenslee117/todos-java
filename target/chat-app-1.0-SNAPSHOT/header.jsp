<%-- 
    Document   : header
    Created on : Nov 3, 2020, 10:22:45 PM
    Author     : PC
--%>

<header>
    <nav class="navbar navbar-expand-md navbar-dark"
         style="background-color: #ff9999">
            <div>
                    <a href="#" class="navbar-brand">Todo App</a>
            </div>

            <ul class="navbar-nav navbar-collapse justify-content-end">
                    <li><a href="<%= request.getContextPath() %>/login" class="nav-link">Login</a></li>
                    <li><a href="<%= request.getContextPath() %>/register" class="nav-link">Sign Up</a></li>
            </ul>
    </nav>
</header>
