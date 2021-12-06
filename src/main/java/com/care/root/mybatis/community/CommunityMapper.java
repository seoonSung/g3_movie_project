package com.care.root.mybatis.community;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.care.root.community.dto.CommunityDTO;
import com.care.root.community.dto.CommunityReplyDTO;



public interface CommunityMapper {

	public List<CommunityDTO> communityMain(@Param("searchOption") String searchOption,
											@Param("keyword") String keyword,
											@Param("s")int start, @Param("e")int end)throws Exception; //메인목록
	public int writeSave(CommunityDTO dto) throws Exception; //글작성 저장
	public CommunityDTO communityPost(int num); //작성된글 보기
	public int communityDelete(int num); //글 삭제
	public void upHit(int num); // 게시글 조회수
	public int modify(CommunityDTO dto); //게시글 수정
	public int selectBoardCount(@Param("searchOption") String searchOption,
								@Param("keyword") String keyword); //게시글 수
//	public CommunityDTO communityReply(int nums); //답글
//	public int replySave(CommunityDTO dto); //답글저장
//	
//	public List<CommunityReplyDTO> getRepList(int wrnum);
}
