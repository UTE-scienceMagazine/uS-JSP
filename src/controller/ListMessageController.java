package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MessageDAO;
import model.Message;


@WebServlet("/listmessage.html")
public class ListMessageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ListMessageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MessageDAO mdao = new MessageDAO();
		ArrayList<Message> list = mdao.getListMessage();
		
		if(!list.isEmpty())
		{
			req.setAttribute("list", list);
			req.getRequestDispatcher("/views/site/listMessage.jsp").forward(req, resp);
		}
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		boolean ajax = "XMLHttpRequest".equals(req.getHeader("X-Requested-With"));
		if(ajax)
		{
			Integer id = Integer.parseInt(req.getParameter("id"));
			MessageDAO mdao = new MessageDAO();
			mdao.seenMs(id);
			String json = "";
			json = "{\"result\": \"success\"}";
			resp.getWriter().write(json);
		}
	}

}
