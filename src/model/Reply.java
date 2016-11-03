package model;

import java.sql.Timestamp;

public class Reply {
	private Integer id;

	private String mess;
	private Timestamp date;
	private Integer status;
	private User userId;
	private Comment comId;
	
	public Reply() {
		super();
	}

	public Reply(Integer id, String mess, Timestamp date, Integer status, User userId, Comment comId) {
		super();
		this.id = id;
		this.mess = mess;
		this.date = date;
		this.status = status;
		this.userId = userId;
		this.comId = comId;
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
	public User getUserId() {
		return userId;
	}
	public void setUserId(User userId) {
		this.userId = userId;
	}
	public Comment getComId() {
		return comId;
	}
	public void setComId(Comment comId) {
		this.comId = comId;
	}
	
	
	
}
