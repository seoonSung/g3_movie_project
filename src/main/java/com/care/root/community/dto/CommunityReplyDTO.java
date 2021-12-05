package com.care.root.community.dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class CommunityReplyDTO {
	private int renum;
	private int wrnum;
	private int step;
	private String id;
	private String content;
	private Timestamp times;
	public int getRenum() {
		return renum;
	}
	public void setRenum(int renum) {
		this.renum = renum;
	}
	public int getWrnum() {
		return wrnum;
	}
	public void setWrnum(int wrnum) {
		this.wrnum = wrnum;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getTimes() {
		return times;
	}
	public void setTimes(Timestamp times) {
		this.times = times;
	}
	
	
	
}
