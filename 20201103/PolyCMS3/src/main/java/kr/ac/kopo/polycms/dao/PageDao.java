package kr.ac.kopo.polycms.dao;

import java.util.List;

import kr.ac.kopo.polycms.model.Page;
import kr.ac.kopo.polycms.util.Pager;

public interface PageDao {

	int total(Pager pager);

	List<Page> list(Pager pager);

	void add(Page item);

	void update(Page item);

	Page item(String uri);

	void delete(String uri);

}
