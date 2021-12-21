package com.care.root.qnaBoard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.root.mybatis.qnaBoard.QnaBoardMapper;
import com.care.root.qnaBoard.dto.QnaBoardDTO;
import com.care.root.qnaBoard.dto.QnaBoardRepDTO;

@Service
public class QnaBoardServiceImpl implements QnaBoardService {
	@Autowired
	QnaBoardMapper mapper;

	@Override
	public void boardList(Model model, int num) {
		int pageLetter = 13;
		int allCount = mapper.selectBoardCount();
		int repeat = allCount / pageLetter;
		if (allCount % pageLetter != 0) {
			repeat += 1;
		}
		int end = num * pageLetter;
		int start = end + 1 - pageLetter;
		model.addAttribute("repeat", repeat);
		model.addAttribute("boardList", mapper.boardList(start, end));
		model.addAttribute("boardAllList", mapper.boardAllList());
		
	}

	@Override
	public void contentView(int num, Model model) {
		model.addAttribute("personalData", mapper.contentView(num));
		upHit(num);

	}

	private void upHit(int num) {
		mapper.upHit(num);
	}

	@Override
	public int writeSave(QnaBoardDTO dto) {
		int result = mapper.writeSave(dto);
		return result;
	}

	@Override
	public int modify_save(QnaBoardDTO dto) {
		int result = mapper.modify_save(dto);
		return result;
	}

	@Override
	public int delete(int num) {
		int result = mapper.delete(num);
		return result;
	}

	public void addReply(QnaBoardRepDTO dto) {
		mapper.addReply(dto);
		mapper.answerupdate(dto);
	}

	@Override
	public List<QnaBoardRepDTO> getReplyList(int write_group) {
		return mapper.getRepList(write_group);
	}

}
