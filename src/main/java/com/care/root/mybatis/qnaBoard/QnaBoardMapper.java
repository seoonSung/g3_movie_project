package com.care.root.mybatis.qnaBoard;

import java.util.List;

import com.care.root.qnaBoard.dto.QnaBoardDTO;

public interface QnaBoardMapper {

	public int writeSave(QnaBoardDTO dto);

	public List<QnaBoardDTO> qnaBoard();

}
