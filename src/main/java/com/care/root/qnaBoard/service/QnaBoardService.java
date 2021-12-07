package com.care.root.qnaBoard.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.care.root.qnaBoard.dto.QnaBoardDTO;

public interface QnaBoardService {

	public void allList(Model model);

	public String writeSave(HttpServletRequest request);

}
