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
import model.Reply;
import model.User;

@WebServlet("/reply.html")
public class ReplyController extends HttpServlet {
	
	Integer id;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Integer cid=Integer.parseInt(req.getParameter("com_id"));
		String mess=req.getParameter("mess");
		HttpSession session=req.getSession();
		User user=(User)session.getAttribute("user");
		String mess1=mess.replaceAll("(\r\n|\n)", "<br />");
		try {
			Reply rl=new Reply();
			rl.setMess(mess1);
			rl.setDate(new Timestamp(new Date().getTime()));
			rl.setStatus(1);
			CommentDAO cdao=new CommentDAO();
			Comment comment=cdao.findCommetById(cid);
			rl.setComId(comment);
			rl.setUserId(user);
			ReplyDAO dao=new ReplyDAO();
			dao.insertReply(rl);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		PrintWriter out = resp.getWriter();
		Date date=new Date();
		SimpleDateFormat dateFormat=new SimpleDateFormat("dd/MM/yyyy");
		String text=dateFormat.format(date.getTime());
		
		session.setAttribute("text", text);
		session.setAttribute("mess1", mess1);
		
		resp.sendRedirect("/UteScience/views/site/layout/_onereply.jsp");
	}
	
}
