/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

/**
 *
 * @author PC
 */
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.time.LocalDate;
import java.sql.*;
public class JDBCUtilsTest {

    private static String jdbcURL = "your url";
    private static String jdbcUsername = "yourUser";
    private static String jdbcPassword = "yourPassword";

    //Ham de lay connection voi mysql server
    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch(SQLException e) {
            e.printStackTrace();
        } catch(ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
    public static void printSQLException(SQLException e) {
        for(Throwable ex:e) {
            if(ex instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
    public static Date getSQLDate(LocalDate date) {
        return Date.valueOf(date);
    }
    public static LocalDate getUtilDate(Date sqlDate) {
        return sqlDate.toLocalDate();
    }
}