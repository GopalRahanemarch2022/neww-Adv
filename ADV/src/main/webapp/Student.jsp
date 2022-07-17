<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>InsertStudent</title>
<style>
	   body {
   
       background: radial-gradient(#fff,#ffd6d6);;
}
	.student {
	border:5px;
	border-color:black;
		width: 350px;
		margin: auto;
	}
	div {
		margin-top: 10px;
	}
	label {
		font-weight: bold;
	}
	input {
 		width: 100%;
  		padding: 12px 20px;
  		margin: 8px 0;
  		box-sizing: border-box;
  		border: 2px solid red;
  		border-radius: 4px;
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
    .btn-login{
    display: block;
    width: 100%;
    padding: 15px;
    border: 0;
    color: rgb(255, 255, 255);
    border-radius: 10px;
    cursor: pointer;
    
}

.btn-login:focus{
    outline: 0;
}

.btn-login:hover{
    opacity: 0.8;
    transition: .3s;
}
.gr-bg{
    background: rgb(76, 255, 5);
    background: linear-gradient(90deg, rgb(11, 86, 124) 0%, rgb(1, 115, 255) 55%, rgb(193, 96, 120) 100%);
}
  
</style>
</head>
<body>

    <header class="p-3 bg-dark text-white">
      <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
          <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
            <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
          </a>
  
          <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
            <li><a href="index.html" class="nav-link px-2 text-secondary">Home</a></li>
            <li><a href="student.cdac" class="nav-link px-2 text-white">View Student List</a></li>
            
          </ul>
  
        
  
          
        </div>
      </div>
    </header>
    
<div class="student">
<h2>${ message }</h2>
<form action="Student.cdac" method="post">
Enter Student Roll_NO : <input type="text" name="roll_no" required/> <br />
Enter Student Name : <input type="text" name="name" required/> <br />
Enter Student Surname : <input type="text" name="surname"required /> <br />
Enter Student Mother Name : <input type="text" name="mother" required/> <br />
Enter Student Passing_year : <input type="number" name="passing_year"required /> <br />
Enter Mark English : <input type="number" name="english"required /> <br />
Enter Mark Marathi : <input type="number" name="marathi"required /> <br />
Enter Mark Hindi : <input type="number" name="hindi" required /> <br />
Enter Mark Math : <input type="number" name="math"required /> <br />
Enter Mark Science : <input type="number" name="science" required/> <br />

<button style="font-size: 20px; font-family: 'Lucida Sans', 'Lucida Sans Regular', 
              'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; margin-left: 1px; "
               class="btn-login  gr-bg" href="index.html" type="submit">Add_Details</button>

</form>

</div>
</body>
</html>