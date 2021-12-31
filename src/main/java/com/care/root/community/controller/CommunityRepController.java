package com.care.root.community.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.care.root.community.dto.CommunityReplyDTO;
import com.care.root.community.service.CommunityService;

@RestController
@RequestMapping("/main")
public class CommunityRepController {
	@Autowired
	CommunityService cs;
	
	//리스트 보기
	@GetMapping(value = "getReplyList/{num}", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<CommunityReplyDTO> getReplyList(@PathVariable int num) throws Exception {
		return cs.getReplyList(num);

	}
	//저장
	@PostMapping(value = "reSave", produces = "application/json; charset=utf-8")
	public String reSave(@RequestBody Map<String, Object> map) {
		CommunityReplyDTO dto = new CommunityReplyDTO();
		dto.setNum(Integer.parseInt((String) map.get("num")));
		dto.setId((String) map.get("id"));
		dto.setContent((String) map.get("content"));
		cs.saveReply(dto);
		return "{\"result\" : true}";
	}
	//삭제
	@GetMapping(value = "reDelete/{renum}", produces = "application/json;charset=utf-8")
	@ResponseBody
	public String reDelete(@PathVariable int renum) throws Exception {
		cs.reDelete(renum);
		return "{\"result\" : true}";

	}
	//수정
	@PostMapping(value = "updateReply", produces = "application/json; charset=utf-8")
	public String updateReply(@RequestBody Map<String, Object> map) {
		CommunityReplyDTO dto = new CommunityReplyDTO();
		
		
		int renum = (int) map.get("renum");
		String content = (String) map.get("content");
		
		
		cs.updateReply(renum,content);
		return "{\"result\" : true}";
	}
	//대댓글 작성
	@PostMapping(value = "rereSave", produces = "application/json; charset=utf-8")
	public String rereSave(@RequestBody Map<String, Object> map) {
		CommunityReplyDTO dto = new CommunityReplyDTO();
		
		int groups = (int) map.get("groups");
		int renum = (int) map.get("renum");
		int num = (int) map.get("num");
		String content = (String) map.get("content");
		String id = (String) map.get("id");
		
		
		cs.rereSave(renum,content,id,groups,num);
		return "{\"result\" : true}";
	}
}
