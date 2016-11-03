package model;

import java.io.Serializable;

public class HashTag implements Serializable {

	private Integer id;
	private Article articleId;
	private String tag;
	
	
	
	public HashTag() {
		super();
	}
	
	public HashTag(Integer id, Article articleId, String tag) {
		super();
		this.id = id;
		this.articleId = articleId;
		this.tag = tag;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Article getArticleId() {
		return articleId;
	}
	public void setArticleId(Article articleId) {
		this.articleId = articleId;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}

	
}
