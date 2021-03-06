package model;

import java.io.Serializable;
import java.util.ArrayList;

public class Category implements Serializable{
	
	private Integer id;
	private String name;
	private ArrayList<Article> articles;
	
	
	
	public Category() {
		super();
	}



	public Category(Integer id, String name, ArrayList<Article> articles) {
		super();
		this.id = id;
		this.name = name;
		this.articles = articles;
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



	public ArrayList<Article> getArticles() {
		return articles;
	}



	public void setArticles(ArrayList<Article> articles) {
		this.articles = articles;
	}
	

}
