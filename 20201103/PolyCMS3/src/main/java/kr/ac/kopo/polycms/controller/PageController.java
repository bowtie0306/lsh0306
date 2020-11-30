package kr.ac.kopo.polycms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.kopo.polycms.model.Page;
import kr.ac.kopo.polycms.service.PageService;
import kr.ac.kopo.polycms.util.Pager;

@Controller
@RequestMapping("/page")
public class PageController {
	final String path = "page/";

	@Autowired
	PageService service;
	
	@RequestMapping("/list")
	String list(Model model, Pager pager) {
		List<Page> list = service.list(pager);
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	String add() {
		return path + "add";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	String add(Page item) {
		service.add(item);
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	String update(String uri,Model model) {
		Page item = service.item(uri);
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@RequestMapping(value="/update", method = RequestMethod.POST)
	String update(Page item) {
		service.update(item);
		
		return "redirect:list";
	}
	
	@RequestMapping("/delete")
	String delete(String uri) {
		service.delete(uri);
		
		return "redirect:list";
	}
	
}













