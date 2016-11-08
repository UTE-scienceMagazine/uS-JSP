package model;

import java.io.Serializable;

public class Role implements Serializable{
	private Integer id;
	private String name;
	
	public Role() {
		super();
	}
	public Role(Integer id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
