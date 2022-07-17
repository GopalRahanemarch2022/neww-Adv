<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    
    <link href="https://fonts.googleapis.com/css2?family=Bungee+Inline&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css2?family=Monoton&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Zen+Tokyo+Zoo&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="login.css">
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
   
</head>
<style>
    body {
   
       background: radial-gradient(#fff,#ffd6d6);;
}

.signup-form{
    max-width: 450px;
    min-height: 390px;
    font-family: cursive;
    box-sizing: border-box;
    background: rgba(200, 200, 200, 0.704);
    box-shadow: 4px 2px 16px rgba(0, 0, 0, 0.4);
    border-radius: 8px;
    margin:  20px auto 0 auto;
    padding: 25px;
    color: #414141;
        
}
.cm-input{
    display: block;
    box-sizing: border-box;
    padding: 10px;
    width: 100%; 
    margin: 10px auto;
    border-radius: 7px;
    border: 1px solid #ccc;
    
    
}
h2{
    margin-left: 80px;
}

.cm-input:focus{
    outline: 0;
    border-color: #f9cb81;
    
}

.cm-input:invalid{
    border-color: #e41b17;
    
}

/* Login Button Design */
    
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

/* Gradient Background */
.gr-bg{
    background: rgb(76, 255, 5);
    background: linear-gradient(90deg, rgb(11, 86, 124) 0%, rgb(1, 115, 255) 55%, rgb(193, 96, 120) 100%);
}
</style>
<body>
    <form  class="signup-form" action="Result.cdac" method="post">
        
        <!-- <form action="Result.cdac" method="post">
            <div class="Result">
            <h2>${ message }</h2>
            Enter  Roll_NO : <input type="text" name="roll_no" required/> <br />
            Enter  Mother Name : <input type="text" name="mother" required/> <br />
            <button type="submit">Get_Result</button> -->
          
              <h2> Result</h2>
              <hr>

              Enter Roll No :<label for="email"></label> 
             <input type="text"   class="cm-input" placeholder="Roll No"id="email"  name="roll_no" required></li> 

           

              Enter Mother Name :<label for="password"></label>
              <input type="text"   class="cm-input" placeholder="Mother Name"id="password" name="mother" required></li>  
              
               


                    
              <button style="font-size: 20px; font-family: 'Lucida Sans', 'Lucida Sans Regular', 
              'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; margin-left: 1px; "
               class="btn-login  gr-bg"type="submit">Get Result</button>
            
      </form>
</body>
</html>