package model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

public class Volume implements Serializable{

	private Integer id;
	private String text;
	private Timestamp date;
	private List<Article> articles;
	private String description;
	
	public Volume() {
		super();
	}
	public Volume(Integer id, String text, Timestamp date, List<Article> articles, String description) {
		super();
		this.id = id;
		this.text = text;
		this.date = date;
		this.articles = articles;
		this.description = description;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public List<Article> getArticles() {
		return articles;
	}
	public void setArticles(List<Article> articles) {
		this.articles = articles;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
}
