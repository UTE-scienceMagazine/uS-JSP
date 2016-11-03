package model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

public class Comment implements Serializable{

	private Integer id;
	private String mess;
	private Timestamp date;
	private Integer status;
	private List<Reply> replies;
	private User userId;
	private Article articleId;
	
	
	public Comment() {
		super();
	}
	
	public Comment(Integer id, String mess, Timestamp date, Integer status, List<Reply> replies, User userId,
			Article articleId) {
		super();
		this.id = id;
		this.mess = mess;
		this.date = date;
		this.status = status;
		this.replies = replies;
		this.userId = userId;
		this.articleId = articleId;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMess() {
		return mess;
	}
	public void setMess(String mess) {
		this.mess = mess;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public List<Reply> getReplies() {
		return replies;
	}
	public void setReplies(List<Reply> replies) {
		this.replies = replies;
	}
	public User getUserId() {
		return userId;
	}
	public void setUserId(User userId) {
		this.userId = userId;
	}
	public Article getArticleId() {
		return articleId;
	}
	public void setArticleId(Article articleId) {
		this.articleId = articleId;
	}
	
	
	
}
