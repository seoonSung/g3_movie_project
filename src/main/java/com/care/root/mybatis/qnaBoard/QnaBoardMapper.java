package com.care.root.mybatis.qnaBoard;

import java.util.List;

import com.care.root.qnaBoard.dto.QnaBoardDTO;
import com.care.root.qnaBoard.dto.QnaBoardRepDTO;

public interface QnaBoardMapper {

	/*public int writeSave(QnaBoardDTO dto);*/

	public List<QnaBoardDTO> qnaBoard();

	public void writeSave(QnaBoardDTO dto);

	public QnaBoardDTO qnaContentView(int num);

	public void upHit(int num);

	public int modify(QnaBoardDTO dto);

	public List<QnaBoardRepDTO> getRepList(int write_group);

	public void addReply(QnaBoardRepDTO dto);

	public int selectBoardCount();

	public int delete(int num);

}
