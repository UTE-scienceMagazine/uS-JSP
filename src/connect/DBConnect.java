package connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	static String dbname="nhom11";
	static String dbuser="nhom11";
	static String dbpass="quan123";
	public static Connection getConnection() {
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost/usniper?useUnicode=yes&characterEncoding=UTF-8","root","");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void main(String[] args) {
		System.out.println(getConnection());
	}
	
}
