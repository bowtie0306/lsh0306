package kr.ac.kopo.polycms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.polycms.dao.PageDao;
import kr.ac.kopo.polycms.model.Page;
import kr.ac.kopo.polycms.util.Pager;

@Service
public class PageServiceImpl implements PageService {

	@Autowired
	PageDao dao;
	
	@Override
	public List<Page> list(Pager pager) {
		
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	public void add(Page item) {
		dao.add(item);
	}

	@Override
	public Page item(String uri) {
		return dao.item(uri);
	}

	@Override
	public void update(Page item) {
		dao.update(item);
	}

	@Override
	public void delete(String uri) {
		dao.delete(uri);
	}
}
