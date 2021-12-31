package com.care.root.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.care.root.member.service.MemberService;

@RestController
@RequestMapping("member")
public class MemberControllerAjax {
	@Autowired MemberService ms;
	
	@GetMapping(value = "idCheck/{id}", produces = "application/json;charset=utf-8")
	@ResponseBody
	public String getReplyList(@PathVariable String id) throws Exception {
		System.out.println("id: "+id);
		boolean getId = ms.getId(id);
		System.out.println(getId);
		return getId + "";

	}
}
