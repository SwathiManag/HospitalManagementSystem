package com.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.service.PatientService;


@Controller
@RequestMapping("/patient")
public class PatientController {
	@Autowired
	private PatientService patientService;
	
}
