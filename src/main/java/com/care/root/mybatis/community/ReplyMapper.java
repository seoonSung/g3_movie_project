package com.care.root.mybatis.community;

import java.util.List;

import com.care.root.community.dto.CommunityReplyDTO;

public interface ReplyMapper {
		public List<CommunityReplyDTO> getReplyList(int wrnum) throws Exception;
}
