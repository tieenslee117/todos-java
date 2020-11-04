/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author PC
 */
import java.sql.*;

import models.LoginBean;
import utils.JDBCUtils;
public class LoginDAO {
    public boolean validate(LoginBean loginBean) throws ClassNotFoundException {
        boolean status = false;
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection connection = JDBCUtils.getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection
            .prepareStatement("SELECT * FROM users WHERE username = ? and password = ? ")) {
            preparedStatement.setString(1, loginBean.getName());
            preparedStatement.setString(2, loginBean.getPassword());
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();
            
        } catch (SQLException e) {
            // process sql exception
            JDBCUtils.printSQLException(e);
        }
        return status;
    }
}
