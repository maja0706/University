package com.university.ctrls;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.university.jpa.Student;
import com.university.reps.StudentRepository;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Api(tags = { "Student CRUD operations" })
@RestController
@RequestMapping("student")

public class StudentController {

	@Autowired
	StudentRepository studentRepository;
	@Autowired
	JdbcTemplate jdbcTemplate;

	@ApiOperation("Returns all students from database")
	@GetMapping
	public List<Student> findAll() {
		return studentRepository.findAll();
	}

	@ApiOperation("Returns number of students with status budget")
	@GetMapping("budget")
	public List<Integer> findAllWithStatus1() {
		return jdbcTemplate.queryForList("SELECT count(*) FROM STUDENT WHERE status_id=1", Integer.class);
	}

	@ApiOperation("Returns all students with status self-financing")
	@GetMapping("selfFinancing")
	public List<Student> findAllWithStatus2() {
		return studentRepository.findAllSelfFinancingStudents();
	}

	@ApiOperation("Returns all students by last name")
	@GetMapping("lastName")
	public List<Student> findByLastName(String lastName) {
		return studentRepository.findByLastNameIgnoreCaseOrderById(lastName);
	}

	@ApiOperation("Returns all students by department")
	@GetMapping("department/{id}")
	public List<Student> findByDepartment(@PathVariable Integer id) {
		return studentRepository.findByDepartmentId(id);
	}

	@ApiOperation("Return one student with defined ID")
	@GetMapping("{id}")
	public Student findOne(@PathVariable Integer id) {
		return studentRepository.getOne(id);
	}

	@ApiOperation("Insert student in database")
	@PostMapping
	@CrossOrigin
	public ResponseEntity<Student> insertOne(@RequestBody Student student) {
		student.setIndexNumber(student.getIndexNumber() + "/2019");
		studentRepository.save(student);
		return new ResponseEntity<>(HttpStatus.OK);
	}

	@ApiOperation("Update student in database")
	@PutMapping
	@CrossOrigin
	public ResponseEntity<Student> updateOne(@RequestBody Student student) {
		if (studentRepository.existsById(student.getId())) {
			studentRepository.save(student);
			return new ResponseEntity<>(HttpStatus.OK);
		} else {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
	}

	@ApiOperation("Delete student from database")
	@DeleteMapping("{id}")
	@CrossOrigin
	public ResponseEntity<Student> deleteOne(@PathVariable Integer id) {
		if (studentRepository.existsById(id)) {
			studentRepository.deleteById(id);
			return new ResponseEntity<>(HttpStatus.OK);
		} else {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
	}

}
