<?php 

session_start();

include("include/connection.php");


if(isset($_POST['login'])) {


	$uname = $_POST['uname'];
	$password = $_POST['pass'];


	$error = array();

	$q = "SELECT * FROM doctors WHERE username='$uname' AND password='$password'";
	$qq = mysqli_query($connect,$q);

	$row = mysqli_fetch_array($qq);


	if (empty($uname)) {
		$error['login'] = "Enter Username";
		}else if(empty($password)) {
			$error['login'] = "Enter Password";
		}else if($row['status'] =="Pendding"){
			$error['login'] = "Please Wait For The Admin To Confirm";
		}else if($row['status'] =="Rejected") {
			$error['login'] = "Try again later";
		}


		if (count($error)==0) {

			$query = "SELECT * FROM doctors WHERE username='$uname' AND password='$password'";
			$res = mysqli_query($connect,$query);

			if (mysqli_num_rows($res)) {

				echo "<script>alert('done')</script>";
				$_SESSION['doctor'] = $uname;
				header("location:doctor/index.php");
			}else {
				echo "<script>alert('You do not have an account.')</script>";
			}
		}
	}
	

	if (isset($error['login'])) {

		$l = $error['login'];

		$show = "<h5 class='text-center alert alert-danger'>$l</h5>";
	}else {

		$show = "";
	}	


?>

<!DOCTYPE html>
<html> 
<head>
	<title>Doctor Login Page</title> 
</head>
<body style="background-image: url(img/kisii.jpg);background-size: cover;background-repeat: no repeat;"> 

	<?php
	include("include/header.php");
	?>
	<div class="container-fluid">
	<div class="col-md-12">
	<div class="row">
	<div class="col-md-3"></div>
	<div class="col-md-6 jumbotron">
		<h5 class="text-center my-5">Doctors Login</h5>
			<div>
				<?php echo $show; ?>
			</div>

		<form method="post">
			<div class="form-group">
				<label>Username</label>
				<input type="text" name="uname" class="form-control" autocomplete="off" placeholder="Enter Username">
			</div>

			<div class="form-group">
				<lable>Password</label>
				<input type="password" name="pass" class="form-control" autocomplete="off" placeholder="Enter Password">
			</div>

			<input type="submit" name="login" class="btn-success" value="login">
			<p>I dont have an account <a href="apply.php">Apply Now!!!</a></p>
		</form>
	</div>
	<div class="col-md-3"></div>



	</div>
</body>
</html>