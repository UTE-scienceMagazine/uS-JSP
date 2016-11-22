package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ArticleDAO;
import dao.EmployeeDAO;
import model.Employee;


@WebServlet("/listaccount-by-role.html")
public class ListAccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ListAccountController() {
        super();
        // TODO Auto-generated constructor stub
    }
    Integer role;
   
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		Integer roleId = (Integer) session.getAttribute("roleId");
		
		if(roleId == 5)
		{
			// role : loại employee cần chuyển
			role= Integer.parseInt(req.getParameter("role"));
			Integer articleId = Integer.parseInt(req.getParameter("articleId"));
			session.setAttribute("role", role);
			session.setAttribute("articleId", articleId);
			EmployeeDAO dao = new EmployeeDAO();
			try {
				ArrayList<Employee> listAccount =  dao.getEmployeeByRole(role);
				session.setAttribute("listAccount", listAccount);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			req.getRequestDispatcher("/views/site/list-account-by-role.jsp").forward(req, resp);
		}
		else
		{
			req.getRequestDispatcher("profile.html").forward(req, resp);
		}
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=UTF-8"); 
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");	
		
		HttpSession session = req.getSession();
		Integer articleId = (Integer) session.getAttribute("articleId");
		Integer employeeId =Integer.parseInt(req.getParameter("employeeId"));
		Integer statusChange = (Integer) session.getAttribute("role");
		
		ArticleDAO adao = new ArticleDAO();
		try {
			adao.newSendPost(employeeId, articleId, statusChange, statusChange);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		resp.sendRedirect("home.html");
	}

}
