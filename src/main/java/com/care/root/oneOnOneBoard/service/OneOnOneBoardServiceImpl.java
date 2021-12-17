package com.care.root.oneOnOneBoard.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.care.root.mybatis.oneOnOneBoard.OneOnOneBoardMapper;
import com.care.root.oneOnOneBoardDTO.OneOnOneBoardDTO;

@Service
public class OneOnOneBoardServiceImpl implements OneOnOneBoardService{
	@Autowired OneOnOneBoardMapper mapper;
	@Autowired OneOnOneBoardFileService ooobfs;

	@Override
	public String saved(MultipartHttpServletRequest mul, HttpServletRequest request) {
		// TODO Auto-generated method stub
		 OneOnOneBoardDTO dto = new OneOnOneBoardDTO();
	      dto.setTitle( mul.getParameter("title") );
	      dto.setContent( mul.getParameter("content") );
	      dto.setId(mul.getParameter("id"));

	      MultipartFile file = mul.getFile("image_file_name");
	      if(file.getSize() != 0) {
	         //이미지 있을경우 처리
		     dto.setImageFileName(ooobfs.saveFile(file));
	      }else {
	         dto.setImageFileName("nan");
	      }
	      int result = 0;
	      String msg, url;
	      try {
	    	  result = mapper.save(dto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	      if(result == 1) {
	         msg = "문의 메일을 보냈습니다.";
	         url = "/service/mainService";
	      }else {
	         msg = "문제가 발생되었습니다.";
	         url = "/service/oneOnOneQna";
	      }
	      return ooobfs.getMessage(request, msg, url);
	   }
}
