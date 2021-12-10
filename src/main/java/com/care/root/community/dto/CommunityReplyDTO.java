package com.care.root.community.dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class CommunityReplyDTO {
	private int renum;
	private int num;
	private int step;
	private int groups;
	private int indent;
	private String id;
	private String content;
	private Timestamp times;
	
	public int getGroups() {
		return groups;
	}
	public void setGroups(int groups) {
		this.groups = groups;
	}
	public int getIndent() {
		return indent;
	}
	public void setIndent(int indent) {
		this.indent = indent;
	}
	public int getRenum() {
		return renum;
	}
	public void setRenum(int renum) {
		this.renum = renum;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
