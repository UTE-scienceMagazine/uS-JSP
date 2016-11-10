package model;

import java.io.Serializable;


@SuppressWarnings("serial")
public class Feedback implements Serializable{

	private Integer id;
	private Integer testerId;
	private Integer articleId;
	private String description;
	private String meaning;
	private String license;
	private String result;
	private String neededit;
	private String title;
	
	
	public int intValue() {
		return articleId.intValue();
	}

	public Feedback() {
		// TODO Auto-generated constructor stub
		super();
	}
	public Feedback(Integer id, Integer testerId, Integer articleId, String description, String meaning, String license,
			String result, String neededit, String title) {
		super();
		this.id = id;
		this.testerId = testerId;
		this.articleId = articleId;
		this.description = description;
		this.meaning = meaning;
		this.license = license;
		this.result = result;
		this.neededit = neededit;
		this.title = title;
	}
	
	

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getTesterId() {
		return testerId;
	}
	public void setTesterId(Integer testerId) {
		this.testerId = testerId;
	}
	public Integer getArticleId() {
		return articleId;
	}
	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getMeaning() {
		return meaning;
	}
	public void setMeaning(String meaning) {
		this.meaning = meaning;
	}
	public String getLicense() {
		return license;
	}
	public void setLicense(String license) {
		this.license = license;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getNeededit() {
		return neededit;
	}
	public void setNeededit(String neededit) {
		this.neededit = neededit;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

}
	
