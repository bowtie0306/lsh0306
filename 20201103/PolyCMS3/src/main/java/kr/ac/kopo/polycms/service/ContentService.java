package kr.ac.kopo.polycms.service;

import java.util.List;

import kr.ac.kopo.polycms.model.PageContent;

public interface ContentService {

	List<PageContent> list();

	void add(PageContent item);

	PageContent item(int contentId);

	void update(PageContent item);

	void delete(int contentId);

	List<PageContent> list(String uri);

}
