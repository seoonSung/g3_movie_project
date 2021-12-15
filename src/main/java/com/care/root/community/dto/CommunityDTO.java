package com.care.root.community.dto;

import java.text.SimpleDateFormat;

public class CommunityDTO {
	private int num;
	private String id;
	private String title;
	private String content;
	private int hit;
	private String times;
	private int recnt;
	
	
	public int getRecnt() {
		return recnt;
	}
	public void setRecnt(int recnt) {
		this.recnt = recnt;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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

	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getTimes() {
		return times;
	}
	public void setTimes(java.sql.Timestamp times) {
		SimpleDateFormat fo = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
		this.times = fo.format(times);
	}
	
	
}
