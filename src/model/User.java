package model;

import java.sql.Timestamp;
import java.util.List;

public class User {

	private Integer id;
	private String email;
	private String name;
	private String password;
	private String phone;
	private Integer sex;
	private Timestamp birthday;
	private Integer identitycard;
	private Integer roleId;
	private List<Comment> comments;
	private List<Reply> replies;

	public User() {
		super();
	}
	

	public User(Integer id, String email, String name, String password, String phone, Integer sex, Timestamp birthday,
			Integer identitycard, Integer roleId, List<Comment> comments, List<Reply> replies) {
		super();
		this.id = id;
		this.email = email;
		this.name = name;
		this.password = password;
		this.phone = phone;
		this.sex = sex;
		this.birthday = birthday;
		this.identitycard = identitycard;
		this.roleId = roleId;
		this.comments = comments;
		this.replies = replies;
	}

	
	
	public User( String email, String password, Integer roleId) {
		super();
		
		this.email = email;
		this.password = password;
		this.roleId = roleId;
	}


	public List<Reply> getReplies() {
		return replies;
	}


	public void setReplies(List<Reply> replies) {
		this.replies = replies;
	}


	public List<Comment> getComments() {
		return comments;
	}
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	public Timestamp getBirthday() {
		return birthday;
	}
	public void setBirthday(Timestamp birthday) {
		this.birthday = birthday;
	}
	public Integer getIdentitycard() {
		return identitycard;
	}
	public void setIdentitycard(Integer identitycard) {
		this.identitycard = identitycard;
	}
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	
	
	

}
