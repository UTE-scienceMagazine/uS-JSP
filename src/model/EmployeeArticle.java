package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class EmployeeArticle implements Serializable{

	private Integer id;
	private Employee employeeId;
	private Article articleId;
	private Integer status;
	private Timestamp date;
	
	

	public EmployeeArticle() {
		super();
	}
	public EmployeeArticle(Integer id, Employee employeeId, Article articleId, Integer status, Timestamp date) {
		super();
		this.id = id;
		this.employeeId = employeeId;
		this.articleId = articleId;
		this.status = status;
		this.date = date;
		
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Employee getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(Employee employeeId) {
		this.employeeId = employeeId;
	}
	public Article getArticleId() {
		return articleId;
	}
	public void setArticleId(Article articleId) {
		this.articleId = articleId;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	
	
	
	
	
}
