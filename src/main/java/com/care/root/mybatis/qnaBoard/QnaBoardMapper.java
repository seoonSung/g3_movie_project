package com.care.root.mybatis.qnaBoard;





import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.care.root.qnaBoard.dto.QnaBoardDTO;
import com.care.root.qnaBoard.dto.QnaBoardRepDTO;

public interface QnaBoardMapper {
	public List<QnaBoardDTO> boardList(@Param("s")int start,@Param("e") int end);
	public int selectBoardCount();
	public List<QnaBoardDTO> boardAllList();
	public void upHit(@Param("num")int num);
	public QnaBoardDTO contentView(int num);
	public int modify_save(QnaBoardDTO dto);
	public int writeSave(QnaBoardDTO dto);
	public int delete(@Param("num")int num);
	public void addReply(QnaBoardRepDTO dto);
	public List<QnaBoardRepDTO> getRepList(int write_group);
	
	
	
	
}
