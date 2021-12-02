package com.care.root.mybatis.community;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.care.root.community.dto.CommunityDTO;
import com.care.root.community.dto.CommunityReplyDTO;



public interface CommunityMapper {
	public int selectBoardCount();
	public List<CommunityDTO> boardAllList(@Param("s") int start, @Param("e") int end);
	public int writeSave(CommunityDTO dto);
	public CommunityDTO communityPost(int num);
	public int communityDelete(int num);
	public void upHit(int num);
	public int modify(CommunityDTO dto);
	public CommunityDTO communityReply(int nums);
	public int replySave(CommunityDTO dto);
}
