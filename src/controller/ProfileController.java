package controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;

@WebServlet("/profile.html")
public class ProfileController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		// TODO Auto-generated method stub
		HttpSession httpSession =req.getSession();
		String url ="";
		User user =(User)httpSession.getAttribute("user");
		
		if(user==null){
			url="/views/site/login.jsp";
			req.getRequestDispatcher(url).forward(req, resp);
			return;
		}
		switch (user.getRoleId()) {
		case 6:
			url="/views/admin/profileAdmin.jsp";
			break;
		case 1:
			url="/views/site/profileViewer.jsp";
			break;
		case 3:
			url="/views/site/profileAuthor.jsp";
			break;
		case 4:
			url="/views/site/profileEditor.jsp";
			break;
		case 5:
			url="/views/site/profileMaster.jsp";
			break;
		case 2:
			url="/views/site/profileTester.jsp";
			break;
		default:
			url="/views/site/login.jsp";
			break;
		}
		
		req.getRequestDispatcher(url).forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stubString user=req.getParameter("users");
		
	}

}
