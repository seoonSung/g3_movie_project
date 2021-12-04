package com.care.root.community.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import com.care.root.community.dto.CommunityDTO;
import com.care.root.community.dto.CommunityReplyDTO;
import com.care.root.mybatis.community.CommunityMapper;
import com.care.root.mybatis.community.ReplyMapper;

@Service
public class CommunityServiceImpl implements CommunityService{
	@Autowired CommunityMapper mapper;
//	@Autowired ReplyMapper rmapper;
		
		public List<CommunityDTO> communityMain(String keyword) throws Exception {
			
			return mapper.communityMain(keyword);
		}
		
		public void writeSave(CommunityDTO dto) throws Exception {
			mapper.writeSave(dto);
		}


		public CommunityDTO communityPost(int num) throws Exception {
		
			mapper.upHit(num);
			return mapper.communityPost(num);
			
		}
//	private void upHit(int num) {
//		mapper.upHit(num);
//	}

	public void communityDelete(int num) {
		mapper.communityDelete(num);
	}

	public void data(int num, Model model) {
		model.addAttribute("communityPost", mapper.communityPost(num));
	}

	
	public int modify(CommunityDTO dto) {
		 
		return mapper.modify(dto);
	}
//
//
//	
//	public void communityReply(int num, Model model) {
//		model.addAttribute("personalDate", mapper.communityReply(num));
//		
//	}
//
//
//	@Override
//	public int replySave(CommunityDTO dto) {
//		int result = 0;
//		result = mapper.replySave(dto);
//		return result;
//	}
//
//
//	
//	public List<CommunityReplyDTO> getRepList(int wrnum) {
//		return mapper.getRepList(wrnum);
//		
//	}
//
//
//	
//	public List<CommunityReplyDTO> getReplyList(int wrnum) throws Exception {
//		
//		return rmapper.getReplyList(wrnum);
//	}



	
	
	


	

	


}
