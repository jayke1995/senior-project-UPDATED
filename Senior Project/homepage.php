<?php 
  session_start(); 

  if (!isset($_SESSION['username'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location: login.php');
  }
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: login.php");
  }
?>

<!DOCTYPE html>
<html>
<head>
	<header id="logo">
		<a href="../index.html"><img src="img/LAST RESORT LONG .png" width="178" height="38"> </a>
		<a href="../index.html" class="w3-button w3-red">Home</a>
		<a href="../index.html" class="w3-button w3-red">News</a>
		<a href="../store/profile.php" class="w3-button w3-red">Shop Here</a>
		<a href="../index.html" class="w3-button w3-red">About</a>
		<div class="w3-button w3-white" id="topnav-right">
		<a href="homepage.php?logout='1'" >Logout</a>
		</div>
	
	</header>
	<title>LastResort</title>
	<link rel="stylesheet" type="text/css" href="homestyle.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	  <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="jumbotron.css" rel="stylesheet">
	

</head>
<body>
<div class="content">
    <!-- logged in user information -->
    <?php  if (isset($_SESSION['uid'])) : ?>
    	<p class="welcome" style="text-align: center;">Welcome <strong><?php echo $_SESSION['name']; ?></strong></p>
			<div style="text-align: center;"><strong><?php
				echo "Today is " . date("m/d/Y") . "<br>"; ?> </strong>
	</div>
    <?php endif ?>
</div>
	


<table id="table1" style="width:100%">
  <tr>
    <td align="center">
        <img class="HomeIcons" src="img/other/shop.png" alt="GetShopping">
          <p><a href="store/index.php"><h2>Shop</h2></a></p>
    </td>
    <td align="center">
        <img class="HomeIcons" src="img/other/WingedShoe.png" alt="WingedShoe">
          <p><a href="shoeupdate.html"><h2>Shoe Updates</h2></a></p>
    </td>
    <td align="center">
        <img class="HomeIcons" src="img/other/FAQ.png" alt="Question Mark">
          <p><a href="#"><h2>FAQs</h2></a></p>
    </td
  </tr>

  <tr> <!-- Second Row -->
     <td align="center">
        <img class="HomeIcons" src="img/other/forum.png" alt="Forum">
            <p><a href="#"><h2>Forums</h2></a></p>
        </td>
    <td align="center">
        <img class="HomeIcons" src="img/other/billing.png" alt="Billing">
          <p><a href="#.html"><h2>Billing</h2></a></p>
    </td>
    <td align="center">
        <img class="HomeIcons" src="img/other/gear.png" alt="Settings Gear">
            <p><a href="#"><h2>Settings</h2></a></p>
      </td>
  </tr>
</table>  
		
</body>
</html>
