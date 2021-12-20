package com.care.root.oneOnOneBoard.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface OneOnOneBoardService {

	public String saved(MultipartHttpServletRequest mul, HttpServletRequest request);

}
