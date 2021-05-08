package com.example.demo.repository;



import org.springframework.data.jpa.repository.JpaRepository;


import com.example.demo.expense.Expenses;

public interface Repository extends JpaRepository<Expenses, Integer> {
	
	
}
