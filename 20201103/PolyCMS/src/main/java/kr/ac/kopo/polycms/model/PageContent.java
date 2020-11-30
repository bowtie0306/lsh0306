package kr.ac.kopo.polycms.model;

import java.util.List;

public class PageContent {
	int contentId;
	String uri;
	String contentName;
	String contentType;
	int contentKey;
	
	List<Article> board;
	
	public List<Article> getBoard() {
		return board;
	}
	public void setBoard(List<Article> board) {
		this.board = board;
	}
	public int getContentId() {
		return contentId;
	}
	public void setContentId(int contentId) {
		this.contentId = contentId;
	}
	public String getUri() {
		return uri;
	}
	public void setUri(String uri) {
		this.uri = uri;
	}
	public String getContentName() {
		return contentName;
	}
	public void setContentName(String contentName) {
		this.contentName = contentName;
	}
	public String getContentType() {
		return contentType;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	public int getContentKey() {
		return contentKey;
	}
	public void setContentKey(int contentKey) {
		this.contentKey = contentKey;
	}
	
}
