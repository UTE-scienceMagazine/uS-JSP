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


	public Feedback(){
	super();
	}

	public Feedback(Integer id,Integer testerId,Integer articleId,String description,String meaning,String license,String result,String neededit){
		super();
		
		this.id= id;
		this.testerId= testerId;
		this.articleId= articleId;
		this.description= description;
		this.meaning= meaning;
		this.license=license;
		this.result=result;
		this.neededit=neededit;
		}
	
	public Integer getID()
	{
		return id;
	}
	
	public void setId(Integer id){
		this.id=id;
		
	}
	
	public Integer getTesterID()
	{
		return testerId;
	}
	
	public void setTesterId(Integer testerId){
		this.testerId=testerId;
		
	}
	
	public Integer getArticleID()
	{
		return articleId;
	}
	
	public void setArticleID(Integer articleId){
		this.articleId=articleId;
		
	}
	
	
	public String getDescription()
	{
		return description;
	}
	
	public void setDescription(String description)
	{
		this.description=description;
	}
	
	public String getMeaning()
	{
		return meaning;
	}
	
	public void setMeaning(String meaning)
	{
		this.meaning=meaning;
	}
	
	public String getLicense()
	{
		return license;
	}
	
	public void setLicense(String license)
	{
		this.license=license;
	}
	
	public String getResult()
	{
		return result;
	}
	
	public void setResult(String result)
	{
		this.result=result;
	}
	
	public String getNeedEdit()
	{
		return neededit;
	}
	
	public void setNeedEdit(String neededit)
	{
		this.neededit=neededit;
	}
	
	
}