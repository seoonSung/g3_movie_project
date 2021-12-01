package com.care.root.community.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.care.root.community.dto.CommunityDTO;
import com.care.root.mybatis.community.CommunityMapper;

@Service
public class CommunityServiceImpl implements CommunityService{
	@Autowired CommunityMapper mapper;
	
	public void communityMain(Model model, int num) {
		int pageLetter = 10;  // 페이지당 보여질 글 개수
		int allCount = mapper.selectBoardCount(); // 총 개수
		int repeat = allCount / pageLetter; // 반복횟수 및 총 페이지 수
		if(allCount % pageLetter != 0) {
			repeat += 1;
		}
		int end = num * pageLetter;
		int start = end + 1 - pageLetter;
		model.addAttribute("repeat", repeat);
		model.addAttribute("boardList",mapper.boardAllList(start,end));
	}

	
	public int writeSave(CommunityDTO dto) {
		int result = 0;
		result = mapper.writeSave(dto);
		return result;
	}


	
	public void communityPost(int num, Model model) {
		
		model.addAttribute("personalDate", mapper.communityPost(num));
		upHit(num);
	}
	private void upHit(int num) {
		mapper.upHit(num);
	}


	public void communityDelete(int num) {
		
		mapper.communityDelete(num);
	}
	


}
