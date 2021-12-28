package com.care.root.oneOnOneBoardDTO;

public class OneOnOneBoardDTO {
	private String sort;
	private String id;
	private String email;
	private String phoneNumber;
	private String title;
	private String content;
	private String receiver;
	
	
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
    public String toString() {
        return "OneOnOneBoardDTO [id=" + id + ", email=" + email + ", receiver=" + receiver
                + ", title=" + title + ", content=" + content + "]";
    }
}
