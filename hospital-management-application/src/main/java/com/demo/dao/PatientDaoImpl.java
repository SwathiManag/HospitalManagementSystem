package com.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.model.Patient;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

@Repository
public class PatientDaoImpl implements PatientDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Patient> getPatients() {
		Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery < Patient > cq = cb.createQuery(Patient.class);
        Root < Patient > root = cq.from(Patient.class);
        cq.select(root);
        Query query = session.createQuery(cq);
        return query.getResultList();
	}

	@Override
	public Patient getPatientById(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		Patient patient = currentSession.get(Patient.class, id);
        return patient;
	}

	@Override
	public Patient getPatientByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addPatient(Patient patient) {
		Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(patient);
	}

	@Override
	public void deletePatient(int id) {
		Session session = sessionFactory.getCurrentSession();
        Patient patient = session.byId(Patient.class).load(id);
        session.delete(patient);
	}

	@Override
	public void updatePatient(Patient patient) {
		// TODO Auto-generated method stub
		
	}

}
