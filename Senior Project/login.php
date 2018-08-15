<?php 
session_start();

$server="sqldbforweb.cuc0twrqljlf.us-west-2.rds.amazonaws.com";
$user="foo";
$password="barbarbar";
$dbname="onlinestore";

$db = mysqli_connect($server, $user, $password, $dbname);

$username="";
$errors=array();

//Logging in the user
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
    $password = md5($password);
    $query = "SELECT * FROM user_info WHERE username='$username' AND password='$password'";
    $results = mysqli_query($db, $query);
    if (mysqli_num_rows($results) == 1) {
      $_SESSION['username'] = $username;
      $_SESSION['success'] = "You are now logged in";
      header("Location: homepage.php");
      exit;
    }else {
      array_push($errors, "Wrong username/password combination");
    }
  }
}
?>
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
  <link rel="stylesheet" type="text/css" href="css/loginstyle.css">
  <style>
  #logo { background-color: black; }
  </style>
</head>
<body>
 <div id="logo">
  <a href="index.html"><img src="img/LAST RESORT LONG .png" width="170" height="38"> </a>
 </div> 
<div class="header">
    <h2>Login</h2>
  </div>
   
  <form method="post" action="login.php">
    <?php include "errors.php"; ?>
    <div class="input-group">
      <label>Username</label>
      <input type="text" name="username" >
    </div>
    <div class="input-group">
      <label>Password</label>
      <input type="password" name="password">
    </div>
    <div class="input-group">
      <button type="submit" class="btn" name="login_user" >Login</button>
    </div>
  <div class="signup">
  <p>
      Not a member?
  </p> 
      <a href="signup.php">
        <button type="button" class="btn2">Sign Up</button>
      </a>
    </div>
  </form>
</body>
</html>
