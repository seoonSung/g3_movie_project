package com.care.root.oneOnOneBoard.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.care.root.oneOnOneBoard.service.OneOnOneBoardService;

@Controller
@RequestMapping("service")
public class OneOnOneBoardController {
	@Autowired OneOnOneBoardService ooobs;
	@GetMapping("oneOnOneQna")
	public String oneOnOneQna() {
		return "service/oneOnOneQna";
	}
	
	@PostMapping("save")
	public void save(MultipartHttpServletRequest mul,
	         HttpServletResponse response,
	         HttpServletRequest request) throws IOException {
	   String message = ooobs.saved(mul, request);
	   PrintWriter out=null;
	   response.setContentType("text/html; charset=utf-8");
	   out = response.getWriter();
	   out.println(message);
	}
}
