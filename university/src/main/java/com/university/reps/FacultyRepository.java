package com.university.reps;

import org.springframework.data.jpa.repository.JpaRepository;

import com.university.jpa.Faculty;

public interface FacultyRepository extends JpaRepository<Faculty, Integer> {

}
