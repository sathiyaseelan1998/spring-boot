package com.myWebApp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.myWebApp.bo.EmployeeBo;
import com.myWebApp.dao.EmployeeDao;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeDao dao;
	
	@RequestMapping("index")
	public String home() {
		
		return "index.jsp";
		
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
