package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import model.User;
import tools.MD5;
import tools.SendMail;

@WebServlet("/signin.html")
public class SigninController extends HttpServlet {

	String uri;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// uri=(String) req.getSession().getAttribute("uri");
		uri = (String) req.getAttribute("uri");
		req.getRequestDispatcher("/views/site/login.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String command = req.getParameter("command");
		User user = new User();
		String url = "";
		String email = "";
	
		HttpSession session = req.getSession();
		UserDAO dao = new UserDAO();
		
		switch (command) {
		case "login":
			
			Integer roleId=Integer.parseInt(req.getParameter("users"));
			
			//đăng nhập theo view
			if(roleId==1){
				user=dao.login(req.getParameter("email"),MD5.encryption(req.getParameter("password")));
				if(user !=null){
					session.setAttribute("user", user);
					String remember = req.getParameter("remember");
					Cookie ckId = new Cookie("uid", user.getEmail());
					Cookie ckPw = new Cookie("pwd", user.getPassword());
					if (remember == "true") {
						ckId.setMaxAge(30 * 24 * 60 * 60);
						ckId.setMaxAge(30 * 24 * 60 * 60);
						
					} else {
						ckId.setMaxAge(0);
						ckPw.setMaxAge(0);
					}
					resp.addCookie(ckId);
					resp.addCookie(ckPw);
					
					if (uri.endsWith("signin.html")) {
						url = "/views/site/index.jsp";
					} else {
						uri.replace("/UteScience", "");
						resp.sendRedirect(uri);
						return;
					}
					
				}else{
					url = "/views/site/login.jsp";
				}
			//đăng nhập theo employee
			}else {
				
			}
			
			
			break;

		case "register":

			email = req.getParameter("email");

			String password = req.getParameter("password");
			String confirm = req.getParameter("confirm");
			if (confirm.equals(password)) {
				// req.setAttribute("message", "Please active email");
				/*
				 * SendMail mail = new SendMail(); mail.sendMail(email,
				 * "Kích hoặt email", "WellCome " + email + "\n" +
				 * "You password is: " + password);
				 */

				
				PrintWriter out = resp.getWriter();
				if (dao.checkEmail(email)) {
					user.setEmail(email);
					user.setPassword(MD5.encryption(password));
					user.setRoleId(1);
					dao.insertUser(user);

					session.setAttribute("user", user);
					url = "/views/site/index.jsp";
				}
				else{
					
					url = "/views/site/login.jsp";
				}
			} else {
				req.setAttribute("message", "Please check confirm password again");
				url = "/views/site/login.jsp";
			}
			break;

		}
		req.getRequestDispatcher(url).forward(req, resp);

	}

}
