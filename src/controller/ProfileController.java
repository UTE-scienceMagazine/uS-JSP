package controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
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
import dao.EmployeeDAO;
import dao.UserDAO;
import model.Article;
import model.Employee;
import model.User;

@WebServlet("/profile.html")
@MultipartConfig
public class ProfileController extends HttpServlet {
	
	String url = "";
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		

		Integer roleId = (Integer) session.getAttribute("roleId");

		if (roleId == null) {
			url = "/views/site/login.jsp";
			req.getRequestDispatcher(url).forward(req, resp);
			return;
		} else if (roleId == 1) {
			url = "/views/site/profileViewer.jsp";
		} else {
			EmployeeDAO edao=new EmployeeDAO();
			Employee employee=(Employee)session.getAttribute("user");
			ArticleDAO adao=new ArticleDAO();
			ArrayList<Article> listArticle=new ArrayList<>();
			switch (roleId) {
			case 2:
				try {				
					
				
					listArticle =adao.getArticleByEmployeeID(employee.getId());
					req.setAttribute("listArticle", listArticle);
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
				url = "/views/site/profileTester.jsp";
				break;
			case 3:
				
				
				listArticle = adao.findArticlesByAuthor(employee.getId());
				req.setAttribute("list", listArticle);
				
				url = "/views/site/profileAuthor.jsp";
				break;
			case 4:
				try {
					listArticle = adao.getArticleByEmployeeID(employee.getId());
					req.setAttribute("list", listArticle);
				} catch (SQLException e2) {
					
					e2.printStackTrace();
				}
				url = "/views/site/profileEditor.jsp";
				break;
			case 5:
				try {
					
					ArrayList<Article> listArticle1 = null;
					listArticle1 = adao.getListArticle();
					session.setAttribute("listArticle", listArticle1);
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
					System.out.println("SQLEX");
				}
				
				
				url = "/views/site/profileMaster.jsp";
				
				break;
			case 6:
				
				try {
					
					ArrayList<Employee> listEmployee=edao.getEmployee();
					req.setAttribute("list", listEmployee);
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
				
				url = "/views/admin/profileAdmin.jsp";
				break;
			default:
				url = "/views/site/login.jsp";
				break;
			}
		}
		req.getRequestDispatcher(url).forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stubString user=req.getParameter("users");
		HttpSession session=req.getSession();
		Integer roleId=(Integer)session.getAttribute("roleId");
		if(roleId==1){
			User user=(User)session.getAttribute("user");
			user.setName(req.getParameter("name"));
			user.setPhone(req.getParameter("phone"));
			user.setSex(Integer.parseInt(req.getParameter("sex")));
			
			
			try {
				SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
				Date parsedDate = dateFormat.parse(req.getParameter("birthday"));
				user.setBirthday(new Timestamp( parsedDate.getTime()));
			} catch (ParseException e) {
				
				e.printStackTrace();
			}
			
			user.setIdentitycard(req.getParameter("identitycard"));
			UserDAO udao=new UserDAO();
			
			ByteArrayOutputStream buffer = new ByteArrayOutputStream();
			Part filePart = req.getPart("avatar"); 
		    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); 
		    InputStream fileContent = filePart.getInputStream();
		  
			byte[] block = new byte[4*1204];
			while(true){
				int n = fileContent.read(block);
				if(n <= 0) break; // hết dữ liệu
				buffer.write(block, 0, n);
			}
			fileContent.close();
			
			buffer.writeTo(new FileOutputStream(req.getServletContext().getRealPath("/images/avatar")
	        										+ File.separator + fileName));
			user.setAvatar(fileName);
			
			udao.updateUser(user);
			
		}
		else{
			Employee employee=(Employee)session.getAttribute("user");
			employee.setName(req.getParameter("name"));
			employee.setPhone(req.getParameter("phone"));
			employee.setSex(Integer.parseInt(req.getParameter("sex")));
			
			try {
				SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
				Date parsedDate = dateFormat.parse(req.getParameter("birthday"));
				employee.setBirthday(new Timestamp( parsedDate.getTime()));
			} catch (ParseException e) {
				
				e.printStackTrace();
			}
			
			ByteArrayOutputStream buffer = new ByteArrayOutputStream();
			Part filePart = req.getPart("avatar"); 
		    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); 
		    InputStream fileContent = filePart.getInputStream();
		  
			byte[] block = new byte[4*1204];
			while(true){
				int n = fileContent.read(block);
				if(n <= 0) break; // hết dữ liệu
				buffer.write(block, 0, n);
			}
			fileContent.close();
			
			buffer.writeTo(new FileOutputStream(req.getServletContext().getRealPath("/images/avatar")
	        										+ File.separator + fileName));
			employee.setAvatar(fileName);
			employee.setIdentitycard(req.getParameter("identitycard"));
			EmployeeDAO edao=new EmployeeDAO();
			if(edao.updateUser(employee)){
				req.setAttribute("message", "cập nhật thông tin thành công");
			}else{
				req.setAttribute("message", "cập nhật thông tin thất bại");
			}
			
		}
		req.getRequestDispatcher("/views/site/profileViewer.jsp").forward(req, resp);
	}

}
