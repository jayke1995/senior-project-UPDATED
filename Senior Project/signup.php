<?php
        $server="sqldbforweb.cuc0twrqljlf.us-west-2.rds.amazonaws.com";
        $user="foo";
        $password="barbarbar";
        $dbname="mydb";


        $conn = new mysqli($server, $user, $password, $dbname);
        if ($conn->connect_error){
            die("Connection failed: " .$conn->connect_error);
        } else {
   echo "";
  }

        $firstName = $_POST["firstName"];
        $lastName = $_POST["lastName"];
        $emailAddress = $_POST["emailAddress"];
        $userName = $_POST["userName"];
        $password = $_POST["password"];
        $sql = "INSERT INTO register (firstName, lastName, emailAddress, userName, password) VALUES ('".$firstName."','".$lastName."','".$emailAddress."','".$userName."','".$password."')";

  //$result = mysqli_query($conn,$sql);

        if ($conn->query($sql) === TRUE){
           echo "";
        }else{
            echo "There was an error during signup";
            echo "Error: " .$sql. "<br>" .$conn->error;
        }
        $conn->close();
    ?>


<!DOCTYPE html>
<html lang="en">


<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Last Resort</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="css/signup.css" rel="stylesheet">



</head>

<body id="page-top">
    <nav id="mainNav" class="nav navbar navbar-default">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.html"><h1>Last Resort</h1></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->

                <ul class="nav list-unstyled">
                    <li>
                        <a class="nav-link text-dark" href="#about"><h3>About</h3></a>
                    </li>
                    <li>
                        <a class="nav-link text-dark" href="#services"><h3>Services</h3></a>
                    </li>
                    <li>
                        <a class="nav-link text-dark" href="#portfolio"><h3>Pictures</h3></a>
                    </li>
                    <li>
                        <a class="nav-link text-dark" href="#contact"><h3>Contact</h3></a>
                    </li>



                </ul>


        <!-- /.container-fluid -->
    </nav>



<div class="container mt-4">
    <h1 class="well text-center">Registration</h1>
    <!-- form bg -->
    <div class="col-lg-12 well">

                <form method="post" action="">
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label>First Name</label>
                                <input type="text" placeholder="Enter First Name Here.." class="form-control" name="firstName">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>Last Name</label>
                                <input type="text" placeholder="Enter Last Name Here.." class="form-control" name="lastName">
                            </div>
                        </div>

                    <div class="form-group">
                        <label>Email Address</label>
                        <input type="text" placeholder="Enter Email Address Here.." id="email" class="form-control" name="emailAddress">
                    </div>
                     <div class="form-group">
                        <label>Username</label>
                        <input type="text" placeholder="Enter Username Here.." id="username" class="form-control" name="userName">
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" placeholder="Enter password Here.." id="password" class="form-control" name="password">
                    </div>
                    <div class="form-group">
                        <label>Confirm password</label>
                        <input type="password" placeholder="Retype password Here.." id="password2" class="form-control">
                    </div>

                    <button type="submit" name="submite_btn" class="btn btn-lg btn-info" >Submit</button>
                    </div>
                </form>

    </div>
    </div>





    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/creative.min.js"></script>

    <!--adidas x js!-->
    <script src="js/adidas-x.js"></script>
    <!--comment js-->
    <script src="js/comment.js"></script>
    <script src="js/slider.js"></script>




</body>

</html>
