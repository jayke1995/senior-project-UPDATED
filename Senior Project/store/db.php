<?php

$servername = "sqldbforweb.cuc0twrqljlf.us-west-2.rds.amazonaws.com";
$username = "foo";
$password = "barbarbar";
$db = "onlinestore";
$db_charset = 'utf8';

// Create connection
$con = mysqli_connect($servername, $username, $password,$db);

// Check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}


?>