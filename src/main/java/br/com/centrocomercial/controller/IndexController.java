package br.com.centrocomercial.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

	@GetMapping(value = { "/", "index", "" })
	public String index() {
		

		System.out.println("acesso ao site: " + Calendar.getInstance().getTime()); //2016/11/16 12:08:43
		
		return "index";
	}

	@GetMapping("/teste")
	public String teste() {
		return "index";
	}

}
