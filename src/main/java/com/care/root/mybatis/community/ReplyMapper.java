package com.care.root.mybatis.community;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.care.root.community.dto.CommunityReplyDTO;

public interface ReplyMapper {
		public List<CommunityReplyDTO> getReplyList(int num) throws Exception; //댓글 리스트
		public void saveReply(CommunityReplyDTO dto); //댓글 작성
		public void reDelete(int renum); //삭제
		public void updateReply(@Param("renum") int renum,
								@Param("content") String content); //댓글 수정
		public void rereSave(@Param("renum") int renum,
				@Param("content") String content,
				@Param("id") String id,
				@Param("groups") int groups,
				@Param("num") int num); //대댓글 작성
}
