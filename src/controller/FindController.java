package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ArticleDAO;
import model.Article;

@WebServlet("/find.html")
public class FindController extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String content=req.getParameter("content");
		
		ArticleDAO adao=new ArticleDAO();
		try {
			
			ArrayList<Article> list=adao.findArticlesByContent(content);
			if(list.isEmpty()){
				req.getSession().setAttribute("findmessage", "Không tìm thấy nội dung cần tìm");
				
			}else{
				req.getSession().removeAttribute("findmessage");
			}
			
			req.getSession().setAttribute("list", list);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		resp.sendRedirect("/UteScience/views/site/layout/_find-content.jsp");
	}
	
}
