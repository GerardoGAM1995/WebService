package com.microsoft.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ControladorEsd {
	
	@GetMapping("/controlador")
	public String controlador()
	{
		return "Ok";
	}
}
