package kr.ac.kopo.polycms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.polycms.model.Article;
import kr.ac.kopo.polycms.model.PageContent;
import kr.ac.kopo.polycms.service.ArticleService;
import kr.ac.kopo.polycms.service.ContentService;
import kr.ac.kopo.polycms.util.Pager;

@Controller
@RequestMapping("/")
public class RootController {
	
	@Autowired
	ArticleService articleService;
	
	@Autowired
	ContentService contentService;
	
	@RequestMapping("/")
	String index(Model model) {
		Pager pager = new Pager();
		pager.setPerPage(5);
		
		List<PageContent> list = contentService.list("/");
		for(PageContent item : list) {
			int boardId = item.getContentKey();
			
			List<Article> board = articleService.list(boardId, pager);
			
			item.setBoard(board);
		}
		
		model.addAttribute("list", list);
		
		return "index";

	}

}
