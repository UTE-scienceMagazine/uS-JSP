package controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dao.ArticleDAO;
import dao.EmployeeArticleDAO;
import dao.HashtagDAO;
import dao.StatusDAO;
import model.Article;
import model.Employee;
import model.HashTag;
import model.Status;

@WebServlet("/authorReviewer.html")
@MultipartConfig
public class AuthorReviewerController extends HttpServlet {
	
	Article article;
	Integer id;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		id=Integer.parseInt(req.getParameter("id"));
		
		try {
			ArticleDAO adao=new ArticleDAO();
			article=adao.findArticleById(id);
			req.setAttribute("article", article);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		req.getRequestDispatcher("/views/site/author-reviewer.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		try {
			
			article.setId(id);
			article.setTitle(req.getParameter("title"));
			article.setDescription(req.getParameter("description"));
			
			String stag=req.getParameter("hashtag");
			String []tag=stag.split(",");
			ArrayList<HashTag> hashTags=new ArrayList<>();
			HashtagDAO hdao=new HashtagDAO();
			for(int i=0;i<tag.length;i++){
				HashTag mhashTag=new HashTag(i,tag[i],article.getId());
				hdao.insertHashTag(mhashTag);
				hashTags.add(mhashTag);
			}
			
			article.setVolumeId(Integer.parseInt(req.getParameter("volume")));
			StatusDAO sdao=new StatusDAO();
			
			Status  status = sdao.findStatusId(Integer.parseInt(req.getParameter("statusId")));
			article.setStatusId(status);
			
			//upload file
			ByteArrayOutputStream buffer = new ByteArrayOutputStream();
			Part filePart = req.getPart("upfile"); 
		    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); 
		    InputStream fileContent = filePart.getInputStream();
		  
			byte[] block = new byte[4*1204];
			while(true){
				int n = fileContent.read(block);
				if(n <= 0) break; // hết dữ liệu
				buffer.write(block, 0, n);
			}
			fileContent.close();
			
			buffer.writeTo(new FileOutputStream(req.getServletContext().getRealPath("/pdf")
	        										+ File.separator + fileName));
			//gán giá trị pdf hiện tại
			article.setPdf(fileName);
			
			ArticleDAO adao=new ArticleDAO();
			adao.updateArticle(article);
			
			//Thay đổi trạng thái bài báo -> insert vào article_employee
			Employee employee=(Employee)req.getSession().getAttribute("user");
			EmployeeArticleDAO eadao=new EmployeeArticleDAO();
			eadao.insertEA(article.getId(),employee.getId(),3);
			
		} catch (NumberFormatException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		
		doGet(req, resp);
	}
}
