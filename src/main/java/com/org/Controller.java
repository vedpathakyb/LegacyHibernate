package com.org;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class Controller {
	private static SessionFactory sessionFactory;

// show data
	public static List<Person> getAllRecords() throws Exception {
		sessionFactory = (SessionFactory) new Configuration().configure("hibernate.cfg.xml")
				.addAnnotatedClass(Person.class).buildSessionFactory();
		List<Person> list = new ArrayList<Person>();

		Session session = sessionFactory.openSession();

		Transaction t = null;

		try {
			t = session.beginTransaction();
			java.util.List employees = session.createQuery("FROM Person").list();
			for (Iterator iterator = ((java.util.List) employees).iterator(); iterator.hasNext();) {
				Person employee = (Person) iterator.next();
				list.add(employee);
			}
			t.commit();

		} catch (Exception e) {
			// TODO: handle exception
			if (t != null)
				t.rollback();
			throw e;

		} finally {
			sessionFactory.close();
			session.close();
		}

		return list;
	}
//add data

	public static int insertData(int id, String firstName, String lastName, String city) throws Exception {
		sessionFactory = (SessionFactory) new Configuration().configure("hibernate.cfg.xml")
				.addAnnotatedClass(Person.class).buildSessionFactory();

		Session session = sessionFactory.openSession();
		Transaction t = null;

		try {
			Person p = new Person();

			t = session.beginTransaction();
			p.setPersonID(id);
			p.setFirstname(firstName);
			p.setLastname(lastName);
			p.setCity(city);
			session.save(p);
			t.commit();
			System.out.println("successfully saved");

			return 1;
		} catch (Exception e) {
			// TODO: handle exception
			if (t != null)
				t.rollback();
			throw e;

		} finally {
			sessionFactory.close();
			session.close();
		}
	}

//delete data

	public static boolean deleteData(int id) throws Exception {
		sessionFactory = (SessionFactory) new Configuration().configure("hibernate.cfg.xml")
				.addAnnotatedClass(Person.class).buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction t = null;
		try {

			t = session.beginTransaction();
			Person p = session.get(Person.class, id);
			session.delete(p);
			t.commit();
			System.out.println("successfully deleted!!");

			return true;
		} catch (Exception e) {
			// TODO: handle exception
			if (t != null)
				t.rollback();
			throw e;

		} finally {
			sessionFactory.close();
			session.close();
		}

	}

	// update a person details

	public static boolean updateData(int id, String firstName, String lastName, String newcity) throws Exception {
		sessionFactory = (SessionFactory) new Configuration().configure("hibernate.cfg.xml")
				.addAnnotatedClass(Person.class).buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction t = null;
		try {

			t = session.beginTransaction();
			Person p = session.get(Person.class, id);
			p.setFirstname(firstName);
			p.setLastname(lastName);
			p.setCity(newcity);

			session.update(p);
			t.commit();
			System.out.println("successfully updated!!");

			return true;
		} catch (Exception e) {
			// TODO: handle exception
			if (t != null)
				t.rollback();
			throw e;

		} finally {
			sessionFactory.close();
			session.close();
		}

	}

	// find the person object wrt id
	public static Person getData(int id) throws Exception {
		sessionFactory = (SessionFactory) new Configuration().configure("hibernate.cfg.xml")
				.addAnnotatedClass(Person.class).buildSessionFactory();
		Session session = sessionFactory.openSession();
		try {

			Person p = session.get(Person.class, id);

			sessionFactory.close();
			return p;
		} catch (Exception e) {
			// TODO: handle exception
			throw e;

		} finally {
			
			session.close();

		}

	}

}
