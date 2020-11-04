/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author PC
 */
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import models.User;
import DAO.UserDAO;
@WebServlet("/register")
public class UserController extends HttpServlet{
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;
    public void init() {
        userDAO = new UserDAO();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        register(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("register/register.jsp");
    }
    public void register(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String name =  req.getParameter("name");
        String password = req.getParameter("password");
        User user = new User();
        try {
            int result = userDAO.registerUser(user);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        RequestDispatcher dispatcher = req.getRequestDispatcher("register/register.jsp");
        dispatcher.forward(req, resp);
    }
    
}
