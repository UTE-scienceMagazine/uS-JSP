package model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

public class Comment implements Serializable{

	private Integer id;
	private String mess;
	private Timestamp date;
	private Integer status;
	private Integer userId;
	private Integer articleId;
	private List<Reply> replies;
	
	public Comment() {
		super();
	}

	public Comment(Integer id, String mess, Timestamp date, Integer status, Integer userId, Integer articleId,
			List<Reply> replies) {
		super();
		this.id = id;
		this.mess = mess;
		this.date = date;
		this.status = status;
		this.userId = userId;
		this.articleId = articleId;
		this.replies = replies;
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

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getArticleId() {
		return articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

	public List<Reply> getReplies() {
		return replies;
	}

	public void setReplies(List<Reply> replies) {
		this.replies = replies;
	}
	
	
	
	
}
