package controller;

import java.io.IOException;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ArticleDAO;
import dao.VolumeDAO;
import model.Volume;


@WebServlet("/ChangeStatus.html")
public class ChangeStatusController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ChangeStatusController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		VolumeDAO vdao = new VolumeDAO();
		try {
			ArrayList<Volume> list = vdao.loadListVolume();
			if(!list.isEmpty())
			{
				req.setAttribute("list", list);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Integer id = Integer.parseInt(req.getParameter("id"));
		ArticleDAO adao = new ArticleDAO();
		try {
			String articleName = adao.findArticleById(id).getTitle();
			req.setAttribute("articleName", articleName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.setAttribute("id", id);
		req.getRequestDispatcher("/views/site/changeSTT.jsp").forward(req, resp);
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		boolean ajax = "XMLHttpRequest".equals(req.getHeader("X-Requested-With"));
		if(ajax)
		{
			String type = req.getParameter("type");
			String json = "";
			switch (type) {
			case "accept":
			{
				Integer articleId = Integer.parseInt(req.getParameter("articleId"));
				Integer volumeId = Integer.parseInt(req.getParameter("volumeId"));
				
				ArticleDAO adao = new ArticleDAO();
				
				if(adao.setVolume(articleId, volumeId))
				{
					json = "{\"result\": \"success\"}";
				}
				break;
			}	
			case "insert":
			{
				String text = req.getParameter("text");
				String des = req.getParameter("des");
				String d = req.getParameter("date");
				
				DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
				try {
					Date date = df.parse(d);
					Date cur = new Date();
					if(date.before(cur))
					{
						
						json = "{\"result\": \"fail\",\"type\": \"beforeDate\"}";
					}
					else
					{
						
						VolumeDAO vdao = new VolumeDAO();
						if(vdao.hasVolume(text))
						{
							json = "{\"result\": \"fail\",\"type\": \"hasVolume\"}";
						}
						else
						{
							java.sql.Date sqlDate = new java.sql.Date(date.getTime());
							if(vdao.insertVolume(text, des, sqlDate))
							{
								try {
									Integer id = vdao.getMaxVolume();
									json = "{\"result\": \"success\",\"id\": \""+id+"\",\"text\": \""+text+"\",\"date\": \""+date+"\"}";
								} catch (SQLException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
								
							}
							else
							{
								json = "{\"result\": \"fail\",\"type\": \"exeption\"}";
							}
						}
						
					}
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				break;
			}
			case "change":
			{
				Integer id = Integer.parseInt(req.getParameter("id"));
				Integer role = Integer.parseInt(req.getParameter("role"));
				
				ArticleDAO adao = new ArticleDAO();
				if(adao.updateSTT(id, role))
				{
					json = "{\"result\": \"success\"}";
				}
				else
				{
					json = "{\"result\": \"fail\"}";
				}
			}
			default:
				break;
			}
			resp.getWriter().write(json);
		}
	}

}
