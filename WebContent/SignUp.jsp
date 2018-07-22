<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>NovelCity/SignUp/</title>
 <link rel="stylesheet" href="css/LogIn.css">
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet"> 
</head>
<body>
<div class="navbar navbar-inverse">
<div class="navbar-header">
      <a class="navbar-brand" href="#">NovelCity</a>
    </div>
</div>
<div class="row">
    <div class="col-sm-4"></div>
    <div class="col-sm-4">
<form action="SignUpController" method="post">
    <h1>Sign Up</h1><br>
     <div class="form-group">
    <label>Name</label>
    <input type="text" class="form-control" placeholder="enter your name..." name="name" value="${name}"><p style="color:red">${errors['name_error']}</p><p style="color:red">${SignUp.message}</p>
  </div>
	 <div class="form-group">
    <label>Email</label>
    <input type="text" class="form-control" placeholder="enter your email..." name="email" value="${email}"><p style="color:red">${errors['email_error']}</p>
 	</div>
 	 <div class="form-group">
	<lable>Phone Number</lable>
	<input type="text" class="form-control" placeholder="enter your phone number..." name="phone" value="${phone}"><p style="color:red">${errors['phone_error']}</p>
	</div>
	<div class="form-group">
	 <label>Gender</label>
   <select id="Gender" name="gender" class="form-control">
      <option value="Male">Male</option>
      <option value="Female">Female</option>
      <option value="Others">Others</option>
    </select><p style="color:red">${errors['gender_error']}</p>
    </div>
    <div class="form-group">
    <label>Password</label>
    <input type="password" class="form-control" placeholder="enter password..." name="password" value="${password}" ><p style="color:red">${errors['password_error']}</p>
	</div>
	 <div class="form-group">
    <label><b>Confirm Password</b></label><br>
    <input type="password" class="form-control" placeholder="re-enter your password..." name="cpassword" value="${cpassword}"><p style="color:red">${errors['cpassword_error']}</p>
    <p style="color:red">${errors['missmatch_error']}</p>
    </div>
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
    <div class="clearfix">
    <button type="submit" class="btn btn-primary-outline">Sign Up</button>
    </div>
  
</form></div>
   <div class="col-sm-2"></div>
   <div class="col-sm-2">
            <a class="button" href="LogIn.jsp"><span class="glyphicon glyphicon-log-in"></span>.LogIn</a> 
  </div>
</body>
</html>