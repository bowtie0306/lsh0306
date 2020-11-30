package kr.ac.kopo.polycms.dao;

import java.util.List;

import kr.ac.kopo.polycms.model.BoardMaster;

public interface BoardDao {

	void add(BoardMaster item);

	void createBoard(int board_id);

	BoardMaster item(int board_id);

	void update(BoardMaster item);

	void delete(int board_id);

	void removeBoard(int board_id);

	List<BoardMaster> list();

	void createSeq(int board_id);

	void createReply(int board_id);

	void createReplySeq(int boardId);

	void removeSeq(int board_id);

	void removeReply(int board_id);

	void removeReplySeq(int board_id);

}
