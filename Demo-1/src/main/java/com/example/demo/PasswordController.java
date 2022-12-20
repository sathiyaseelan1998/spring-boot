package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PasswordController {
	@Autowired
	PasswordDao passworDao;
	
	@RequestMapping("pass")
	public String pass() {
		return "password.jsp";
	}
	@RequestMapping("password")
	public String password(PasswordBo bo,Model model) {
		String pass=bo.getPassword();
		int upper=0;
		int lower=0;
		int number=0;
		int special=0;
		if(!(pass.length()>=4 && pass.length()<=8)) {
			model.addAttribute("msg", "password shoud be 4 to 8 character");
			return "password.jsp";
		}
		for(int i=0;i<pass.length();i++) {
			if(pass.charAt(i)>='A' && pass.charAt(i)<='Z') {
				upper++;
			}
			else if(pass.charAt(i)>='a' && pass.charAt(i)<='z') {
				lower++;
			}
			else if(pass.charAt(i)>='0' && pass.charAt(i)<='9') {
				number++;
			}
			else if((pass.charAt(i)>=58 && pass.charAt(i)<=64) ||(pass.charAt(i)>=33 && pass.charAt(i)<=47)||
					(pass.charAt(i)>=94 && pass.charAt(i)<=96) || (pass.charAt(i)>=123 && pass.charAt(i)<=126)) {
				special++;
			}
		}
		if(upper==0) {
			model.addAttribute("msg", "Atleast add one upper case");
		}
		else if(lower==0) {
			model.addAttribute("msg", "Atleast add one lower case");
		}
		else if(number==0) {
			model.addAttribute("msg", "Atleast add one Number");
		}
		else if(special==0) {
			model.addAttribute("msg", "Atleast add one Special character");
		}
		else {
			passworDao.save(bo);
			model.addAttribute("msg", "Password save successfully");
		}
		return "password.jsp";
	}

}
