package com.lenovo.springdemo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

}
