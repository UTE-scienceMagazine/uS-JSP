package controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.EmployeeDAO;
import dao.RoleDAO;
import model.Employee;
import model.Role;
import tools.MD5;

@WebServlet("/admin.html")
public class AdminController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.getRequestDispatcher("/views/admin/profileAdmin.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String command = req.getParameter("command");

		EmployeeDAO edao = new EmployeeDAO();
		Employee employee = new Employee();
		switch (command) {
		case "add":
			try {
				employee.setEmail(req.getParameter("email"));
				employee.setPassword(MD5.encryption(req.getParameter("password")));
				
				RoleDAO rdao = new RoleDAO();
				Role roleId = rdao.findRoleById(Integer.parseInt(req.getParameter("users")));
				employee.setRoleId(roleId);
				
				Date date= new Date();
				employee.setJoinday(new Timestamp(date.getTime())); 
				
				edao.insertEmployee(employee);
			} catch (Exception e) {

				e.printStackTrace();
			}

			break;
		case "change":
			try {
				employee.setId(Integer.parseInt(req.getParameter("id")));
				employee.setEmail(req.getParameter("email"));
				employee.setPassword(MD5.encryption(req.getParameter("password")));
				employee.setName(req.getParameter("name"));
				
				RoleDAO rdao = new RoleDAO();
				Role roleId = rdao.findRoleById(Integer.parseInt(req.getParameter("users")));
				employee.setRoleId(roleId);
				
				edao.updateEmployee(employee);
			} catch (Exception e) {
				
			}
			
			break;
		case "delete":
			employee.setId(Integer.parseInt(req.getParameter("id")));
			
			edao.deleteEmloye(employee.getId());
			break;

		}
		resp.sendRedirect("/UteScience/profile.html");	
	}
}
