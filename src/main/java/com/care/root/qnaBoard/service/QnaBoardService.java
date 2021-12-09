package com.care.root.qnaBoard.service;

import org.springframework.ui.Model;
import com.care.root.qnaBoard.dto.QnaBoardDTO;

public interface QnaBoardService {
	public void boardList(Model model,int num);
	public int writeSave(QnaBoardDTO dto);
	public void contentView(int num, Model model);
	public int modifysave(QnaBoardDTO dto);
	
}
