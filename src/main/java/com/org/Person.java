package com.org;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl;

@Entity
@Table(name = "Personshibnew")
public class Person   {
	@Id
	private int PersonID;
	@Column
	private String firstname;
	@Column
	private String lastname;
	@Column
	private String city;


	public Person() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getPersonID() {
		return PersonID;
	}

	public void setPersonID(int personID) {
		PersonID = personID;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}


}