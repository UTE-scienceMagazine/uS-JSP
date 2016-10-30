package model;

import java.sql.Timestamp;

public class Reply {
	private Integer id;

	private Integer mess;
	private Timestamp date;
	private Integer status;
	private Integer userId;
	private Integer comId;
	
	public Reply() {
		super();
	}


	public Reply(Integer id, Integer userId, Integer comId, Integer mess, Timestamp date, Integer status) {
		super();
		this.id = id;
		this.userId = userId;
		this.comId = comId;
		this.mess = mess;
		this.date = date;
		this.status = status;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public Integer getUserId() {
		return userId;
	}


	public void setUserId(Integer userId) {
		this.userId = userId;
	}


	public Integer getComId() {
		return comId;
	}


	public void setComId(Integer comId) {
		this.comId = comId;
	}


	public Integer getMess() {
		return mess;
	}


	public void setMess(Integer mess) {
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
	
	
	
}
