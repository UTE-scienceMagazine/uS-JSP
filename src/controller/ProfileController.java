package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.EmployeeDAO;
import dao.UserDAO;
import model.Employee;
import model.User;

@WebServlet("/profile.html")
public class ProfileController extends HttpServlet {
	
	String url = "";
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		

		Integer roleId = (Integer) session.getAttribute("roleId");

		if (roleId == null) {
			url = "/views/site/login.jsp";
			req.getRequestDispatcher(url).forward(req, resp);
			return;
		} else if (roleId == 1) {
			url = "/views/site/profileViewer.jsp";
		} else {
			switch (roleId) {
			case 2:
				url = "/views/site/profileTester.jsp";
				break;
			case 3:
				url = "/views/site/profileAuthor.jsp";
				break;
			case 4:
				url = "/views/site/profileEditor.jsp";
				break;
			case 5:
				url = "/views/site/profileMaster.jsp";
				break;
			case 6:
				
				try {
					EmployeeDAO dao=new EmployeeDAO();
					ArrayList<Employee> list=dao.getEmployee();
					session.setAttribute("list", list);
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
				
				url = "/views/admin/profileAdmin.jsp";
				break;
			default:
				url = "/views/site/login.jsp";
				break;
			}
		}
		req.getRequestDispatcher(url).forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stubString user=req.getParameter("users");
		HttpSession session=req.getSession();
		Integer roleId=(Integer)session.getAttribute("roleId");
		if(roleId==1){
			User user=(User)session.getAttribute("user");
			user.setName(req.getParameter("name"));
			user.setPhone(req.getParameter("phone"));
			user.setSex(Integer.parseInt(req.getParameter("sex")));
			
			
			try {
				SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
				Date parsedDate = dateFormat.parse(req.getParameter("birthday"));
				user.setBirthday(new Timestamp( parsedDate.getTime()));
			} catch (ParseException e) {
				
				e.printStackTrace();
			}
			
			user.setIdentitycard(req.getParameter("identitycard"));
			UserDAO udao=new UserDAO();
			udao.updateUser(user);
			
		}
		
		req.getRequestDispatcher(url).forward(req, resp);
	}

}
