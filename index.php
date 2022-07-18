<!DOCTYPE html>
<html>
<head>
	<title>HMS Home page</title>
</head>
<body style="background-image: url(img/kisii.jpg);background-repeat: no-repeat; background-size: cover;">
  <?php
include("include/header.php");
?>
<div style="margin-top: 50px"></div>



<div class="container">
	<div class="col-md-12">
		<div class="row">
			<div class="col-md-3 mx-1 shadow">
				<img src="img/info.jfif">
        <h5 class="text-center">CLICK ON THE BUTTON FOR MORE INFO</h5>
				<a href="info.php">
					<button class="btn btn-success my-3" style="margin-left: 18%;">More Information</button>
        </a>
			
				
			</div>
			<div class="col-md-4 mx-1 shadow">
				<img src="img/patientk.jpg" style="width: 100%;">
        <h5 class="text-center">PATIENTS</h5>
				<a href="patientlogin.php">
					<button class="btn btn-success my-3" style="margin-left: 30%;">Patient Login</button>
        </a>
			


		    </div>
		   <div class="col-md-4 mx-1 shadow">
				<img src="img/doctor.jfif" style="width: 100%;">

				<h5 class="text-center">DOCTORS</h5>
				<a href="doctorlogin.php">
					<button class="btn btn-success my-3" style="margin-left: 35%;">Doctor Login</button>
        </a>
			
		   </div>
		
	   </div>
   </div>	
</div>
</body>
</html>