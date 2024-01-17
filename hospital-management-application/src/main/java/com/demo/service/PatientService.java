package com.demo.service;

import java.util.List;

import com.demo.model.Patient;

public interface PatientService {
	public Patient getPatientById(int id);
	public Patient getPatientByName(String name);
	public void addPatient(Patient patient);
	public void deletePatient(int id);
	public List<Patient> getPatients();
}
