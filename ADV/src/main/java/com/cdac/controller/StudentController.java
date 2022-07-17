
package com.cdac.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cdac.entity.Student;
import com.cdac.exception.StudentServiceException;
import com.cdac.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	@RequestMapping(value = "/Student.cdac" ,method = RequestMethod.POST)
	public String StudentData(HttpServletRequest request, Map model) {
		Student student = new Student();
		student.setRollNo(request.getParameter("roll_no"));
		student.setName(request.getParameter("name"));
		student.setSurname(request.getParameter("surname"));
		student.setMotherName(request.getParameter("mother"));
		student.setPassingYear(Integer.parseInt(request.getParameter("passing_year")));
		student.setEnglishMark(Integer.parseInt(request.getParameter("english")));
		student.setMarathiMark(Integer.parseInt(request.getParameter("marathi")));
		student.setHindiMark(Integer.parseInt(request.getParameter("hindi")));
		student.setMathMark(Integer.parseInt(request.getParameter("math")));
		student.setScienceMark(Integer.parseInt(request.getParameter("science")));
		
		try {
			studentService.register(student);
			return "redirect:student.cdac";
		}
		catch(StudentServiceException e) {
			model.put("message", e.getMessage());
			return "Student.jsp";
		}
	}
	
	// Show the list of Student which is Available in Table
	@RequestMapping("/student.cdac")
	public String registeredStudent(Map<String,Object> model) {
		List<Student> list = studentService.regiStudent();
		model.put("listOfStudent", list);
		return "StudentData.jsp";
	}
	
	// Result Display.........................................................
	@RequestMapping(value = "/Result.cdac",method = RequestMethod.POST)
	public String ResultData(HttpServletRequest request, Map model) {
		Student student1 = new Student();
		student1.setRollNo(request.getParameter("roll_no"));
		student1.setMotherName(request.getParameter("mother"));
		try {
			model.put("resultOfStudent", studentService.resultPresent(student1));
			return "ResultDisplay.jsp";
		}
		catch(StudentServiceException e) {
			model.put("message", e.getMessage());
			return "Result.jsp";
		}
   }
	
//	Fetch Detail to updat the Info
	@RequestMapping( "/fetch.cdac")
	public String StudentFetch(HttpServletRequest request, Map model) {
		Student student2 = new Student();
		student2.setId(Integer.parseInt(request.getParameter("id")));
		try {
			Student studentList = studentService.resultUpdate(student2);
			model.put("student",studentList);
			System.out.println(studentList);
			return "Update.jsp";
		}
		catch(StudentServiceException e) {
			model.put("message", e.getMessage());
			return "Update.jsp";
		}
    }
	
	// update the Student Details
	@RequestMapping( "/Update.cdac")
	public String StudentUpdate(HttpServletRequest request, Map model) {
		Student student = new Student();
		student.setId(Integer.parseInt(request.getParameter("id")));
		student.setRollNo(request.getParameter("roll_no"));
		student.setName(request.getParameter("name"));
		student.setSurname(request.getParameter("surname"));
		student.setMotherName(request.getParameter("mother"));
		student.setPassingYear(Integer.parseInt(request.getParameter("passing_year")));
		student.setEnglishMark(Integer.parseInt(request.getParameter("english")));
		student.setMarathiMark(Integer.parseInt(request.getParameter("marathi")));
		student.setHindiMark(Integer.parseInt(request.getParameter("hindi")));
		student.setMathMark(Integer.parseInt(request.getParameter("math")));
		student.setScienceMark(Integer.parseInt(request.getParameter("science")));
		
		studentService.updateDetails(student);
		return "redirect:student.cdac";
	}
	
	///  Delete for Student Info
	
	@RequestMapping("/fetchDelet.cdac")
	public String StudentFetchDelet(HttpServletRequest request, Map model) {
		Student student2 = new Student();
		student2.setId(Integer.parseInt(request.getParameter("id")));
			 studentService.resultDelet(student2);
			return "redirect:student.cdac";
    }
	
}