<?php
session_start();

// initializing variables
$username = "";
$email    = "";
$errors = array(); 

// connect to the database
$server="sqldbforweb.cuc0twrqljlf.us-west-2.rds.amazonaws.com";
$user="foo";
$password"barbarbar";
$dbname"onlinestore";
$db = mysqli_connect($server, $user, $password, $dbname);



// LOGIN USER
if (isset($_POST["login_user"])) {
  $username = mysqli_real_escape_string($db, $_POST["username"]);
  $password = mysqli_real_escape_string($db, $_POST["password"]);

  if (empty($username)) {
  	array_push($errors, "Username is required");
  }
  if (empty($password)) {
  	array_push($errors, "Password is required");
  }

  if (count($errors) == 0) {
  	$query = "SELECT * FROM user_info  WHERE username= '$username' AND password='$password'";
  	$results = mysqli_query($db, $query);
  	if (mysqli_num_rows($results) == 1) {
  	  $_SESSION["username"] = $username;
  	  $_SESSION["success"] = "You are now logged in";
  	  header("location: homepage.php");
  	}else {
  		array_push($errors, "Wrong username/password combination");
  	}
  }
}
?>
