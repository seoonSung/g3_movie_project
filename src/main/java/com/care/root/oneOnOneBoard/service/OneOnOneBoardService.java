package com.care.root.oneOnOneBoard.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface OneOnOneBoardService {

	public String saved(MultipartHttpServletRequest mul, HttpServletRequest request);
	
	public void allList(HttpSession session,Model model);
}
