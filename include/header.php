<!DOCTYPE html>
<html>
<head>
	<title></title>
     <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

     <script src="https://code.jquery.com/jquery-3.5.1.slim.js" integrity="sha256-DrT5NfxfbHvMHux31Lkhxg42LY6of8TaYyK50jnxRnM=" crossorigin="anonymous"></script>

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

     <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

     <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js">
       </script>

      <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
</head>
<body>
    
  <nav class="navbar navbar-expand-1g navbar-info bg-info">
     	<h5 class="text-white">KISII UNIVERSITY HOSPITAL MANAGEMENT SYSTEM</h5> 

     	<div class="mr-auto"></div>

     	<ul class="navbar-nav">
         <?php
           
          if (isset($_SESSION['admin'])) {

            $user = $_SESSION['admin'];
            echo '
            <li class="nav-item"><a href="#" class="nav-link text-white">'.$user.'</a></li>
            <li class="nav-item"><a href="logout.php" class="nav-link text-white">logout</a></li>
         ';
        }else if (isset($_SESSION['doctor'])) {
          
          $user = $_SESSION['doctor'];
          echo '
            <li class="nav-item"><a href="#" class="nav-link text-white">'.$user.'</a></li>
            <li class="nav-item"><a href="logout.php" class="nav-link text-white">logout</a></li>
          ';
        }else if (isset($_SESSION['patient'])) {
          
          $user = $_SESSION['patient'];
          echo '
            <li class="nav-item"><a href="#" class="nav-link text-white">'.$user.'</a></li>
            <li class="nav-item"><a href="logout.php" class="nav-link text-white">logout</a></li>
          ';
        }
        else{
          echo '
            <li class="nav-item"><a href="index.php" class="nav-link text-white">Home</a></li>
            <li class="nav-item"><a href="adminlogin.php" class="nav-link text-white">Admin</a></li>
            <li class="nav-item"><a href="doctorlogin.php" class="nav-link text-white">Doctor</a></li>
            <li class="nav-item"><a href="Patientlogin.php" class="nav-link text-white">Patient</a></li>
      </ul>
          ';
        }
         ?>

     </nav>
</body>
</html>