package com.lenovo.springdemo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloWorldController {
	
	@RequestMapping("/showForm")
	public String showFrom() {
		return "hello-world-from";
	}
	
	@RequestMapping("/processFrom")
	public String processForm() {
		return "helloworld";
	}
	@RequestMapping("/processFormVersionTwo")
	public String letsProcessFrom(HttpServletRequest request,Model model) {
		
		String name=request.getParameter("studentName");
		name=name.toUpperCase();
		
		String result="Yo!"+name;
		
		model.addAttribute("message",result);
		
		return "helloworld";
	}
	
	@RequestMapping("/processFormVersionThree")
	public String letsProcessFromVersionThree(@RequestParam("studentName")String name,Model model) {
		
		name=name.toUpperCase(); 
		
		String result="Yo! Hey my from friend"+name;
		
		model.addAttribute("message",result);
		
		return "helloworld";
	}

}
