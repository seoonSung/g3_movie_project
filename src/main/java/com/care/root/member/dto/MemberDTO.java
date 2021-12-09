package com.care.root.member.dto;

public class MemberDTO {

	private String id;
	private String pw;
	private String name;
	private String email;
	private String sessionId;
	private java.sql.Date limitTime;
	
	public java.sql.Date getLimitTime() {
		return limitTime;
	}
	public void setLimitTime(java.sql.Date limitTime) {
		this.limitTime = limitTime;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}


	public String getSessionId() {
		return sessionId;
	}
	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}

	
}
