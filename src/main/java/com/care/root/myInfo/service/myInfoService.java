package com.care.root.myInfo.service;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

public interface myInfoService {

	public void allList(HttpSession session, Model model);
}
