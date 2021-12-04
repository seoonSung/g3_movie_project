package com.care.root.community.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


import com.care.root.community.dto.CommunityReplyDTO;
import com.care.root.community.service.CommunityService;

@RestController
@RequestMapping("/main")
public class CommunityRepController {
	@Autowired CommunityService cs;
	
//	@RequestMapping(value = "/getReqlyList", method = RequestMethod.POST)
//	public List<CommunityReplyDTO> getReplyList(@RequestParam("wrnum") int wrnum) throws Exception {
//
//		return cs.getReplyList(wrnum);
//
//	}

}
