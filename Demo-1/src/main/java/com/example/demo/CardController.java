package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CardController {
	@Autowired
	CardDao dao;
	@RequestMapping("show")
	public String show() {
		return "card.jsp";
		
	}
	@RequestMapping("card")
	public String card(CardBo card,Model model) {
		//4137894711755904
		String c=card.getCardNo();
		int length=c.length();
		if(!(length==16)) {
			model.addAttribute("msg", "card length should be 16 successfully");
			return "card.jsp";
		}
		int sum=0;
		int[] cardNo=new int[c.length()];
		for(int i=0;i<c.length();i++) {
			cardNo[i]=Character.getNumericValue(c.charAt(i));
		}
		for(int i=0;i<cardNo.length;i++) {
			if(i%2==0) {
				cardNo[i]=cardNo[i]*2;
			}
			if(cardNo[i]>9) {
				cardNo[i]=(cardNo[i]%10)+(cardNo[i]/10);
			}
			sum=sum+cardNo[i];
		}
		if(sum%10==0) {
			dao.save(card);
			model.addAttribute("msg", "card save successfully");
			return "card.jsp";
		}
		
		model.addAttribute("msg", "Invalid Card No");
		return "card.jsp";
		
	}

}
