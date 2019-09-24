package com.university.reps;

import org.springframework.data.jpa.repository.JpaRepository;

import com.university.jpa.Status;

public interface StatusRepository extends JpaRepository<Status, Integer> {

}
