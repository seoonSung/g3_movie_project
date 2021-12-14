package com.care.root.qnaBoard.service;



import java.util.List;

import org.springframework.ui.Model;

import com.care.root.qnaBoard.dto.QnaBoardDTO;
import com.care.root.qnaBoard.dto.QnaBoardRepDTO;

public interface QnaBoardService {
	public void boardList(Model model,int num);
	public void contentView(int num, Model model);
	public int modifysave(QnaBoardDTO dto);
	
}
