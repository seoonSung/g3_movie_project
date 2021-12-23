package com.care.root.oneOnOneBoard.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
@Service
public class checkMessageImpl implements checkMessage{

	public String getMessage(HttpServletRequest request, String msg, String url) {
		// TODO Auto-generated method stub
		String message = null;
		String path = request.getContextPath();
		message = "<script>alert('"+msg+"');";
		message += "location.href='"+path+url+"';</script>";
		return message;
	}

}
