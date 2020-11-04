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
import javax.servlet.http.*;
import java.io.IOException;

import DAO.LoginDAO;
import models.LoginBean;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginDAO loginDao;

    public void init() {
        loginDao = new LoginDAO();
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
    throws ServletException, IOException {
        resp.sendRedirect("login/login.jsp");
    }
    

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
    throws ServletException, IOException {
        authenticate(req, resp);
    }

    private void authenticate(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        LoginBean loginBean = new LoginBean();
        loginBean.setName(name);
        loginBean.setPassword(password);

        try {
            if (loginDao.validate(loginBean)) {
                RequestDispatcher dispatcher = req.getRequestDispatcher("todo/list.jsp");
                dispatcher.forward(req, resp);
                HttpSession session = req.getSession();
                session.setAttribute("user", name);

            } else {
                HttpSession session = req.getSession();
//                 resp.sendRedirect("login.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }
}