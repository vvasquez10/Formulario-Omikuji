package com.daxos.omikuji.controllers;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/omikuji")

public class ControladorOmikuji {
	
	@RequestMapping( value = "", method = RequestMethod.GET )
	public String despliegaFormulario() {
		
		return "index.jsp";			
	}	
	
	@RequestMapping( value = "/processOmikuji", method = RequestMethod.POST )
	public String procesaFormulario(HttpSession session, @RequestParam( value="number" ) String number,
												  @RequestParam( value="city" ) String city,
												  @RequestParam( value="person" ) String person,
												  @RequestParam( value="hobby" ) String hobby,
												  @RequestParam( value="thing" ) String thing,
												  @RequestParam( value="comment" ) String comment) {
		session.setAttribute( "number", number );
		session.setAttribute( "city", city );
		session.setAttribute( "person", person );
		session.setAttribute( "hobby", hobby );
		session.setAttribute( "thing", thing );
		session.setAttribute( "comment", comment );
				
		return "redirect:/omikuji/show";		
	}	
	
	@RequestMapping( value = "/show", method = RequestMethod.GET )
	public String despliegaResultado( Model model, HttpSession session ) {
		
		return "result.jsp";			
	}	
}
