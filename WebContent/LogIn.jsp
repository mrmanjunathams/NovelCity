<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>NovelCity/LogIn/</title>
 <link rel="stylesheet" href="css/LogIn.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="navbar navbar-inverse">
<div class="navbar-header">
      <a class="navbar-brand" href="#">NovelCity</a>
    </div>
</div>
<div class="row">
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
    <br><br><br><br><br>
<h1><p>Log In </p></h1>
<form action="LogInController" method="post">
  <div class="form-group">
    <label>Username</label>
    <input type="text" class="form-control" placeholder="enter email" name="name" value="${name}"><p style="color:red">${errors['name_error']}</p>
  </div>
  <div class="form-group">
    <label>Password</label>
    <input type="password" class="form-control" placeholder="Password" name="password" value="${password}"><p style="color:red">${errors['password_error']}</p><p style="color:red">${logindata.message}</p>
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Remember me</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form></div>
    <div class="col-sm-1"></div>
    <div class="col-sm-2">
       <a class="button" href="SignUp.jsp"><span class="glyphicon glyphicon-user"></span>SignUp</a> 
  </div>
</body>
</html>