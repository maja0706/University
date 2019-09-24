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

import com.university.jpa.Faculty;
import com.university.reps.FacultyRepository;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Api(tags = { "Faculty CRUD operations" })
@RequestMapping("faculty")
@RestController
public class FacultyController {

	@Autowired
	FacultyRepository facultyRepository;

	@ApiOperation("Returns all faculties from database")
	@GetMapping
	public List<Faculty> findAll() {
		return facultyRepository.findAll();
	}

	@ApiOperation("Returns one faculty with defined ID")
	@GetMapping("{id}")
	public Faculty findOne(@PathVariable Integer id) {
		return facultyRepository.getOne(id);
	}

	@ApiOperation("Insert faculty in database")
	@PostMapping
	@CrossOrigin
	public ResponseEntity<Faculty> insertOne(@RequestBody Faculty faculty) {
		facultyRepository.save(faculty);
		return new ResponseEntity<>(HttpStatus.OK);

	}

	@ApiOperation("Update faculty in database")
	@PutMapping
	@CrossOrigin
	public ResponseEntity<Faculty> updateOne(@RequestBody Faculty faculty) {
		if (facultyRepository.existsById(faculty.getId())) {
			facultyRepository.save(faculty);
			return new ResponseEntity<>(HttpStatus.OK);
		} else {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
	}

	@CrossOrigin
	@ApiOperation("Delete faculty from database")
	@DeleteMapping("{id}")
	public ResponseEntity<Faculty> deleteOne(@PathVariable Integer id) {
		if (facultyRepository.existsById(id)) {
			facultyRepository.deleteById(id);
			return new ResponseEntity<>(HttpStatus.OK);
		} else {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
	}

}
