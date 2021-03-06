package model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;


public class Article implements Serializable{

	private Integer id;
	private String title;
	private String detail;
	private Timestamp date;
	private Integer volumeId;
	private Status statusId;
	private String pdf;
	private Integer num;
	private String description;
	private Integer vote;
	private Integer views;
	private Employee authorId;
	private Category categoryId;
	private List<Comment> comments;
	private List<EmployeeArticle> employeeArticles;
	private List<HashTag> hashTags;
	
	
	
	public Article() {
		super();
	}



	public Article(Integer id, String title, String detail, Timestamp date, Integer volumeId, Status statusId,
			String pdf, Integer num, String description, Integer vote, Integer views, Employee authorId,
			Category categoryId, List<Comment> comments, List<EmployeeArticle> employeeArticles,
			List<HashTag> hashTags) {
		super();
		this.id = id;
		this.title = title;
		this.detail = detail;
		this.date = date;
		this.volumeId = volumeId;
		this.statusId = statusId;
		this.pdf = pdf;
		this.num = num;
		this.description = description;
		this.vote = vote;
		this.views = views;
		this.authorId = authorId;
		this.categoryId = categoryId;
		this.comments = comments;
		this.employeeArticles = employeeArticles;
		this.hashTags = hashTags;
	}



	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getDetail() {
		return detail;
	}



	public void setDetail(String detail) {
		this.detail = detail;
	}



	public Timestamp getDate() {
		return date;
	}



	public void setDate(Timestamp date) {
		this.date = date;
	}



	public Integer getVolumeId() {
		return volumeId;
	}



	public void setVolumeId(Integer volumeId) {
		this.volumeId = volumeId;
	}



	public Status getStatusId() {
		return statusId;
	}



	public void setStatusId(Status statusId) {
		this.statusId = statusId;
	}



	public String getPdf() {
		return pdf;
	}



	public void setPdf(String pdf) {
		this.pdf = pdf;
	}



	public Integer getNum() {
		return num;
	}



	public void setNum(Integer num) {
		this.num = num;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public Integer getVote() {
		return vote;
	}



	public void setVote(Integer vote) {
		this.vote = vote;
	}



	public Integer getViews() {
		return views;
	}



	public void setViews(Integer views) {
		this.views = views;
	}



	public Employee getAuthorId() {
		return authorId;
	}



	public void setAuthorId(Employee authorId) {
		this.authorId = authorId;
	}



	public Category getCategoryId() {
		return categoryId;
	}



	public void setCategoryId(Category categoryId) {
		this.categoryId = categoryId;
	}



	public List<Comment> getComments() {
		return comments;
	}



	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}



	public List<EmployeeArticle> getEmployeeArticles() {
		return employeeArticles;
	}



	public void setEmployeeArticles(List<EmployeeArticle> employeeArticles) {
		this.employeeArticles = employeeArticles;
	}



	public List<HashTag> getHashTags() {
		return hashTags;
	}



	public void setHashTags(List<HashTag> hashTags) {
		this.hashTags = hashTags;
	}
	
	
}
