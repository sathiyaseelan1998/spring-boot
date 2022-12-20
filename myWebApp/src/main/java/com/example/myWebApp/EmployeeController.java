package com.example.myWebApp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeDao dao;
	
	@RequestMapping("home")
	public String home() {
		
		return "insert.jsp";
	}
	@RequestMapping("insert")
	public ModelAndView insert(EmployeeBo bo) {
		ModelAndView mv=new ModelAndView();
		dao.save(bo);
		mv.addObject("name", bo);
		mv.setViewName("insert.jsp");
		return mv;
		
	}

}
