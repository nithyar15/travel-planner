<?php 
session_start();

	include("connection.php");
    include("functions.php");
    more_dashboard($con);
    echo "<br><button onclick=window.location.href='main.php'>Create another trip</button>";
    echo "<br><br><button onclick=window.location.href='login.php'>Logout</button>";
?>