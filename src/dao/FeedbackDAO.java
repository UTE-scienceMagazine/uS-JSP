package dao;

import java.io.Serializable;
import java.sql.*;

import connect.DBConnect;
import model.Feedback;

@SuppressWarnings({ "serial" })
public class FeedbackDAO implements Serializable {
	public static Feedback getInfo(Integer id) throws SQLException {
		Feedback fb = new Feedback(id, id, id, null, null, null, null, null, null);
		Connection con = DBConnect.getConnection();
		Statement stm = con.createStatement();
		ResultSet rs = stm.executeQuery("SELECT * FROM feedback WHERE id=" + id);
		if (rs.next()) {
			fb.setId(rs.getInt("id"));
			fb.setArticleId(rs.getInt("articleId"));
			fb.setTesterId(rs.getInt("testerId"));
			fb.setDescription(rs.getString("description"));
			fb.setLicense(rs.getString("license"));
			fb.setMeaning(rs.getString("meaning"));
			fb.setResult(rs.getString("result"));
			fb.setNeededit(rs.getString("neededit"));
			fb.setTitle(rs.getString("title"));

			rs.close();
			stm.close();
			con.close();
			return fb;
		}
		rs.close();
		stm.close();
		con.close();
		return null;

	}

	public static Feedback getInfoByArticleId(Integer articleId) throws SQLException {
		Feedback fb = new Feedback();
		Connection con = DBConnect.getConnection();
		Statement stm = con.createStatement();
		ResultSet rs = stm.executeQuery("SELECT * FROM feedback WHERE articleId=" + articleId);
		if (rs.next()) {
			fb.setId(rs.getInt("id"));
			fb.setArticleId(rs.getInt("articleId"));
			fb.setTesterId(rs.getInt("testerId"));
			fb.setDescription(rs.getString("description"));
			fb.setLicense(rs.getString("license"));
			fb.setMeaning(rs.getString("meaning"));
			fb.setResult(rs.getString("result"));
			fb.setNeededit(rs.getString("neededit"));
			fb.setTitle(rs.getString("title"));

			rs.close();
			stm.close();
			con.close();
			return fb;
		}
		rs.close();
		stm.close();
		con.close();
		return null;

	}

	public static void newFeedback(Integer testerId, Integer articleId, String description, String meaning,
			String license, String result, String neededit, String title) throws SQLException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}
		Connection connection = DBConnect.getConnection();
		String sql = "INSERT INTO feedback (testerId,articleId,description,meaning,license,result,neededit) VALUES(?,?,?,?,?,?,?)";

		try {
			PreparedStatement ps = connection.prepareStatement(sql);

			ps.setInt(1, testerId);
			ps.setInt(2, articleId);
			ps.setString(3, description);
			ps.setString(4, meaning);
			ps.setString(5, license);
			ps.setString(6, result);
			ps.setString(7, neededit);

			ps.executeUpdate();
			ps.close();
			connection.close();
		} catch (Exception e) {
			// TODO: handle exception
			connection.close();
		}

	}

	public static boolean hasArticle(Integer articleId) throws SQLException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver");
		}
		Connection con = null;
		Statement stm = null;
		ResultSet rs;
		try {
			con = DBConnect.getConnection();
			stm = con.createStatement();
			rs = stm.executeQuery("Select * from feedback where articleId='" + articleId + "'");
			if (rs.next()) {
				rs.close();
				stm.close();
				con.close();
				return true;
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("executeQuery fail !");
			e.printStackTrace();
			con.close();
		}
		return false;
	}
}
