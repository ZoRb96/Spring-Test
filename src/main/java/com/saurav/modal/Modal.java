package com.saurav.modal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Modal {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int empId;
	private String empName;
	private int empPhno;
	private String empEmailString;

	public Modal(int empId, String empName, int empPhno, String empEmailString) {
		super();
		this.empId = empId;
		this.empName = empName;
		this.empPhno = empPhno;
		this.empEmailString = empEmailString;
	}

	public Modal() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public int getEmpPhno() {
		return empPhno;
	}

	public void setEmpPhno(int empPhno) {
		this.empPhno = empPhno;
	}

	public String getEmpEmailString() {
		return empEmailString;
	}

	public void setEmpEmailString(String empEmailString) {
		this.empEmailString = empEmailString;
	}

}
