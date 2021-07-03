<?php 
session_start();

	include("connection.php");
	include("functions.php");


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		$username = $_POST['username'];
		$pwd = $_POST['pwd'];
		$email = $_POST['email'];
		$myq = "SELECT * FROM users WHERE username = '$username'";
		$myr = mysqli_query($con,$myq);
		$flag = 0;

		if((!empty($username)) && (!empty($pwd)) && (mysqli_num_rows($myr)==0))
		{
			$userid = random_num(5);
			$quer1 = "INSERT INTO users (userid,username,email,pwd) values ('$userid','$username','$email','$pwd')";
			mysqli_query($con, $quer1);
			header("Location: login.php");
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
	<title>Signup</title>
</head>
<body>

	<style type="text/css">
	
	#text{

		height: 25px;
		border-radius: 5px;
		padding: 4px;
		border: solid thin #aaa;
		width: 100%;
	}

	#button{

		padding: 10px;
		width: 100px;
		color: white;
		background-color: lightblue;
		border: none;
	}

	#box{

		background-color: grey;
		margin: auto;
		width: 300px;
		padding: 20px;
	}

	</style>

	<div id="box">
		<form method="POST">
			<div style="font-size: 30px;margin: 10px;color: white;">Signup</div>
			<div style="font-size: 20px;margin: 10px;color: white;">Username</div>
			<input id="text" type="text" name="username"><br><br>
			<div style="font-size: 20px;margin: 10px;color: white;">Email ID</div>
			<input id="text" type="email" name="email"><br><br>
			<div style="font-size: 20px;margin: 10px;color: white;">Password</div>
			<input id="text" type="password" name="pwd"><br><br>
			<input id="button" type="submit" value="Signup"><br><br>
			<a href="login.php">Click to Login</a><br><br>
		</form>
	</div>
</body>
</html>