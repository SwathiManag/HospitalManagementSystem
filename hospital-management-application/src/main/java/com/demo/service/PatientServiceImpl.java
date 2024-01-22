package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.PatientDao;
import com.demo.model.Patient;

@Service
public class PatientServiceImpl implements PatientService {
	
	@Autowired
	private PatientDao patientDao;

	@Override
	@Transactional
	public List<Patient> getPatients() {
		return patientDao.getPatients();
	}

	@Override
	@Transactional
	public Patient getPatientById(int id) {
		return patientDao.getPatientById(id);
	}

	@Override
	@Transactional
	public Patient getPatientByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public void addPatient(Patient patient) {
		patientDao.addPatient(patient);
	}

	@Override
	@Transactional
	public void deletePatient(int id) {
		patientDao.deletePatient(id);
	}

	@Override
	@Transactional
	public void updatePatient(Patient patient) {
		// TODO Auto-generated method stub
		
	}

}
