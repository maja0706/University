package com.university.ctrls;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.core.io.Resource;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.university.jpa.Student;
import com.university.reps.StudentRepository;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.JasperRunManager;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

@Api(tags = { "Report operations" })
@RestController
public class ReportController {

	@Autowired
	private StudentRepository studentRepository;

	@Autowired
	private ApplicationContext applicationContext;

	@ApiOperation(value = "Returns pdf report of assurance for student", notes = "To download pdf document from browser go to defined url: http://localhost:8081/assurancePdf/{studentId}")
	@GetMapping( "/assurancePdf/{studentId}")
	public void getStudentsPdf(@PathVariable Integer studentId, HttpServletResponse response) {
		try {
			Optional<Student> student = studentRepository.findById(studentId);
			Student s = student.get();
			List<Student> listaStudenata = new ArrayList<Student>();
			listaStudenata.add(s);

			Resource resource = applicationContext.getResource("classpath:/reports/assurance.jrxml");
			JasperReport jasperReposrt = JasperCompileManager.compileReport(resource.getInputStream());
			JRBeanCollectionDataSource dataSource = new JRBeanCollectionDataSource(listaStudenata);

			generateReportPDF(response, jasperReposrt, dataSource, null);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@ApiOperation(value = "Returns pdf for students belongs to a department with a id that is passed as a path variable", notes = "To download pdf document from browser go to defined url: http://localhost:8081/studentsForDepartmentPdf/{departmentId}")
	@GetMapping(value = "/studentsForDepartmentPdf/{departmentId}", produces = MediaType.APPLICATION_PDF_VALUE)
	public void getStudentsForDepartmentPdf(@PathVariable("departmentId") Integer id, HttpServletResponse response) {
		try {
			List<Student> students = studentRepository.findByDepartmentId(id);

			Resource resource = applicationContext.getResource("classpath:/reports/studentsForDepartmentReport.jrxml");
			JasperReport jasperReport = JasperCompileManager.compileReport(resource.getInputStream());
			JRBeanCollectionDataSource dataSource = new JRBeanCollectionDataSource(students);

			generateReportPDF(response, jasperReport, dataSource, null);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	private void generateReportPDF(HttpServletResponse resp, JasperReport jasperReport, JRDataSource dataSource,
			Map<String, Object> params) throws Exception {
		byte[] bytes = null;
		bytes = JasperRunManager.runReportToPdf(jasperReport, params, dataSource);
		resp.reset();
		resp.resetBuffer();
		resp.setContentType("application/pdf");
		resp.setContentLength(bytes.length);
		ServletOutputStream ouputStream = resp.getOutputStream();
		ouputStream.write(bytes, 0, bytes.length);
		ouputStream.flush();
		ouputStream.close();
	}

}
