package dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import model.Article;
import model.Category;
import model.Employee;
import model.Status;

public class ArticleDAO implements Serializable {
	
	public Integer maxArticle() throws SQLException {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT MAX(article.id) as id FROM article";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			Integer maxId=rs.getInt("id");
			rs.close();
			ps.close();
			connection.close();
			return maxId;
		}
		return null;
		
	}
public static void newSendPost(Integer employeeId, Integer articleId,Integer status,Integer statusChange) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {			
			System.out.println("can not load jdbc Driver !");
		}
		Connection connection = DBConnect.getConnection();
		String sql= "INSERT INTO employee_article(employeeId,articleId,status,date) VALUES(?,?,?,CURDATE())";
		
		try {
			
			
			PreparedStatement ps =  connection.prepareStatement(sql);
			ps.setInt(1,employeeId );
			ps.setInt(2, articleId);
			ps.setInt(3, status);
			ps.executeUpdate();
			ps.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("SQL error");
			e.printStackTrace();
		}
		
		String sql1 = "UPDATE article SET statusId=? Where id=?"; 
		try {
			PreparedStatement ps2 = connection.prepareStatement(sql1);
			ps2.setInt(1, statusChange);
			ps2.setInt(2, articleId);
			ps2.executeUpdate() ;
            ps2.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("update error");
		}
		
	}
	public Article findArticleById(Integer id) throws SQLException {
		Connection connection = DBConnect.getConnection();
		Article article = new Article();

		String sql = "Select * from article Where id=" + id;
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			article.setId(rs.getInt("id"));
			article.setTitle(rs.getString("title"));
			article.setDate(rs.getTimestamp("date"));
			
			article.setVolumeId(rs.getInt("volumeId"));
			
			StatusDAO sdao = new StatusDAO();
			Status status = sdao.findStatusId(rs.getInt("statusId"));
			article.setStatusId(status);
			article.setPdf(rs.getString("pdf"));
			article.setNum(rs.getInt("num"));
			article.setDescription(rs.getString("description"));
			article.setVote(rs.getInt("vote"));
			article.setViews(rs.getInt("views"));

			EmployeeDAO edao = new EmployeeDAO();
			Employee employee = edao.findEmployeeById(rs.getInt("authorId"));
			article.setAuthorId(employee);

			CategoryDAO cdao=new CategoryDAO();
			Category categoryId=cdao.findCategoryById(rs.getInt("categoryId"));
			article.setCategoryId(categoryId);
			
			rs.close();
			ps.close();
			connection.close();
			return article;
		}
		rs.close();
		ps.close();
		connection.close();
		return null;
	}

	public ArrayList<Article> findArticlesByVolume(Integer id) throws SQLException {
		Connection connection = DBConnect.getConnection();
		ArrayList<Article> list = new ArrayList<>();

		String sql = "Select * from article Where volumeId=" + id;
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			Article article = new Article();
			article.setId(rs.getInt("id"));
			article.setTitle(rs.getString("title"));
			article.setDate(rs.getTimestamp("date"));
			article.setVolumeId(rs.getInt("volumeId"));
			StatusDAO sdao = new StatusDAO();
			Status status = sdao.findStatusId(rs.getInt("statusId"));
			article.setStatusId(status);
			article.setPdf(rs.getString("pdf"));
			article.setNum(rs.getInt("num"));
			article.setDescription(rs.getString("description"));
			article.setVote(rs.getInt("vote"));
			article.setViews(rs.getInt("views"));

			EmployeeDAO edao = new EmployeeDAO();
			Employee employee = edao.findEmployeeById(rs.getInt("authorId"));
			article.setAuthorId(employee);
			list.add(article);
		}
		rs.close();
		ps.close();
		connection.close();
		return list;
	}
	public ArrayList<Article> findArticlesByCategory(Integer id) throws SQLException {
		Connection connection = DBConnect.getConnection();
		ArrayList<Article> list = new ArrayList<>();

		String sql = "Select * from article Where categoryId=" + id;
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			Article article = new Article();
			article.setId(rs.getInt("id"));
			article.setTitle(rs.getString("title"));
			article.setDate(rs.getTimestamp("date"));
			article.setVolumeId(rs.getInt("volumeId"));
			StatusDAO sdao = new StatusDAO();
			Status status = sdao.findStatusId(rs.getInt("statusId"));
			article.setStatusId(status);
			article.setPdf(rs.getString("pdf"));
			article.setNum(rs.getInt("num"));
			article.setDescription(rs.getString("description"));
			article.setVote(rs.getInt("vote"));
			article.setViews(rs.getInt("views"));

			EmployeeDAO edao = new EmployeeDAO();
			Employee employee = edao.findEmployeeById(rs.getInt("authorId"));
			article.setAuthorId(employee);
			list.add(article);
		}
		rs.close();
		ps.close();
		connection.close();
		return list;
	}
	public boolean updateViews(Article article) {
		Connection connection = DBConnect.getConnection();
		String sql = "UPDATE article SET views=?  WHERE id = ?";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setInt(1, article.getViews());
			ps.setInt(2, article.getId());
			ps.executeUpdate();
			
			ps.close();
			connection.close();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;

	}

	public ArrayList<Article> findArticlesByAuthor(Integer id){

		Connection connection = DBConnect.getConnection();
		ArrayList<Article> list = new ArrayList<>();

		String sql = "Select * from article where authorId=" + id;
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Article article = new Article();
				article.setId(rs.getInt("id"));
				article.setTitle(rs.getString("title"));
				article.setDate(rs.getTimestamp("date"));
				article.setVolumeId(rs.getInt("volumeId"));
				StatusDAO sdao = new StatusDAO();
				Status status = sdao.findStatusId(rs.getInt("statusId"));
				article.setStatusId(status);
				article.setPdf(rs.getString("pdf"));
				article.setNum(rs.getInt("num"));
				article.setDescription(rs.getString("description"));
				article.setVote(rs.getInt("vote"));
				article.setViews(rs.getInt("views"));

				EmployeeDAO edao = new EmployeeDAO();
				Employee employee = edao.findEmployeeById(rs.getInt("authorId"));
				article.setAuthorId(employee);

				list.add(article);

			}
			rs.close();
			ps.close();
			
		} catch (SQLException ex) {
			Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
	
		return list;
	}

	public boolean updateArticle(Article article) throws SQLException {
		Connection connection = DBConnect.getConnection();
		String sql = "UPDATE article SET title = ?,description= ?,volumeId= ?,statusId= ?,pdf=?  WHERE id = ?";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, article.getTitle());
			ps.setString(2, article.getDescription());
			ps.setInt(3, article.getVolumeId());
			ps.setInt(4, article.getStatusId().getId());
			ps.setString(5, article.getPdf());
			ps.setInt(6, article.getId());
			
		
			return ps.executeUpdate() == 1;
		} catch (SQLException ex) {
			Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		connection.close();
		return false;
	}

	public Boolean insertArticle(Article article) {

		Connection connection = DBConnect.getConnection();
		String sql = "INSERT INTO article (title,date,volumeId,pdf,num,description,vote,views,statusId,authorId) VALUES(?,?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);

			ps.setString(1, article.getTitle());
			ps.setTimestamp(2, article.getDate());
			ps.setInt(3, article.getVolumeId());
			ps.setString(4, article.getPdf());
			ps.setInt(5, article.getNum());
			ps.setString(6, article.getDescription());
			ps.setInt(7, article.getVote());
			ps.setInt(8, article.getViews());
			ps.setInt(9, article.getStatusId().getId());
			ps.setInt(10, article.getAuthorId().getId());
			
			
			ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
	
	public ArrayList<Article> getArticleByEmployeeID(Integer id) throws SQLException{
		Connection connection=DBConnect.getConnection();
		ArrayList<Article> list= new ArrayList<>();
		
		String sql="SELECT distinct  a.id,a.title,a.date,a.volumeId,a.pdf,a.num,a.description,a.vote,a.views,a.statusId,a.authorId,a.categoryId "
				+ "FROM `employee` JOIN employee_article on employee.id=employee_article.employeeId "
				+ "JOIN article as a on employee_article.articleId =a.id "
				+ "WHERE employee.id="+id;
		PreparedStatement ps=connection.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			Article article = new Article();
			article.setId(rs.getInt("id"));
			article.setTitle(rs.getString("title"));
			article.setDate(rs.getTimestamp("date"));
			article.setVolumeId(rs.getInt("volumeId"));
			
			StatusDAO sdao = new StatusDAO();
			Status status = sdao.findStatusId(rs.getInt("statusId"));
			article.setStatusId(status);
			
			article.setPdf(rs.getString("pdf"));
			article.setNum(rs.getInt("num"));
			article.setDescription(rs.getString("description"));
			article.setVote(rs.getInt("vote"));
			article.setViews(rs.getInt("views"));
			
			EmployeeDAO edao=new EmployeeDAO();
			Employee employee=edao.findEmployeeById(rs.getInt("authorId"));
			article.setAuthorId(employee);
			
			CategoryDAO cdao=new CategoryDAO();
			Category categoryId=cdao.findCategoryById(rs.getInt("categoryId"));
			article.setCategoryId(categoryId);
			
			list.add(article);
		}
		
		
		return list;
	}
	public ArrayList<Article>getListArticle() throws SQLException {
		Connection connection=DBConnect.getConnection();
		ArrayList<Article> list=new ArrayList<>();
		
		String sql="Select * from article";
		PreparedStatement ps=connection.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Article article=new Article();
			article.setId(rs.getInt("id"));
			article.setTitle(rs.getString("title"));
			article.setDate(rs.getTimestamp("date"));
			article.setVolumeId(rs.getInt("volumeId"));
			
			StatusDAO sdao = new StatusDAO();
			Status status = sdao.findStatusId(rs.getInt("statusId"));
			article.setStatusId(status);
			
			article.setPdf(rs.getString("pdf"));
			article.setNum(rs.getInt("num"));
			article.setDescription(rs.getString("description"));
			article.setVote(rs.getInt("vote"));
			article.setViews(rs.getInt("views"));
			list.add(article);
		}
		ps.close();
		return list;
	}
	public ArrayList<Article> findArticlesByContent(String content) throws SQLException {
		Connection connection=DBConnect.getConnection();
		ArrayList<Article> list=new ArrayList<>();
		
		String sql="SELECT * FROM article "
				+ "WHERE article.title LIKE '%"+content+"%'OR article.authorId LIKE '%"+content+"%' OR article.description LIKE '%"+content+"%'";
		PreparedStatement ps=connection.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Article article=new Article();
			article.setId(rs.getInt("id"));
			article.setTitle(rs.getString("title"));
			article.setDate(rs.getTimestamp("date"));
			article.setVolumeId(rs.getInt("volumeId"));
			
			StatusDAO sdao = new StatusDAO();
			Status status = sdao.findStatusId(rs.getInt("statusId"));
			article.setStatusId(status);
			
			article.setPdf(rs.getString("pdf"));
			article.setNum(rs.getInt("num"));
			article.setDescription(rs.getString("description"));
			article.setVote(rs.getInt("vote"));
			article.setViews(rs.getInt("views"));
			list.add(article);
		}
		rs.close();
		ps.close();
		connection.close();
		return list;
		
	}
	
	
	
	
}
