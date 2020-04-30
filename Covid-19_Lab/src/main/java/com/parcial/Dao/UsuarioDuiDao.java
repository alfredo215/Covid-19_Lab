package com.parcial.Dao;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import com.parcial.model.Persona;

public class UsuarioDuiDao {
	
	public List<Persona> ingresoDui(Persona per) {
		List<Persona> personaD= new ArrayList<>();
		System.out.println(per);
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Covid-19_Lab");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			personaD = em.createQuery("from Persona as D where D.dui='"+per.getDui()+"'").getResultList();

			em.getTransaction().commit();
			
		} catch (Exception e) {
			
			System.out.println(e+"Error Dao");
		}
		
		
		return personaD;
		
	}
	
	public List<Persona> muestraDui() {
		List<Persona> personaD= new ArrayList();
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Covid-19_Lab");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			personaD = em.createQuery("from Persona").getResultList();
			em.getTransaction().commit();
			
		} catch (Exception e) {
			
			System.out.println(e+"Error Dao muestraDui");
		}
		
		
		return personaD;
		
	}
	
	
	public List<Persona> registrarD () {
		List<Persona> ingresarD= new ArrayList();
		EntityManager em;
		EntityManagerFactory emf;
		
		emf = Persistence.createEntityManagerFactory("Covid-19_Lab");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			ingresarD = em.createQuery("from Persona").getResultList();
			em.getTransaction().commit();
			
		} catch (Exception e) {
			System.out.println(e+"Error Ingresar Dui");
		}
		
		
		
		
		return ingresarD;
		
	}
	

	
	
	public void agregarDatos(Persona pe) {
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("Covid-19_Lab");
		em = emf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(pe);
		em.flush();
		em.getTransaction().commit();
		
	}
	
	public void actualizarDatos(Persona pe) {
		
		EntityManager em;
		EntityManagerFactory emf;
		emf= Persistence.createEntityManagerFactory("Covid-19_Lab");
		em=emf.createEntityManager();
		pe.getId_Persona();
		pe.getNombre();
		pe.getDui();
		em.getTransaction().begin();
		em.merge(pe);
		em.flush();
		em.getTransaction().commit();
		
	}
	
	
	public void eliminarDatos(Persona pe) {
		EntityManager em;
		EntityManagerFactory emf;
		emf= Persistence.createEntityManagerFactory("Covid-19_Lab");
		em=emf.createEntityManager();
		pe=em.getReference(Persona.class, pe.getId_Persona());
		em.getTransaction().begin();
		em.remove(pe);
		em.flush();
		em.getTransaction().commit();
		
	}
	
	
}
