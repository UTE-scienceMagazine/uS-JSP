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

import dao.CategoryDAO;
import dao.VolumeDAO;
import model.Category;
import model.Volume;

@WebServlet("/home.html")
public class HomeController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession httpSession = req.getSession();
		VolumeDAO dao= new VolumeDAO();
		ArrayList<Volume> list;
		
		CategoryDAO cdao=new CategoryDAO();
		ArrayList<Category> listCategory;
		
		try {
			list = dao.loadVolume();
			listCategory=cdao.getListCategory();
			httpSession.setAttribute("list", list);
			httpSession.setAttribute("listCategory", listCategory);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		req.getRequestDispatcher("/views/site/index.jsp").forward(req, resp);
	}
}
