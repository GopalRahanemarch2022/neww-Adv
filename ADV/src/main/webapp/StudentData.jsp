<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="com.cdac.entity.Student" %>
   <%@ page import="java.util.*" %>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<meta charset="UTF-8">
<title>StudentDetailsTable</title>
<style>
table, tr, td, th {
	border: 1px solid;
	text-align: center;
	padding: 5px;
}
.center {
  margin-left: auto;
  margin-right: auto;
}
	   body {
   
       background: radial-gradient(#fff,#ffd6d6);;
}
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }

    .b-example-divider {
      height: 3rem;
      background-color: rgba(0, 0, 0, .1);
      border: solid rgba(0, 0, 0, .15);
      border-width: 1px 0;
      box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
    }

    .b-example-vr {
      flex-shrink: 0;
      width: 1.5rem;
      height: 100vh;
    }

    .bi {
      vertical-align: -.125em;
      fill: currentColor;
    }

    .nav-scroller {
      position: relative;
      z-index: 2;
      height: 2.75rem;
      overflow-y: hidden;
    }

    .nav-scroller .nav {
      display: flex;
      flex-wrap: nowrap;
      padding-bottom: 1rem;
      margin-top: -1px;
      overflow-x: auto;
      text-align: center;
      white-space: nowrap;
      -webkit-overflow-scrolling: touch;
    }
</style>
</head>
<body>
<%String str = (String)session.getAttribute("em"); 
if(str == null){ 
	response.sendRedirect("index.jsp");
}else{
%>
    <header class="p-3 bg-dark text-white">
      <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
          <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
            <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
          </a>
  
          <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
            <li><a href="index.html" class="nav-link px-2 text-secondary">Home</a></li>
            <li><a href="Student.jsp" class="nav-link px-2 text-white">Click Here To Add Student</a></li>
             <li><a href="logout.cdac" class="nav-link px-2 text-white">Log_out</a></li>
            
          </ul>
  
        
  
          
        </div>
      </div>
    </header>

<h2>All Student Details is here!</h2>

        
  </div>

<br>
<br>
<br>
<table class="center">
	<tr>
	<th>Id</th><th>RollNo</th><th>Name</th><th>Surname</th><th>MotherName</th><th>PassingYear</th><th>English_Mark</th><th>Marathi_Mark</th><th>Hindi_Mark</th><th>Math_Mark</th><th>Science_Mark</th><th>Update</th><th>Delete</th>
	</tr>
	<c:forEach items="${ listOfStudent }" var="student">
	<tr>
	
        <td>${ student.id}</td> 
	    <td>${ student.rollNo }</td> 
		<td>${ student.name }</td>
		<td>${ student.surname }</td>
		<td>${ student.motherName }</td>
		<td>${ student.passingYear}</td>
		<td>${ student.englishMark }</td>
		<td>${ student.marathiMark }</td>
		<td>${ student.hindiMark }</td>
		<td>${ student.mathMark }</td>
		<td>${ student.scienceMark }</td>
		<%Student student=new Student(); %>
		<td> <a href="fetch.cdac?id=${ student.id }" type="button" >Update</a></td>
		<td> <a href="fetchDelet.cdac?id=${ student.id }" type="button">Delete</a></td>
		
	</tr>
	</c:forEach>
</table>
<%} %>
</body>
</html>