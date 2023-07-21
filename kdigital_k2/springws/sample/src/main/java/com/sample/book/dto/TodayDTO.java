package com.sample.book.dto;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class TodayDTO {
	int num;
	String name;
	String pass;
	String content;
	int hit;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	Date regdate;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
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
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "TodayDTO [num=" + num + ", name=" + name + ", pass=" + pass + ", content=" + content + ", hit=" + hit
				+ ", regdate=" + regdate + "]";
	}
	
}
