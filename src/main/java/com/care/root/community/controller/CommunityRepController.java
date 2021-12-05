package com.care.root.community.controller;

import java.lang.System.Logger;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


import com.care.root.community.dto.CommunityReplyDTO;
import com.care.root.community.service.CommunityService;

@RestController
@RequestMapping("/main")
public class CommunityRepController {
	@Autowired 
	CommunityService cs;
	
	@GetMapping(value="getReplyList/{wrnum}", 
				produces="application/json;charset=utf-8" )
	public List<CommunityReplyDTO> getReplyList(@PathVariable int wrnum) throws Exception {
		System.out.println("wrnum: "+wrnum);
		return cs.getReplyList(wrnum);

	}

}
