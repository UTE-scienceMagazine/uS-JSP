package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class EmployeeArticle implements Serializable{

	private Integer id;
	private Integer employeeId;
	private Integer articleId;
	private Integer status;
	private Timestamp date;
	private Integer statuschange;
	
	public EmployeeArticle() {
		super();
	}
	public EmployeeArticle(Integer id, Integer employeeId, Integer articleId, Integer status, Timestamp date,
			Integer statuschange) {
		super();
		this.id = id;
		this.employeeId = employeeId;
		this.articleId = articleId;
		this.status = status;
		this.date = date;
		this.statuschange = statuschange;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}
	public Integer getArticleId() {
		return articleId;
	}
	public void setArticleId(Integer articleId) {
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
	public Integer getStatuschange() {
		return statuschange;
	}
	public void setStatuschange(Integer statuschange) {
		this.statuschange = statuschange;
	}
	
	
	
}
