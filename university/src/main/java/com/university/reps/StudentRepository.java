package com.university.reps;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.university.jpa.Status;
import com.university.jpa.Student;

public interface StudentRepository extends JpaRepository<Student, Integer> {

	@Query(value = "SELECT * FROM Student WHERE status_id=2", nativeQuery = true)
	List<Student> findAllSelfFinancingStudents();

	List<Student> findByStatus(Status status);

	List<Student> findByLastNameIgnoreCaseOrderById(String lastName);

	List<Student> findByDepartmentId(Integer id);
}
