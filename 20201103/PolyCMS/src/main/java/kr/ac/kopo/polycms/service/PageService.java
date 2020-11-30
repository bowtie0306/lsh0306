package kr.ac.kopo.polycms.service;

import java.util.List;

import kr.ac.kopo.polycms.model.Page;
import kr.ac.kopo.polycms.util.Pager;

public interface PageService {

	List<Page> list(Pager pager);

	void add(Page item);

	Page item(String uri);

	void update(Page item);

	void delete(String uri);

}