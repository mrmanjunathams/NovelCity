<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>NovelCity/User Comments/</title>
 <link rel="stylesheet" href="css/UserComments.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<div class="navbar navbar-inverse">
<div class="navbar-header">
      <a class="navbar-brand" href="#">NovelCity</a>
    </div>
<ul class="nav navbar-nav">
<li><a href="NovelCityController"><span class="glyphicon glyphicon-home"></span>Home</a></li>
<li><a href="downloadController"><span class="glyphicon glyphicon-download-alt"></span>Downloads</a></li>
<li><a href="AboutUs.jsp"><span class="glyphicon glyphicon-sunglasses"></span>About Us</a></li>
<li><a href="Request.jsp"><span class="glyphicon glyphicon-heart"></span>Request Novel</a><li>
<li><a href="UserComments.jsp"><span class="glyphicon glyphicon-pencil"></span>User Comments</a></li></ul>
<ul class="nav navbar-nav navbar-right">
      <li><a href="#" data-toggle="modal" data-target="#basicModal"><span class="glyphicon glyphicon-user"></span>My Profile</a></li>
    </ul>
</div>

<div class="modal fade" id="basicModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h2 class="modal-title" id="myModalLabel">Profile</h2>
            </div>
            <div class="modal-body">
                

<h2 style="text-align:center"></h2>

<div class="card">
  <img src="images/the.jpg" alt="Profile" style="width:100%">
  <c:forEach var="temp" items="${data}">
  <tr>
  <th><h2>${temp.name}</h2></th>
  </tr>
  <tr>
  <td><h4><p class="title">Email: ${temp.email}</p></h4></td>
  </tr>
  <tr>
  <td><h4><p class="title">Phone Number: ${temp.phone}</p></h4></td>
  </tr>
   <tr>
  <td><h4><p class="title">Gender: ${temp.gender}</p></h4></td>
  </tr>
  </c:forEach>
  <div style="margin: 24px 0;">
 </div>
</div>
 </div>
            <div class="modal-footer">
            <form action="LogOutController" method="post">
                <button type="submit" class="btn btn-secondary" style="color:black">Log Out</button>
                <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
            </form>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
<form action="UserCommentsController" method="post">
  <div class="form-group">
    <h1>comments on your favourite novel</h1>
    <p><h4>your comments are precious for us</h4></p>
	</div>
<div class="form-group">
    <label>First Name</label>
    <input type="text" class="form-control" placeholder="Enter First Name" name="first_name" value="${fname}">
 </div>
<div class="form-group">
    <label>Last Name</label>
    <input type="text" class="form-control" placeholder="Enter Last Name" name="last_name" value="${lname}">
 </div>

<div class="form-group">
    <label>Country</label>
   <select id="country" class="form-control" name="country">
      <option value="India">India</option>
      <option value="Japan">Japan</option>
      <option value="australia">Australia</option>
      <option value="canada">Canada</option>
      <option value="usa">USA</option>
    </select>
</div>
    <div class="form-group">
    <label>Comments...</label>
<textarea name="comments" class="form-control" placeholder="Write something.." value="${comments}">
</textarea>
</div>
    
    <p>Thank you for being with us</p>
<br>
    <div class="clearfix">
      <button type="submit" class="btn btn-primary-outline">Leave comment</button>
    </div>
</form></div>
    <div class="col-sm-3"></div>
  </div>
</body>
</html>