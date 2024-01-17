package com.demo.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.model.Patient;

@Repository
public class PatientDaoImpl implements PatientDao {
	
	@Autowired
	private SessionFactory sessionFactory;

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
