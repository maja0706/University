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

import com.university.jpa.Status;
import com.university.reps.StatusRepository;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Api(tags = {"Status CRUD operations"})
@RestController
@RequestMapping("status")
public class StatusController {
	
	@Autowired
	StatusRepository statusRepository;
	
	@ApiOperation("Returns all status from database")
	@GetMapping
	public List<Status> findAll(){
		return statusRepository.findAll();
	}
	
	@ApiOperation("Returns one status with defined ID")
	@GetMapping ("{id}")
	public Status findOne(@PathVariable Integer id) {
		return statusRepository.getOne(id);
	}
	
	@ApiOperation("Insert status in database")
	@PostMapping
	@CrossOrigin
	public ResponseEntity<Status> insertOne(@RequestBody Status status) {
		statusRepository.save(status);
		return new ResponseEntity<>(HttpStatus.OK);
	}
	
	@ApiOperation("Update status in database")
	@PutMapping
	@CrossOrigin
	public ResponseEntity<Status> updateOne(@RequestBody Status status) {
		if(statusRepository.existsById(status.getId())) {
			statusRepository.save(status);
			return new ResponseEntity<>(HttpStatus.OK);}
		else {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		
	}
	
	@ApiOperation("Delete status from database")
	@DeleteMapping("{id}")
	@CrossOrigin
	public ResponseEntity<Status> deleteOne(@PathVariable Integer id) {
		if(statusRepository.existsById(id))
		{
			statusRepository.deleteById(id);
			return new ResponseEntity<>(HttpStatus.OK);
		}
		else {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
	}

}
