package com.care.root.community.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.care.root.community.dto.CommunityDTO;
import com.care.root.community.dto.CommunityReplyDTO;


public interface CommunityService {
	//public void communityMain(Model model, int pageNum);
	public List<CommunityDTO> communityMain(String searchOption,String keyword) throws Exception; //커뮤 메인페이지 게시글 리스트 가져오기
	public void writeSave(CommunityDTO dto) throws Exception; //글작성후 저장
	public CommunityDTO communityPost(int num) throws Exception; // 게시글 상세보기
	public void communityDelete(int num); //글 삭제
	public void data(int num,Model model); //수정페이지에 데이터 넘겨주기
	public int modify(CommunityDTO dto); //수정페이지
//	public void communityReply(int num, Model model);
//	public int replySave(CommunityDTO dto);
//	
	public List<CommunityReplyDTO> getReplyList(int wrnum) throws Exception; //댓글 리스트
	
}
