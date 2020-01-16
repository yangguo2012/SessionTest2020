package com.woniuxy.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.woniuxy.beans.User;
import com.woniuxy.service.UserService;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet({"/login.do","/exit.do"})
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path=request.getServletPath();
		if(path.equals("/login.do")){
			String userName=request.getParameter("userName");
			String userPwd=request.getParameter("userPwd");
			User u=new User(userName,userPwd);
			UserService userService=new UserService();
			if(userService.isExit(u)){
				//得到session对象
				HttpSession session=request.getSession();
				
				session.setAttribute("userName", userName);
				response.sendRedirect("index.jsp");
			}
		}
		else if(path.equals("/exit.do")){
			
			HttpSession session=request.getSession();
			//将session中的用户名移除
			session.removeAttribute("userName");
			//重定向到登录页面
			response.sendRedirect("login.jsp");
			
		}
	}

}
