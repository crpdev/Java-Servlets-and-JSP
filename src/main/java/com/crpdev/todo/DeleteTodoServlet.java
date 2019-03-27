package com.crpdev.todo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/delete-todo.do")
public class DeleteTodoServlet extends HttpServlet{
	
	private TodoService todoService = new TodoService();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String todoToDelete = request.getParameter("todo");
		String categoryToDelete = request.getParameter("todo");
		todoService.deleteTodo(new Todo(todoToDelete, categoryToDelete));
		response.sendRedirect("/list-todo.do");
	}
}
