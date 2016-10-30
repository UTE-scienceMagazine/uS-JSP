package model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

public class Employee implements Serializable{

	private Integer id;
	private String email;
	private String password;
	private Timestamp birthday;
	private Integer phone;
	private Integer roleId;
	private Integer sex;
	private Integer identityCard;
	private List<EmployeeArticle> employeeArticles;
	
	public Employee() {
		super();
	}

	public Employee(Integer id, String email, String password, Timestamp birthday, Integer phone, Integer roleId,
			Integer sex, Integer identityCard, List<EmployeeArticle> employeeArticles) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.birthday = birthday;
		this.phone = phone;
		this.roleId = roleId;
		this.sex = sex;
		this.identityCard = identityCard;
		this.employeeArticles = employeeArticles;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Timestamp getBirthday() {
		return birthday;
	}
	public void setBirthday(Timestamp birthday) {
		this.birthday = birthday;
	}
	public Integer getPhone() {
		return phone;
	}
	public void setPhone(Integer phone) {
		this.phone = phone;
	}
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	public Integer getIdentityCard() {
		return identityCard;
	}
	public void setIdentityCard(Integer identityCard) {
		this.identityCard = identityCard;
	}
	public List<EmployeeArticle> getEmployeeArticles() {
		return employeeArticles;
	}
	public void setEmployeeArticles(List<EmployeeArticle> employeeArticles) {
		this.employeeArticles = employeeArticles;
	}

	
}
