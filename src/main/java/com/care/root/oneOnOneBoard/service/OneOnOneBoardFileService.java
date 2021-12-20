package com.care.root.oneOnOneBoard.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public interface OneOnOneBoardFileService {
	public static final String IMAGE_REPO = "/Users/seoonsung/Documents/workspace-sts-3.9.18.RELEASE/image_repo";

	public String saveFile(MultipartFile file);

	public String getMessage(HttpServletRequest request, String msg, String url);

}
