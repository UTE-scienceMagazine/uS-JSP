package connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	static String dbname="utescience";
	static String dbuser="nhom11";
	static String dbpass="quan123";
	public static Connection getConnection() {
		Connection cons = null;
		try {
		Class.forName("com.mysql.jdbc.Driver");
		cons = DriverManager.getConnection("jdbc:mysql://localhost/utescience?useUnicode=yes&characterEncoding=UTF-8","root","");
		} catch (Exception e) {
		e.printStackTrace();
		}
		return cons;
		}
		public static void main(String[] args){
		System.out.println(getConnection());
		}
		}
