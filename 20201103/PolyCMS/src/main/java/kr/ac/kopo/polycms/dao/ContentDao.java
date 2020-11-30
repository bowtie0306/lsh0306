package kr.ac.kopo.polycms.dao;

import java.util.List;

import kr.ac.kopo.polycms.model.PageContent;

public interface ContentDao {

	List<PageContent> list();

	void add(PageContent item);

	PageContent item(int contentId);

	void update(PageContent item);

	void delete(int contentId);

	List<PageContent> list(String uri);

}
