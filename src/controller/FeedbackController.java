package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ArticleDAO;
import dao.FeedbackDAO;
import model.Article;
import model.Employee;
import model.Feedback;


@WebServlet("/feedback.html")
public class FeedbackController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public FeedbackController() {
        super();
        // TODO Auto-generated constructor stub
    }
    Integer id;
	ArticleDAO adao=new ArticleDAO();
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		id = Integer.parseInt(req.getParameter("id"));
		HttpSession session = req.getSession();
		
		Integer roleId = (Integer) session.getAttribute("roleId");
		
		if(roleId == 2)
		{
			try {
				Article a = (Article) session.getAttribute("article");
				Integer articleId = a.getId();
				Feedback fb = FeedbackDAO.getInfoByArticleId(articleId);
				session.setAttribute("feedback", fb);
				req.getRequestDispatcher("/views/site/feedback.jsp").forward(req, resp);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				resp.sendRedirect("profile.html");
			}
		}
		if(roleId==5)
		{
			try {
				ArticleDAO dao = new ArticleDAO();
				Article article = dao.findArticleById(id);
				session.setAttribute("article", article);
				
				Feedback fb = FeedbackDAO.getInfoByArticleId(id);
				session.setAttribute("feedback", fb);
				req.getRequestDispatcher("/views/site/feedback.jsp").forward(req, resp);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=UTF-8"); 
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");	
		
		HttpSession session = req.getSession();
		
		Employee em = (Employee)session.getAttribute("user");
		Integer employeeID = (Integer) em.getId();
		
		Article article = (Article)session.getAttribute("article");
		Integer articleId = (Integer) article.getId();
		
		String title = req.getParameter("title");
		
		String description = req.getParameter("description");
		String meaning = req.getParameter("meaning");
		String license = req.getParameter("license");
		String result = req.getParameter("result");
		String neededit = req.getParameter("neededit");
		try {
			if(FeedbackDAO.hasArticle(articleId))
			{
				String erMs = "Đã tồn tại phiếu phản biện của bài viết này!!!!!!";
				session.setAttribute("errorMess", erMs);
				req.setAttribute("scsMs", true);
				req.getRequestDispatcher("/views/site/feedback.jsp").forward(req, resp);
			}
			else
			{
				try {		
					
					FeedbackDAO.newFeedback(employeeID, articleId, description, meaning, license, result, neededit, title);
					
					req.getRequestDispatcher("/views/site/profileTester.jsp").forward(req, resp);
					
				
					} 
				catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						System.out.println("error "+ employeeID + " nulll   " + articleId );
					}
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
			
			//System.out.println("1"+(String) description + " 2" + meaning + "3 " + license);
			
		
		
	}

}
