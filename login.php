<?php 

session_start();

	include("connection.php");
	include("functions.php");


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		$email = $_POST['email'];
		$pwd = $_POST['pwd'];
		$username = $_POST['username'];
		$_SESSION['username'] = $username;
        $_SESSION['email'] = $email;
		if(!empty($email) && !empty($pwd))
		{
			$quer = "SELECT * FROM users WHERE email = '$email' LIMIT 1"; //sql query to select rows where entered emails match
			$result = mysqli_query($con, $quer); //executes the query $quer

			if($result)
			{
				if($result && mysqli_num_rows($result) > 0)
				{

					$data = mysqli_fetch_assoc($result);
					
					if($data['pwd'] === $pwd) //checks of stored password and entered password are the same
					{

						$_SESSION['userid'] = $data['userid'];
                        
						header("Location: home.php"); //leads to website's homepage
						die;
					}
				}
			}
			echo "<script>window.alert('Wrong username or password!')</script>";
		}else
		{
			echo "<script>window.alert('Wrong username or password!')</script>";
		}
	}

?>


<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" href="logsign.css">
</head>
<body>	
	<div id="container">
		<img style="position:absolute; float:left;display:inline-block;" src="logo.png" width="40px" title="Trippy Logo"> <!--inserts logo to bottom left -->
		<div style="float:left; font-family:myFirstFont, sans-serif; margin-left:50px; margin-top:10px; opacity:0.8; font-size:22px; letter-spacing:4px; color:white;">TRIPPY</div> <!-- inserts website name -->
		<div id="tagline">YOUR GATEWAY TO A PERFECT GETAWAY</div> <!-- inserts website tagline -->
	<div class="box" id="login">
		<form method="post"> <!-- form to collect user data for login using POST method -->
			<div style="font-size: 30px;margin-left: 60px; color:#F09C67;">LOGIN</div>
			<br><br>
			<p>Email ID<p>
			<input class="inp" type="email" name="email"><br>
			<p>Password</p>
			<input class="inp" type="password" name="pwd"><br><br>
			<input id="button" type="submit" value="Login"><br><br>
			<p style="font-size: 15px; margin-left: 28px; ">Don't have an account?</p>
			<a href="signup.php">Click to Signup</a><br> <!-- hyperlink that leads to signup.php onclick -->
		</form>
	</div>
	<div class="overlay"></div> <!-- gives slight black overlay to background image-->
	</div>
	<div id="pg"><img src="logo.png" id="logo"><p id="tag">YOUR GATEWAY TO A PERFECT GETAWAY</p></div> <!-- inserts transition page when page is refreshed or opened -->
</body>
</html>