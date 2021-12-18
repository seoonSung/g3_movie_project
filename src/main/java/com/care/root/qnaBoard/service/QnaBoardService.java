package com.care.root.qnaBoard.service;

import java.util.List;

import org.springframework.ui.Model;

import com.care.root.qnaBoard.dto.QnaBoardDTO;
import com.care.root.qnaBoard.dto.QnaBoardRepDTO;

public interface QnaBoardService {
	public void boardList(Model model,int num);
	public void contentView(int num, Model model);
	public int writeSave(QnaBoardDTO dto);
	public int modify_save(QnaBoardDTO dto);
	public int delete(int num);
	public void addReply(QnaBoardRepDTO dto);
	public List<QnaBoardRepDTO> getRepList(int write_group);
}
