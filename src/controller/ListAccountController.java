package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/listaccount-by-role.html")
public class ListAccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ListAccountController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		Integer roleId = (Integer) session.getAttribute("roleId");
		if(roleId == 5)
		{
			req.getRequestDispatcher("/views/site/list-account-by-role.jsp").forward(req, resp);
		}
		else
		{
			req.getRequestDispatcher("profile.html").forward(req, resp);
		}
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
