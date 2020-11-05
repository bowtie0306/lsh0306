package kr.ac.kopo.polycms.dao;

import java.util.List;

import kr.ac.kopo.polycms.model.Article;
import kr.ac.kopo.polycms.util.Pager;

public interface ArticleDao {

	void add(Article item);

	Article item(int boardId, int articleId);

	void update(Article item);

	void delete(int boardId, int articleId);

	List<Article> list(int boardId, Pager pager);

	int total(int boardId, Pager pager);

}
