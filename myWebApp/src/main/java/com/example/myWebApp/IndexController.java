package com.example.myWebApp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	@RequestMapping("/hhh")
	public String index() {
		System.out.println("Home Page");
		return "insert.jsp";
	}
	@RequestMapping("/one")
	public String one() {
		System.out.println("One Page");
		return "one.jsp";
	}
	
}
