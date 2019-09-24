package com.university.ctrls;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.university.jpa.Department;
import com.university.reps.DepartmentRepository;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Api(tags = { "Department CRUD operations" })
@RestController
@RequestMapping("department")
public class DepartmentController {

	@Autowired
	DepartmentRepository departmentRepository;

	@ApiOperation("Returns all departments from database")
	@GetMapping
	public List<Department> findAll() {
		return departmentRepository.findAll();
	}

	@ApiOperation("Returns one department with defined ID")
	@GetMapping("{id}")
	public Department findOne(@PathVariable Integer id) {
		return departmentRepository.getOne(id);
	}

	@ApiOperation("Insert department in database")
	@PostMapping
	@CrossOrigin
	public ResponseEntity<Department> insertOne(@RequestBody Department department) {
		departmentRepository.save(department);
		return new ResponseEntity<>(HttpStatus.OK);
	}

	@ApiOperation("Update department in database")
	@PutMapping
	@CrossOrigin
	public ResponseEntity<Department> updateOne(@RequestBody Department department) {
		if (departmentRepository.existsById(department.getId())) {
			departmentRepository.save(department);
			return new ResponseEntity<>(HttpStatus.OK);
		} else {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
	}

	@ApiOperation("Delete department from database")
	@DeleteMapping("{id}")
	@CrossOrigin
	public ResponseEntity<Department> deleteOne(@PathVariable Integer id) {
		if (departmentRepository.existsById(id)) {
			departmentRepository.deleteById(id);
			return new ResponseEntity<>(HttpStatus.OK);
		} else {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
	}

}
