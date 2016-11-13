package controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


import dao.ArticleDAO;
import dao.EmployeeArticleDAO;
import dao.HashtagDAO;
import dao.StatusDAO;
import dao.VolumeDAO;
import model.Article;
import model.Employee;
import model.EmployeeArticle;
import model.HashTag;
import model.Status;
import model.Volume;

@WebServlet("/post.html")
@MultipartConfig
public class AuthorPostController extends HttpServlet {
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		try {
			VolumeDAO vdao=new VolumeDAO();
			ArrayList<Volume> listVolume=vdao.loadVolume();
			req.setAttribute("listVolume", listVolume);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		req.getRequestDispatcher("/views/site/authorPost.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		try {
			Article article = new Article();
			
			
			article.setTitle(req.getParameter("title"));
			article.setDescription(req.getParameter("description"));
			
			SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
			Date parsedDate = new Date();
			article.setDate(new Timestamp( parsedDate.getTime()));
			
			article.setVolumeId(Integer.parseInt(req.getParameter("volume")));
			
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
			article.setNum(Integer.parseInt(req.getParameter("num")));
			article.setVote(0);
			article.setViews(0);
			
			StatusDAO sdao=new StatusDAO();
			Status  status = sdao.findStatusId(Integer.parseInt(req.getParameter("statusId")));
			article.setStatusId(status);

			ArticleDAO adao=new ArticleDAO();
			Employee employee=(Employee)req.getSession().getAttribute("user");
			article.setAuthorId(employee);
			adao.insertArticle(article);
			
			Integer count =adao.maxArticle();
			String stag=req.getParameter("hashtag");
			
			String []tag=stag.split(",");
			ArrayList<HashTag> hashTags=new ArrayList<>();
			HashtagDAO hdao=new HashtagDAO();
			for(int i=0;i<tag.length;i++){
				HashTag mhashTag=new HashTag(i,tag[i],count++);
				hdao.insertHashTag(mhashTag);
				hashTags.add(mhashTag);
			}

			req.setAttribute("article", article);
			
		
			
		} catch (NumberFormatException e) {
			
			e.printStackTrace();
		} catch (Exception e) {
		
			e.printStackTrace();
		} 
		
		doGet(req, resp);
	}
	
}
