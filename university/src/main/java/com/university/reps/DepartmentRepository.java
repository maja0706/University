package com.university.reps;

import org.springframework.data.jpa.repository.JpaRepository;

import com.university.jpa.Department;

public interface DepartmentRepository extends JpaRepository<Department, Integer> {

}
