package com.care.root.mybatis.qnaBoard;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.ui.Model;

import com.care.root.qnaBoard.dto.QnaBoardDTO;

public interface QnaBoardMapper {
	public List<QnaBoardDTO> boardList(@Param("s")int start,@Param("e") int end);
	public int writeSave(QnaBoardDTO dto);
	public int selectBoardCount();
	public List<QnaBoardDTO> boardAllList();
	public void upHit(int num);
	public QnaBoardDTO contentView(int num);
	public int modifysave(QnaBoardDTO dto);
}
