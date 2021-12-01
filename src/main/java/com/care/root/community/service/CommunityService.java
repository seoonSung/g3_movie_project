package com.care.root.community.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.care.root.community.dto.CommunityDTO;

public interface CommunityService {
	public void communityMain(Model model, int num);
	public int writeSave(CommunityDTO dto);
	public void communityPost(int num, Model model);
	public void communityDelete(int num);

}
