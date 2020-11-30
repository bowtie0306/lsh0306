package kr.ac.kopo.polycms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.kopo.polycms.model.PageContent;
import kr.ac.kopo.polycms.service.ContentService;

@Controller
@RequestMapping("/page/content")
public class ContentController {
	final String path = "content/";
	
	@Autowired
	ContentService service;
	
	@RequestMapping("/list")
	String list(Model model) {
		List<PageContent> list = service.list();
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	String add() {
		return path + "add";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	String add(PageContent item) {
		service.add(item);
		
		return "redirect:list";
	}
	
	@RequestMapping(value="/{contentId}/update", method=RequestMethod.GET)
	String update(@PathVariable int contentId, Model model) {
		PageContent item = service.item(contentId);
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@RequestMapping(value="/{contentId}/update", method=RequestMethod.POST)
	String update(@PathVariable int contentId, PageContent item) {
		item.setContentId(contentId);
		
		service.update(item);
		
		return "redirect:../list";
	}
	
	@RequestMapping("/{contentId}/delete")
	String delete(@PathVariable int contentId) {
		service.delete(contentId);
		
		return "redirect:../list";
	}
}
