<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http//java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JOB FORM</title>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<script>
	function ValidateText() {
		var inputText = document.getElementById("companyName");
		if (!inputText.checkValidity()) {
			document.getElementById("companyName").innerHTML = inputText.validationMessage;
		} else {
			document.getElementById("companyName").innerHTML = "Input OK";
		}
	}

	function ValidateText1() {
		var inputText = document.getElementById("appointmentDay");
		if (!inputText.checkValidity()) {
			document.getElementById("appointmentDay").innerHTML = inputText.validationMessage;
		} else {
			document.getElementById("appointmentDay").innerHTML = "Input OK";
		}
	}

	function ValidateText2() {
		var inputText = document.getElementById("consultPerson");
		if (!inputText.checkValidity()) {
			document.getElementById("consultPerson").innerHTML = inputText.validationMessage;
		} else {
			document.getElementById("consultPerson").innerHTML = "Input OK";
		}
	}

	function ValidateText3() {
		var inputText = document.getElementById("requirements");
		if (!inputText.checkValidity()) {
			document.getElementById("requirements").innerHTML = inputText.validationMessage;
		} else {
			document.getElementById("requirements").innerHTML = "Input OK";
		}
	}

	function ValidateText4() {
		var inputText = document.getElementById("comments");
		if (!inputText.checkValidity()) {
			document.getElementById("comments").innerHTML = inputText.validationMessage;
		} else {
			document.getElementById("comments").innerHTML = "Input OK";
		}
	}
</script>

</head>
<body>

<center>
<div>

	<html>
	<head>
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	</head>
	<body>
	<div class="container" style="width:70%; box-shadow: 10px 10px 8px 10px #888888;box-shadow: 1px 0px 7px 3px #ececec;margin-top: 28;border:1px solid #d0cbcb;">
	
	<div ><center>
	<a href="#id1;"><span class="badge badge-primary">About</span></a>
<a href="#id2;"><span class="badge badge-secondary">Objective</span></a>
<a href="#id3;"><span class="badge badge-success">Academic Profile</span></a>
<a href="#id4;"><span class="badge badge-danger">Technical Skills/Subjects Studied</span></a>
<a href="#id5;"><span class="badge badge-warning">Area of Interest</span></a>
<a href="#id6;"><span class="badge badge-info">Languages Known</span></a>
<a href="#id7;"><span class="badge badge-info">Personal Profile</span></a>
</center>
</div>

	<div class="jumbotron text-center">
	  <h1>RESUME</h1>
	  </div>

	<div  class="alert alert-danger">

			<h3  id="id1;"  style="font-size:30;">About:</h3>
	</div>
	<p>
	<nav class="navbar navbar-light bg-light">
	  <form class="form-inline">
		<button class="btn btn-outline-success" type="button">Name:</button>
		<button class="btn btn-sm btn-outline-secondary" type="button">SAMARE HUDA</button>
	  </form>
	</nav>

	<nav class="navbar navbar-light bg-light">
	    <form class="form-inline">
		<button class="btn btn-outline-success" type="button">Sem:</button>
		<button class="btn btn-sm btn-outline-secondary" type="button">VI sem</button>
	  </form>
	</nav>

	<nav class="navbar navbar-light bg-light">
	  <form class="form-inline">
		<button class="btn btn-outline-success" type="button">Usn:</button>
		<button class="btn btn-sm btn-outline-secondary" type="button">3GU16CS023</button>
	  </form>
	</nav>

	<nav class="navbar navbar-light bg-light">
	  <form class="form-inline">
		<button class="btn btn-outline-success" type="button">Branch:</button>
		<button class="btn btn-sm btn-outline-secondary" type="button">Computer Science</button>
	  </form>
	</nav>

	<br>


	<div  class="alert alert-success">
	<h3 id="id2;" style="font-size:30;">Objective:</h3>
			To carry out my internship in a software company as a curriculum of my VI sem computer science engineering.
			</div><br>	
	<div  class="alert alert-primary">

			<h3 id="id3;"  style="font-size:30;">Academic Profile:</h3>
	</div>

    <div class="container">
    <table class="table table-sm table-dark">
     <thead>
      <tr>
       <th scope="col">#</th>
       <th scope="col"><span class="d-inline-block" tabindex="0" data-toggle="tooltip" title="Class Name">
  <button class="btn btn-primary" style="pointer-events: none;" type="button" disabled>Class</button>
</span></th>
       <th scope="col"><span class="d-inline-block" tabindex="0" data-toggle="tooltip" title="Display Result">
  <button class="btn btn-primary" style="pointer-events: none;" type="button" disabled>Result</button>
</span></th>
       <th scope="col"><span class="d-inline-block" tabindex="0" data-toggle="tooltip" title="College Name">
  <button class="btn btn-primary" style="pointer-events: none;" type="button" disabled>College</button>
</span></th>
      </tr>
     </thead>
     <tbody>
      <tr>
       <th scope="row">1</th>
        <td>X std</td>
        <td>77%</td>
        <td>Little Angels School</td>
      </tr>
      <tr>
       <th scope="row">2</th>
        <td>II P.U</td>
        <td>59%</td>
        <td>Vidya Bharti College</td>
      </tr>
      <tr>
       <th scope="row">3</th>
        <td>I sem</td>
         <td>65%</td>
	     <td>Govt.Engg College</td>
      </tr>
	  <tr>
      <th scope="row">4</th>
      <td>II sem</td>
      <td>75%</td>
	  <td>Govt.Engg College</td>
    </tr>
	<tr>
      <th scope="row">5</th>
      <td>III sem</td>
      <td>64%</td>
	  <td>Govt.Engg College</td>
    </tr>
	<tr>
      <th scope="row">6</th>
      <td>IV sem</td>
      <td>67%</td>
	  <td>Govt.Engg College</td>
    </tr>
	<tr>
      <th scope="row">7</th>
      <td>V sem</td>
      <td>69%</td>
	  <td>Govt.Engg College</td>
    </tr>
	<tr>
      <th scope="row">8</th>
      <td>VI sem</td>
      <td> </td>
	  <td>Govt.Engg College</td>
    </tr>
  </tbody>
</table>
</div>
	  
	<div  class="alert alert-dark">

			<h3 id="id4;" style="font-size:30;">Technical Skills/Subjects Studied:</h3>
	</div>

	<ul class="list-group">
	  <li class="list-group-item">C-Programming</li>
	  <li class="list-group-item">OOPS Concepts</li>
	  <li class="list-group-item">Java</li>
	  <li class="list-group-item">Operating System</li>
	  <li class="list-group-item">System Software & Compiler Design</li>
	  <li class="list-group-item">Python</li>
	  <li class="list-group-item">Data Base Management System(DBMS)</li>
	</ul>
	
	<br>

	<div  class="alert alert-danger">

			<h3 id="id5;" style="font-size:30;">Area of Interest:</h3>
	</div>

	<ul class="list-group">
	  <li class="list-group-item">Java</li>
	  <li class="list-group-item">DBMS</li>
	</ul>
	
	<br>

	<div class="alert alert-info" role="alert">
	  <h3 id="id6;" style="font-size:30;">Languages Known:</h3>
	</div>
	
	
	<ul class="list-group">
	  <li class="list-group-item">English</li>
	  <li class="list-group-item">Hindi</li>
	  <li class="list-group-item">Urdu</li>
	</ul>
    
	<br>
			
	<div  class="alert alert-warning">

			<h3  id="id7;" style="font-size:30;">Personal Profile:</h3>
			<p>Address:2-5-46/4/1 Near Moti Masjid Kot-tallar Tippu Sultan Road Raichur 584101</p>
	</div>		
	</div>	
    </div>		
	</body>
	</html>


</div>
</center>

	<center>
	<div class="container" style="width:70%; box-shadow: 10px 10px 8px 10px #ff33da; box-shadow: 1px 0px 7px 3px #a21e8a; margin-top: 28px; border : 1px #e365cc;">
		<cenetr><h1 style="color:blue;font-family:Helvetic Neve">FEEDBACK</h1></cenetr>



<form action="InsertJobServlet" method="post">


				<h6>CompanyName:</h6>
				<input id="companyName" type="text" name="companyName" size="40" required>
					</input>

				<h6>AppointmentDay:</h6>
				<input id="appointmentDay" type="text" name="appointmentDay" size="40" required>
				</input>


				<h6>ConsultPerson:</h6>
				<input id="consultPerson" type="text" name="consultPerson"  size="40" required>
		        </input>

				<h6>Requirements:</h6>
				<input id="requirements" type="text" name="requirements" size="40" required>		        
				</input>
				
				

				<h6>Comments:</h6>
				<input id="comments" type="text" name="comments" size="40" required>
					</input>





<button type="submit" class="btn btn-dark">save</button>
<a href="RetrieveJobServlet"><button type="submit" class="btn btn-dark">PostJob</button></a>


</form>
		</div>
	</center>
</body>
</html>