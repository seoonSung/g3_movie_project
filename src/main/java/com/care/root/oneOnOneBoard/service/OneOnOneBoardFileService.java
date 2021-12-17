package com.care.root.oneOnOneBoard.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public interface OneOnOneBoardFileService {

	public String saveFile(MultipartFile file);

	public String getMessage(HttpServletRequest request, String msg, String url);

}
