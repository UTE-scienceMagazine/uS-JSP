package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ArticleDAO;
import model.Article;

@WebServlet("/tester-comment.html")
public class TesterController extends HttpServlet{

	Integer id;
	ArticleDAO adao=new ArticleDAO();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		id=Integer.parseInt(req.getParameter("id"));
		try {
			HttpSession httpSession=req.getSession();
			Article article= adao.findArticleById(id);
			
			httpSession.setAttribute("article", article);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		req.getRequestDispatcher("/views/site/comment-test.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
}
