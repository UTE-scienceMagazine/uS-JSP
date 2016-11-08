package model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

public class Employee implements Serializable{

	private Integer id;
	private String email;
	private String name;
	private String password;
	private Timestamp birthday;
	private String phone;
	private Role roleId;
	private Integer sex;
	private String identitycard;
	private String avatar;
	private Integer available;
	private Timestamp joinday;
	private List<EmployeeArticle> employeeArticles;
	
	public Employee() {
		super();
	}
	public Employee(Integer id, String email, String name, String password, Timestamp birthday, String phone,
			Role roleId, Integer sex, String identitycard, String avatar, Integer available, Timestamp joinday,
			List<EmployeeArticle> employeeArticles) {
		super();
		this.id = id;
		this.email = email;
		this.name = name;
		this.password = password;
		this.birthday = birthday;
		this.phone = phone;
		this.roleId = roleId;
		this.sex = sex;
		this.identitycard = identitycard;
		this.avatar = avatar;
		this.available = available;
		this.joinday = joinday;
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
	public Timestamp getBirthday() {
		return birthday;
	}
	public void setBirthday(Timestamp birthday) {
		this.birthday = birthday;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Role getRoleId() {
		return roleId;
	}
	public void setRoleId(Role roleId) {
		this.roleId = roleId;
	}
	public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	public String getIdentitycard() {
		return identitycard;
	}
	public void setIdentitycard(String identitycard) {
		this.identitycard = identitycard;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public Integer getAvailable() {
		return available;
	}
	public void setAvailable(Integer available) {
		this.available = available;
	}
	public Timestamp getJoinday() {
		return joinday;
	}
	public void setJoinday(Timestamp joinday) {
		this.joinday = joinday;
	}
	public List<EmployeeArticle> getEmployeeArticles() {
		return employeeArticles;
	}
	public void setEmployeeArticles(List<EmployeeArticle> employeeArticles) {
		this.employeeArticles = employeeArticles;
	}
	
	
	
}
