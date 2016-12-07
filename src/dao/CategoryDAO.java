package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;
import model.Article;
import model.Category;


public class CategoryDAO {
	
	public Category findCategoryById(Integer id) throws SQLException{
		Connection connection=DBConnect.getConnection();
		Category category=new Category();
		
		String sql="Select * from category Where id="+id;
		PreparedStatement ps=connection.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			category.setId(rs.getInt("id"));
			category.setName(rs.getString("name"));
			
			ArticleDAO adao=new ArticleDAO();
			ArrayList<Article> articles=adao.findArticlesByCategory(category.getId());
			category.setArticles(articles);
			
			rs.close();
			ps.close();
			connection.close();
			return category;
		}
		rs.close();
		ps.close();
		connection.close();
		return null;
	}
	
	public ArrayList<Category> getListCategory() throws SQLException {
		Connection connection=DBConnect.getConnection();
		ArrayList<Category> list=new ArrayList<>();
		
		String sql="Select * from category";
		PreparedStatement ps=connection.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
		
		while(rs.next()){
			Category category=new Category();
			category.setId(rs.getInt("id"));
			category.setName(rs.getString("name"));
			list.add(category);
		}
		
		rs.close();
		ps.close();
		connection.close();
		return list;
	}
}
