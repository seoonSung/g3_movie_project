package com.care.root.qnaBoard.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.care.root.common.session.SessionName;
import com.care.root.qnaBoard.dto.QnaBoardRepDTO;
import com.care.root.qnaBoard.service.QnaBoardService;

@RestController
@RequestMapping("qnaboard/")
public class QnaBoardRepController implements SessionName{
@Autowired QnaBoardService qbs;

	@PostMapping(value="master", produces = "application/json; charset=utf-8")
	public String master(@RequestBody Map<String, Object> map, HttpSession session) {
		QnaBoardRepDTO dto = new QnaBoardRepDTO();
		dto.setId( (String)session.getAttribute(LOGIN));
		dto.setWrite_group( Integer.parseInt((String)map.get("write_group")) );
		dto.setTitle((String)map.get("title"));
		dto.setContent((String)map.get("content"));

		qbs.addReply(dto);
		return "{\"result\" : true}";
	}
	

	  @GetMapping(value = "getReplyList/{write_group}", produces = "application/json;charset=utf-8")
	   @ResponseBody
	   public List<QnaBoardRepDTO> getReplyList(@PathVariable int write_group) throws Exception {
	      return qbs.getReplyList(write_group);

	   }

}
