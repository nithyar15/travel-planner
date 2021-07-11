<?php 
session_start();

	include("connection.php");
	include("functions.php"); 

	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		$username = $_POST['username'];
		$pwd = $_POST['pwd'];
		$email = $_POST['email'];
		$myq = "SELECT * FROM users WHERE username = '$username'"; //sql query to select rows with usernames that already exist
		$myr = mysqli_query($con,$myq); //executes the query $myq

		if((!empty($username)) && (!empty($pwd)) && (mysqli_num_rows($myr)==0))
		{
			$userid = random_num(5); //calls a function from functions.php to generate a userid
			$quer1 = "INSERT INTO users (userid,username,email,pwd) values ('$userid','$username','$email','$pwd')"; //sql query to insert values into table `users`
			mysqli_query($con, $quer1); //executes the query `$quer1`
			header("Location: login.php"); //leads to website's homepage
			die;
		}else
		{
			echo "<script>window.alert('Please enter some valid information!')</script>";
		}
	}
?>

<!DOCTYPE html>
<html>
<head>
	<title>TRIPPY-Signup</title>
	<link rel="stylesheet" href="logsign.css">
</head>
<body>
	
	<div id="container">
		<img style="position:absolute; float:left;display:inline-block;" src="logo.png" width="40px" title="Trippy Logo">  <!--inserts logo to bottom left -->
		<div style="float:left; font-family:myFirstFont, sans-serif; margin-left:50px; margin-top:10px; opacity:0.8; font-size:22px; letter-spacing:4px; color:white;">TRIPPY</div> <!-- inserts website name --> 
		<div id="tagline">YOUR GATEWAY TO A PERFECT GETAWAY</div> <!-- inserts website tagline -->
	<div id="signup" class="box">
		<form method="POST"> <!-- form to collect user data for signup using POST method -->
			<div style="font-size: 30px;margin-left: 52px; color:#F09C67;">SIGN UP</div>
			<br><br><p>Username</p>
			<input class="inp" type="text" name="username"><br><br>
			<p>Email ID</p>
			<input class="inp" type="email" name="email"><br><br>
			<p>Password</p>
			<input class="inp" type="password" name="pwd"><br><br>
			<input id="button" type="submit" value="Signup"><br><br>
			<a href="login.php">Click to Login</a><br><br> <!-- hyperlink that leads to login.php onclick -->
		</form>
	</div>
	
	<div class="overlay"></div> <!-- gives slight black overlay to background image-->
	
	</div>
	
	<div id="pg"><img src="logo.png" id="logo"><p id="tag">YOUR GATEWAY TO A PERFECT GETAWAY</p></div>  <!-- inserts transition page when page is refreshed or opened -->
</body>
</html>