package model;

public class Message {
	private Integer id;
	private String editorEmail;
	private Integer articleId;
	private String text;
	private Integer status;
	
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Message(Integer id, String editorId, Integer articleId, String text, Integer status) {
		super();
		this.id = id;
		this.editorEmail = editorId;
		this.articleId = articleId;
		this.text = text;
		this.status = status;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEditorEmail() {
		return editorEmail;
	}
	public void setEditorEmail(String editorEmail) {
		this.editorEmail = editorEmail;
	}
	public Integer getArticleId() {
		return articleId;
	}
	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	
	
}
