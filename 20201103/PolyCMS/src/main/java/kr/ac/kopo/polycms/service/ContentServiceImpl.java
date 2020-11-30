package kr.ac.kopo.polycms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.polycms.dao.ContentDao;
import kr.ac.kopo.polycms.model.PageContent;

@Service
public class ContentServiceImpl implements ContentService {

	@Autowired
	ContentDao dao;
	
	@Override
	public List<PageContent> list() {
		return dao.list();
	}

	@Override
	public void add(PageContent item) {
		dao.add(item);
	}

	@Override
	public PageContent item(int contentId) {
		return dao.item(contentId);
	}

	@Override
	public void update(PageContent item) {
		dao.update(item);
	}

	@Override
	public void delete(int contentId) {
		dao.delete(contentId);
	}

	@Override
	public List<PageContent> list(String uri) {
		return dao.list(uri);
	}

}
