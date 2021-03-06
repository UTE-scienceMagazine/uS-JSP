package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ArticleDAO;
import dao.CommentDAO;
import dao.ReplyDAO;
import model.Article;
import model.Comment;
import model.User;

@WebServlet("/article.html")
public class ArticleController extends HttpServlet {
	
	Integer id;
	ArticleDAO adao=new ArticleDAO();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		id=Integer.parseInt(req.getParameter("id"));
		
		CommentDAO commentDAO=new CommentDAO();
		try {
			HttpSession httpSession=req.getSession();
			Article article= adao.findArticleById(id);
			
			article.setViews(article.getViews()+1);
			adao.updateViews(article);
			httpSession.setAttribute("article", article);
			
			ArrayList<Article> articles=adao.findArticlesByVolume(article.getVolumeId());
			req.setAttribute("articles", articles);
			
			ArrayList<Comment> list=new ArrayList<>();
			list=commentDAO.loadComment(id);
			if(list.isEmpty()){
				httpSession.removeAttribute("list");
			}else{
				for (Comment comment : list) {
					ReplyDAO repDao = new ReplyDAO();
					comment.setReplies(repDao.loadReply(comment.getId())) ;
				}
				httpSession.setAttribute("list", list);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		req.getRequestDispatcher("/views/site/article.jsp").forward(req, resp);
	}
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession httpSession =req.getSession();
		User user =(User)httpSession.getAttribute("user");
		if(user==null){
			req.setAttribute("uri", req.getRequestURI());
			req.setAttribute("command", "login");
			req.getRequestDispatcher("signin.html").forward(req, resp);
		}
		
		
		String mess = req.getParameter("mess");
		String mess1 = mess.replaceAll("(\r\n|\n)", "<br />");
		
		try {
			Comment cm = new Comment();
			cm.setMess(mess1);
			cm.setUserId(user);
			cm.setDate(new Timestamp(new Date().getTime()));
			cm.setStatus(1);
			
			Article article= adao.findArticleById(id);
			cm.setArticleId(article);
			CommentDAO dao = new CommentDAO();
			dao.insertComment(cm);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		PrintWriter out = resp.getWriter();
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		
		String text = dateFormat.format(date.getTime());
		

		httpSession.setAttribute("text", text);
		httpSession.setAttribute("mess1", mess1);
		
		resp.sendRedirect("/UteScience/views/site/layout/_onecomment.jsp");
	}
}
