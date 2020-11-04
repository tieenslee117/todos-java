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
import models.User;
import utils.JDBCUtils;
public class UserDAO {
    public int registerUser(User user) throws  ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO users" +
            "  (username, password) VALUES " +
            " (?, ?);";
        int res = 0;
        try {
            Connection connection = JDBCUtils.getConnection();
            PreparedStatement ps = connection.prepareStatement(INSERT_USERS_SQL);
            ps.setString(1, user.getName());
            ps.setString(2, user.getPassword());
            // cau lenh thuc hien query de update db
            res = ps.executeUpdate();
        } catch(SQLException e) {
            JDBCUtils.printSQLException(e);
        }
        return res;
    }
}
