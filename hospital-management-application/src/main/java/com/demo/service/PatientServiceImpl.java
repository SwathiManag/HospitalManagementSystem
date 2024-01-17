package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.PatientDao;
import com.demo.model.Patient;

@Service
public class PatientServiceImpl implements PatientService {
	
	@Autowired
	private PatientDao patientDao;

	@Override
	public List<Patient> getPatients() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Patient getPatientById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Patient getPatientByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addPatient(Patient patient) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deletePatient(int id) {
		// TODO Auto-generated method stub
		
	}

}
