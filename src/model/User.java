package model;

public class User {

	private long userID;
	private String uesrEmail;
	private String userPass;
	private String userRole;

	public User() {

	}

	public User(long userID, String uesrEmail, String userPass, String userRole) {

		this.userID = userID;
		this.uesrEmail = uesrEmail;
		this.userPass = userPass;
		this.userRole = userRole;
	}

	public long getUserID() {
		return userID;
	}

	public void setUserID(long userID) {
		this.userID = userID;
	}

	public String getUesrEmail() {
		return uesrEmail;
	}

	public void setUesrEmail(String uesrEmail) {
		this.uesrEmail = uesrEmail;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

}
