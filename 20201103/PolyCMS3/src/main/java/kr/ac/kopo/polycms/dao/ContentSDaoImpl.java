package kr.ac.kopo.polycms.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.polycms.model.PageContent;

@Repository
public class ContentSDaoImpl implements ContentDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<PageContent> list() {
		return sql.selectList("content.list");
	}

	@Override
	public void add(PageContent item) {
		sql.insert("content.add", item);
	}

	@Override
	public PageContent item(int contentId) {
		return sql.selectOne("content.item", contentId);
	}

	@Override
	public void update(PageContent item) {
		sql.update("content.update", item);
	}

	@Override
	public void delete(int contentId) {
		sql.delete("content.delete", contentId);
	}

	@Override
	public List<PageContent> list(String uri) {
		return sql.selectList("content.list_uri", uri);
	}

}
