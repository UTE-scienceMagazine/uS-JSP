package controller;

import java.io.IOException;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;
import tools.SendMail;

@WebServlet("/signin.html")
public class SigninController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.getRequestDispatcher("/views/site/login.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String command = req.getParameter("command");
		User user = new User();
		String url = "";
		String email = "";
		String users = "";
		HttpSession session = req.getSession();

		switch (command) {
		case "login":
			if (req.getParameter("email").equals("binhbinh0708@gmail.com")) {
				if (req.getParameter("password").equals("123456789")) {
					user.setUserID(new Date().getTime());
					user.setUesrEmail(req.getParameter("email"));
					user.setUserPass(req.getParameter("password"));
					user.setUserRole(req.getParameter("users"));
					
					session.setAttribute("user", user);

					req.setAttribute("message", "Well come");
					url = "/views/site/index.jsp";

				} else {
					req.setAttribute("message", "Error password");
					url = "/views/site/login.jsp";
				}

			} else {
				req.setAttribute("message", "Error email");
				url = "/views/site/login.jsp";
			}
			break;

		case "register":

			email = req.getParameter("email");
			String password = req.getParameter("password");
			String confirm = req.getParameter("confirm");
			if (confirm.equals(password)) {
				req.setAttribute("message", "Please active email");
				SendMail mail = new SendMail();
				mail.sendMail(email, "Kích hoặt email",	"WellCome " + email + "\n" + "You password is: " + password);
				user.setUesrEmail(email);
				user.setUserPass(password);

				session.setAttribute("email", email);
				url = "/views/site/index.jsp";
			} else {
				req.setAttribute("message", "Please check confirm password again");
				url = "/views/site/login.jsp";
			}
			break;

		}

		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(req, resp);
	}

}
