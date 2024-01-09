package com.servlet;

import java.io.IOException;

import com.DB.DBConnect;
import com.dao.UserDAO;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlt
 */
@WebServlet("/login")
public class LoginServlt extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String em = request.getParameter("email");
			String ps = request.getParameter("password");
			User u = new User();
			HttpSession session = request.getSession();
			
			//static mail & password for ADMIN
			if("admin@gmail.com".equals(em) && "admin".equals(ps)) {
				session.setAttribute("userobj", u);
				u.setRole("admin");
				response.sendRedirect("admin.jsp");
			}else {
		
				UserDAO dao = new UserDAO(DBConnect.getConn());
				User user = dao.login(em, ps);
				
				if(user != null) {
					session.setAttribute("userobj",user);
					response.sendRedirect("home.jsp");
				}else {
					session.setAttribute("succMsg","Invalid Email or Password");
					response.sendRedirect("login.jsp");
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	} 

}
