<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>             
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
input[type=text], input[type=password],select,textarea {
    width: 50%;
    padding: 0px 25px;
    margin: 9px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing:content-box;
}
button {
    background-color:black;
   height:38px;
   
}

button:hover {
    opacity: 0.5;
}
</style>
 <title>NovelCity/Downloads/</title>
 <link rel="stylesheet" href="style1.css">
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
<div class="container-fluid">
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
<form class="navbar-form navbar-right" action="SearchController">
<div class="form">
<input type="text" class="form-control" placeholder="Search" name="name" >
<button type="submit" class="btn btn-secondary" style="color:white"><span class="glyphicon glyphicon-search"></span></button>
</div>
</form>
</div>
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
                <button type="submit" class="btn btn-secondary" style="color:white">Log Out</button>
                <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
            </form>
            </div>
        </div>
    </div>
</div>

<div class="container">
  <h2>Some good novels...</h2>
  <p>Always read something that will make you look good if you die in the middle of it.</p>            
  <table class="table table-condensed">
    <thead>
      <tr>
        <th>Novel Name</th>
        <th>Language</th>
        <th>Author Name</th>
        <th>Published Year</th>
 	<th>Download or Read</th>
      </tr>
   </thead>
    <tbody>
    <c:forEach var="temp" items="${novels}">
    <tr>
<td>
<p>
${temp.name} 
</p>
</td>
<td>
<p>
${temp.language} 
</p>
</td>
<td>
<p>
${temp.author_name} 
</p>
</td>
<td>
<p>
${temp.pub_year} 
</p>
</td>
<td>
<button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-download-alt"></span></button>
<button type="button" class="btn btn-warning"><span class="glyphicon glyphicon-book"></span></button>
</td>
</tr>

</c:forEach>
<tr><h3><p style="color:red">${msg.message}</p></h3></tr> 
  </tbody>
  </table>
</div>

</body>
</html>