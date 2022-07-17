
package com.cdac.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.cdac.entity.Student;

@Component
public class StudentDao {

	@PersistenceContext
	private EntityManager entityManager;
	
	//Add the Student Details
	@Transactional
	public void add(Student student) {
		entityManager.persist(student);
	}
	
	/// Cheak present or not Student
	public boolean isStudentPresent(String RollNo) {
		Query query = entityManager.createQuery("select count(c) from Student c where c.rollNo = :rollno");
		query.setParameter("rollno", RollNo);
		Long count = (Long) query.getSingleResult();
		if(count == 1)
			return true;
		return false;
	}
	/// Fetch Result................................................
	public List<Student> fetchResult(Student student1 ) {
		Query query = entityManager.createQuery("select c from Student c where rollNo=:rN and motherName=:mN");
		query.setParameter("rN", student1.getRollNo());
		query.setParameter("mN", student1.getMotherName());
		return query.getResultList();
   }
	
	// Display Table on Web page
	public List<Student> fetchAll() {
	return entityManager
				.createQuery("select c from Student c", Student.class)
				.getResultList();
   }
	//  fetch for Update...................................
	public Student fetch(Student student2) {
		Student res= entityManager.find( Student.class,student2.getId());
			return res;
	   }
	
	// For Delete
	@Transactional
	public void UpdateDetails(Student student) {
		entityManager.merge(student);
	}
	
	@Transactional
	public void fetchDelet(Student student2) {
		Student s = fetch(student2);
		entityManager.remove(s);
	   }
}
