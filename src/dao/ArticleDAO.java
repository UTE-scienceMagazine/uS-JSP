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
import model.Employee;
import model.User;



public class ArticleDAO implements Serializable{

	public Article findArticleById(Integer id) throws SQLException{
		Connection connection=DBConnect.getConnection();
		Article article=new Article();
		
		String sql="Select * from article Where id="+id;
		PreparedStatement ps=connection.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			article.setId(rs.getInt("id"));
			article.setTitle(rs.getString("title"));
			article.setDetail(rs.getString("detail"));
			article.setDate(rs.getTimestamp("date"));
			article.setVolumeId(rs.getInt("volumeId"));
			article.setStatusId(rs.getInt("statusId"));
			article.setPdf(rs.getString("pdf"));
			article.setNum(rs.getInt("num"));
			article.setDescription(rs.getString("description"));
			article.setVote(rs.getInt("vote"));
			article.setViews(rs.getInt("views"));
			ps.close();
			return article;
		}
		ps.close();
		return null;
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
			article.setDetail(rs.getString("detail"));
			article.setDate(rs.getTimestamp("date"));
			article.setVolumeId(rs.getInt("volumeId"));
			article.setStatusId(rs.getInt("statusId"));
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
	
	public ArrayList<Article> findArticlesByVolume(Integer id) throws SQLException {
		Connection connection=DBConnect.getConnection();
		ArrayList<Article> list=new ArrayList<>();
		
		String sql="Select * from article Where volumeId="+id;
		PreparedStatement ps=connection.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Article article=new Article();
			article.setId(rs.getInt("id"));
			article.setTitle(rs.getString("title"));
			article.setDetail(rs.getString("detail"));
			article.setDate(rs.getTimestamp("date"));
			article.setVolumeId(rs.getInt("volumeId"));
			article.setStatusId(rs.getInt("statusId"));
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
	
	public boolean updateViews(Article article) {
		Connection connection = DBConnect.getConnection();
        String sql = "UPDATE article SET views=?  WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, article.getViews());
            ps.setInt(2, article.getId());
            ps.executeUpdate() ;
            ps.close();
            System.out.println(11);
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(ArticleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
		
	}
	
	
	public ArrayList<Article> getArticleByEmployeeID(Integer id) throws SQLException{
		Connection connection=DBConnect.getConnection();
		ArrayList<Article> list= new ArrayList<>();
		
		String sql="Select * "
				+ "from article join employee_article on article.id =  employee_article.articleId "
				+ "Where employee_article.employeeId="+id;
		PreparedStatement ps=connection.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			Article article = new Article();
			article.setId(rs.getInt("id"));
			article.setTitle(rs.getString("title"));
			article.setDetail(rs.getString("detail"));
			article.setDate(rs.getTimestamp("date"));
			article.setVolumeId(rs.getInt("volumeId"));
			article.setStatusId(rs.getInt("statusId"));
			article.setPdf(rs.getString("pdf"));
			article.setNum(rs.getInt("num"));
			article.setDescription(rs.getString("description"));
			article.setVote(rs.getInt("vote"));
			article.setViews(rs.getInt("views"));
			
			list.add(article);
		}
		
		
		return list;
	}
}
