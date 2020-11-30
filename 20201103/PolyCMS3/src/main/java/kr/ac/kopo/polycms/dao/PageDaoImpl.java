package kr.ac.kopo.polycms.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.polycms.model.Page;
import kr.ac.kopo.polycms.util.Pager;

@Repository
public class PageDaoImpl implements PageDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public int total(Pager pager) {
		return sql.selectOne("page.total", pager);
	}

	@Override
	public List<Page> list(Pager pager) {
		return sql.selectList("page.list", pager);
	}

	@Override
	public void add(Page item) {
		sql.insert("page.add", item);
	}
	@Override
	public Page item(String uri) {
		return sql.selectOne("page.item", uri);
	}

	@Override
	public void update(Page item) {
		sql.update("page.update", item);
	}
	@Override
	public void delete(String uri) {
		sql.delete("page.delete", uri);
	}

}
