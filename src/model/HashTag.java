package model;

import java.io.Serializable;

public class HashTag implements Serializable {

	private Integer id;
	private String tag;
	private Integer articleId;
	
	public HashTag() {
		super();
	}
	public HashTag(Integer id, String tag, Integer articleId) {
		super();
		this.id = id;
		this.tag = tag;
		this.articleId = articleId;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public Integer getArticleId() {
		return articleId;
	}
	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}
	
	
	
	
}
