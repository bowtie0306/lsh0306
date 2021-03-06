package kr.ac.kopo.bookshop.dao;

import java.util.List;

import kr.ac.kopo.bookshop.model.Review;

public interface ReviewDao {

	List<Review> list(int bookid);

	void add(Review item);

	Review item(int reviewid);

	void update(Review item);

	void delete(int reviewid, int custid);

}
