package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CommentDAO;
import model.Comment;
import model.User;

@WebServlet("/view-posted.html")
public class ViewPostedController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		User user=(User) req.getSession().getAttribute("user");
		CommentDAO cdao=new CommentDAO();
		try {
			ArrayList<Comment> comments=cdao.loadCommentByUser(user.getId());
			req.setAttribute("list", comments);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		req.getRequestDispatcher("/views/site/post.jsp").forward(req, resp);
	}
	
}
