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
	@Autowired ReplyMapper rmapper;
		
		public List<CommunityDTO> communityMain(Model model, String searchOption, String keyword, int pageNum) throws Exception {
			int pageLetter = 5;  // 페이지당 보여질 글 개수
			int allCount = mapper.selectBoardCount(searchOption,keyword); // 총 개수
			int repeat = allCount / pageLetter; // 반복횟수 및 총 페이지 수
			if(allCount % pageLetter != 0) {
				repeat += 1;
			}
			int end = pageNum * pageLetter;
			int start = end + 1 - pageLetter;
			model.addAttribute("so",searchOption);
			model.addAttribute("ky",keyword);
			model.addAttribute("pN",pageNum);
			model.addAttribute("repeat", repeat);
			model.addAttribute("ac", allCount);
			return mapper.communityMain(searchOption, keyword, start, end);
		}
		
		
		public void writeSave(CommunityDTO dto) throws Exception {
			mapper.writeSave(dto);
		}


		public CommunityDTO communityPost(int num) throws Exception {
		
			mapper.upHit(num);
			return mapper.communityPost(num);
			
		}
		private void upHit(int num) { //조회수
			mapper.upHit(num);
		}

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
	
	
//
//
//	
//	public List<CommunityReplyDTO> getRepList(int wrnum) {
//		return mapper.getRepList(wrnum);
//		
//	}


	
	public List<CommunityReplyDTO> getReplyList(int num) throws Exception { //댓글 리스트보기
		return rmapper.getReplyList(num);
	}
	public void saveReply(CommunityReplyDTO dto) { //댓글 저장
			rmapper.saveReply(dto);
		}

	public void reDelete(int renum) { //댓글 삭제
		rmapper.reDelete(renum);
		
	}


	public void updateReply(int renum, String content) { //댓글 수정
		rmapper.updateReply(renum,content);
		
	}


	
	public void rereSave(int renum, String content, String id, int groups,int num) { //대댓글 작성
		rmapper.rereSave(renum, content, id, groups, num);
		
	}




	
	
	


	

	


}
