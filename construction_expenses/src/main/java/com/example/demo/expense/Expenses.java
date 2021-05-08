package com.example.demo.expense;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Expenses {
	@Id
	@GeneratedValue
	private int no;
	private String name;
	private Long expense;
	private String quantity;
	public String getName() {
		return name;
	}
	public int getNo() {
		return no;
	}
	
	public void setNo(int no) {
		this.no = no;
	}
	public Long getExpense() {
		return expense;
	}
	public void setExpense(Long expense) {
		this.expense = expense;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "Expenses [no=" + no + ", name=" + name + ", expense=" + expense + ", quantity=" + quantity + "]";
	}

	
	

}
