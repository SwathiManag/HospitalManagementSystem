package com.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.model.Patient;
import com.demo.service.PatientService;

@Controller
@RequestMapping("/patient")
public class PatientController {
	@Autowired
	private PatientService patientService;

	@GetMapping("/list")
	public String getPatients(Model theModel) {
		List<Patient> patientsList = patientService.getPatients();
		theModel.addAttribute("patients", patientsList);
		return "list-patients";
	}

	@GetMapping("/showForm")
	public String showFormForAdd(Model theModel) {
		Patient thePatient = new Patient();
		theModel.addAttribute("patient", thePatient);
		return "patient-form";
	}

	@GetMapping("/updateForm")
	public String showFormForUpdate(@RequestParam("PatientId") int theId, Model theModel) {
		Patient thePatient = patientService.getPatientById(theId);
		theModel.addAttribute("customer", thePatient);
		return "patient-form";
	}

	public Patient getPatientById(int id) {
		Patient patient = patientService.getPatientById(id);
		return patient;
	}

	public Patient getPatientByName(String name) {
		return null;

	}

	public String addPatient(Patient patient) {
		patientService.addPatient(patient);
        return "redirect:/patient/list";
	}

	public void updatePatient(Patient patient) {

	}

	@GetMapping("/delete")
	public String deletePatient(@RequestParam("patientId") int theId) {
		patientService.deletePatient(theId);
		return "redirect:/patient/list";
	}
}
