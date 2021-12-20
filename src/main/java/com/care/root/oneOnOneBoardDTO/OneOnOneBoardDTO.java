package com.care.root.oneOnOneBoardDTO;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class OneOnOneBoardDTO {
	private String sort;
	private String id;
	private String email;
	private String phoneNumber;
	private String title;
	private String content;
	private String imageFileName;
	private String saveDate;
	
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
	public String getImageFileName() {
		return imageFileName;
	}
	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}
	public String getSaveDate() {
		return saveDate;
	}
	public void setSaveDate(Timestamp saveDate) {
		SimpleDateFormat fo = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
		this.saveDate = fo.format(saveDate);
	}
	
}
