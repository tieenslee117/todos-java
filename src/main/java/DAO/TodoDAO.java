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
import java.sql.SQLException;
import java.util.List;

import models.Todo;

public interface TodoDAO {

 void insertTodo(Todo todo) throws SQLException;

 Todo selectTodo(long todoId);

 List<Todo> selectAllTodos();

 boolean deleteTodo(int id) throws SQLException;

 boolean updateTodo(Todo todo) throws SQLException;

}