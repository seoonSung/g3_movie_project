package com.care.root.qnaBoard.service;

import java.util.List;

import org.springframework.ui.Model;

import com.care.root.qnaBoard.dto.QnaBoardDTO;
import com.care.root.qnaBoard.dto.QnaBoardRepDTO;

public interface QnaBoardService {

	public void allList(Model model);

	public void writeSave(QnaBoardDTO dto);

	public void qnaContentView(int num, Model model);

	public int modify(QnaBoardDTO dto);
	
	public int delete(int num);

	public void addReply(QnaBoardRepDTO dto);

	public List<QnaBoardRepDTO> getRepList(int write_group);

	public int selectBoardCount();

	void getData(int num, Model model);

	/*public String writeSave(HttpServletRequest request);*/

}
