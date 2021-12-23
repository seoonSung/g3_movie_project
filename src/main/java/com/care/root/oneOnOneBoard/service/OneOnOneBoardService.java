package com.care.root.oneOnOneBoard.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

public interface OneOnOneBoardService {
	
	public void allList(HttpSession session,Model model);

	public String saved(HttpServletRequest request);
}
