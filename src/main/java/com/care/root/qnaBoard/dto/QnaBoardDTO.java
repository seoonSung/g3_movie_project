package com.care.root.qnaBoard.dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class QnaBoardDTO {
	private int num;
	private String title;
	private String content;
	private String saveDate;
	private int hit;
	private String id;
	private String sort;
	
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
	public String getSaveDate() {
		return saveDate;
	}
	public void setSaveDate(Timestamp saveDate) {
		SimpleDateFormat fo = new SimpleDateFormat("YYYYMMddHH:mm:ss");
		this.saveDate = fo.format(saveDate);
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
}
