<?php 
session_start();

	include("connection.php");
    include("functions.php");
?>
    <!DOCTYPE html>
<html>
<head>
	<title>TRIPPY-Dashboard</title>
    <link rel="stylesheet" href="main_style.css"> <!--external style sheet for dashboard page -->
</head>   
<body>
	
     <style type='text/css'>
		body{
        background: linear-gradient(0, rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),url('https://images.unsplash.com/photo-1547897433-eaa570230bda?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80');
		
		}
    
    </style> <!--background for dashboard page -->

    <?php more_dashboard($con); //calls function from funtion.php to display dashboard details ?>
    <div id="empty"></div>
    <?php include("footer.php"); //includes footer file at the end of the webpage ?>
  