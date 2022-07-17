<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="com.cdac.controller.StudentController" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
  
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<meta charset="UTF-8">
<title>StudentResult</title>
<style>

 table,th,tr,td{
        border:3px black solid;
        margin-left: 300px;
        background-color: white;
      
        
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
        body {
   
       background: radial-gradient(#fff,#ffd6d6);;
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
    .center{
  margin-left: auto;
  margin-right: auto;
  
  }
  tr,td{
  padding: 10px;
  margin: 5px;
  text-align: center;
  }
</style>

<body>
</head>
    <header class="p-3 bg-dark text-white">
      <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
          <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
            <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
          </a>
  
          <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
            <li><a href="index.html" class="nav-link px-2 text-secondary">Home</a></li>
             <li><a href="logout.cdac" class="nav-link px-2 text-white">Log_out</a></li>
            
          </ul>
  
        
  
          
        </div>
      </div>
    </header>

<table class="center">
	<tr>
     <c:forEach	items="${ resultOfStudent }" var="student">
     </tr>
	<tr>
		<th colspan="2"><h1>Result</h1></th>
	</tr>
	<tr>
		<td>
			RollNo
		</td>
		<td>
			${ student.rollNo }
		</td>
	</tr>
	<tr>
		<td>
			Name
		</td>
		<td>
			${ student.name }
		</td>
	</tr>
	<tr>
		<td>
			Surname
		</td>
		<td>
			${ student.surname }
		</td>
	</tr>
	<tr>
		<td>
			MotherName
		</td>
		<td>
			${ student.motherName }
		</td>
	</tr>
	<tr>
		<td>
			PassingYear
		</td>
		<td>
			${ student.passingYear}
		</td>
	</tr>
	<tr>
		<td>
			English_Mark
		</td>
		<td>
			${ student.englishMark }
		</td>
	</tr>
	<tr>
		<td>
			Marathi_Mark
		</td>
		<td>
			${ student.marathiMark }
		</td>
	</tr>
	
	<tr>
		<td>
			Hindi_Mark
		</td>
		<td>
			${ student.hindiMark }
		</td>
	</tr>
	<tr>
		<td>
			Math_Mark
		</td>
		<td>
			${ student.mathMark }
		</td>
	</tr>
	<tr>
		<td>
			Science_Marks
		</td>
		<td>
			${ student.scienceMark }
		</td>
	</tr>
	<tr>
		<td>
			Total Marks
		</td>
		<td>
			
			${ student.englishMark + student.marathiMark + student.hindiMark + student.mathMark + student.scienceMark }
			
		</td>
	</tr>
	<tr>
		<td>
			Percentage
		</td>
		<td>
			${ (((student.englishMark +student.marathiMark + student.hindiMark + student.mathMark + student.scienceMark)/500)*100)}% 
		</td>
	</tr>
	<tr>
		<td>
			Grading System:
		</td>
		<td>
		 Distinction : Above 75% , First Class : 60% to 75%, Second Class : below 60% And Fail : below 40% !!
		</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>