/*
 * package com.myWebApp.controller;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.servlet.ModelAndView;
 * 
 * import com.myWebApp.bo.EmployeeBo;
 * 
 * 
 * @Controller public class EmployeeController {
 * 
 * @Autowired EmployeeDao dao;
 * 
 * @RequestMapping("index") public String home() {
 * 
 * return "index.jsp";
 * 
 * }
 * 
 * @RequestMapping("insert") public ModelAndView insert(EmployeeBo bo) {
 * ModelAndView mv=new ModelAndView(); dao.save(bo); mv.addObject("name", bo);
 * mv.setViewName("insert.jsp"); return mv;
 * 
 * 
 * 
 <!--  <dependency>
    <groupId>javax.servlet</groupId>
    <artifactId>jstl</artifactId>
    <version>1.2</version>
</dependency> --!>

		 <!-- https://mvnrepository.com/artifact/jakarta.servlet.jsp.jstl/jakarta.servlet.jsp.jstl-api -->
<dependency>
    <groupId>jakarta.servlet.jsp.jstl</groupId>
    <artifactId>jakarta.servlet.jsp.jstl-api</artifactId>
    </dependency>
 * }
 * 
 * }
 */