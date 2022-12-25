package com.example.myWebApp;

import java.util.ArrayList;
import java.util.List;

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
	@RequestMapping("view")
	public ModelAndView viewAllData() {
		ModelAndView mv=new ModelAndView();
		List<EmployeeBo> list=new ArrayList<EmployeeBo>();
		list=(List<EmployeeBo>) dao.findAll();
		mv.addObject("list", list);
		for(EmployeeBo e:list) {
			System.out.println(e.getId()+"==="+e.getName());
		}
		mv.setViewName("view.jsp");
		return mv;
	}

}
