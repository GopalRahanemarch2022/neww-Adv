<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />

<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
 </div> 
           
                <header class="p-3 bg-dark text-white">
      <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
          <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
            <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
          </a>
  
          <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
            <li><a href="index.html" class="nav-link px-2 text-secondary">Home</a></li>
            <li><a href="login.jsp" class="nav-link px-2 text-white">Log_In</a></li>
            
          </ul>
  
        
  
          
        </div>
      </div>
    </header>
        
  </div>
    <title>Reg Form</title>
    <style type="text/css">
        h1{
            font-family: 'Times New Roman', Times, serif;
            background-color: rgb(179, 228, 246);
            
        }
        body {
             /* background:linear-gradient(0.25turn,burlywood,rgb(36, 15, 15));   */
            font-family:'Times New Roman', Times, serif;
   
   
       background: radial-gradient(#fff,#ffd6d6);;

            
        }

        input[type="text"] {
            width: 250px;
        }

        input[type="submit"],
        input[type="reset"] {
           
            height: 50px;
            position: relative;
            
            left: 180px;
        }

        form {  
            background-color: rgb(206, 231, 229);
            text-align: center;
            font-family: 'Times New Roman', Times, serif;
            font-size: 20px;
            border: 3px solid rgb(240, 245, 247);
            width: 600px;
            margin: 30px auto;
        }

        td {
            padding: 10px;
        }

        td:first-child {
            text-align: right;
            font-weight: bold;
        }

        td:last-child {
            text-align: left;
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

<body background="/image/baggra.jpg">
    <center >
        <h1>GET  REGISTER  HERE</h1>
    </center>
    <hr>
    <form action="abc.cdac" name="reg_form"  method="post">
        <h2>Registration Form</h2>
        <table>
            <tr>
                <td><label>Enter AdminId: </label></td>
                <td>
                    <input type="text" name="adminId" placeholder="AdminId" required>
                </td>
            </tr>
            <tr>
                <td><label>Enter Name </label></td>
                <td>
                    <input type="text" name="name" placeholder="Name" required>
                </td>
            </tr>
            <tr>
                <td><label>Enter EmailId</label></td>
                <td>
                    <input type="email" size="30" name="email" placeholder="EmailId"required>
                </td>
            </tr>
            <tr>
                <td><label >Enter Password</label></td>
                <td>
                 <input type="password" size="30" name="password" placeholder="Password" required>   
                  
            </tr>
            
            <tr>
                <td><label>Enter Mobile No: </label></td>
                <td>
                    <input type="text" name="mobileNumber" placeholder="Mobile No" required>
                </td>
            </tr>
           
            
            <tr>
               <td></td>
               <td>
               
               <button type="submit">Register</button>
               
               </td> 
            </tr>
        </table>
    </form>
</body>