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
import model.Article;

@WebServlet("/volume.html")
public class VolumeController extends HttpServlet{

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Integer id=Integer.parseInt(req.getParameter("id"));
		HttpSession session=req.getSession();
		ArticleDAO dao=new ArticleDAO();
		try {
			ArrayList<Article> list= dao.findArticlesByVolume(id);
			session.setAttribute("list", list);
			session.setAttribute("volumeId", id);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		req.getRequestDispatcher("/views/site/volume.jsp").forward(req, resp);
	}
}
