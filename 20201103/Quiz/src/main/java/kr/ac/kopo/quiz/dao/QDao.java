package kr.ac.kopo.quiz.dao;

import java.util.List;

import kr.ac.kopo.quiz.model.Q;
import kr.ac.kopo.quiz.util.Pager;

public interface QDao {

	int total(Pager pager);

	List<Q> list(Pager pager);

	void add(Q item);

	Q item(int quizId);

	void update(Q item);

	void delete(int quizid);

}
