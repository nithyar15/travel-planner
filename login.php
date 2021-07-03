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
			$quer = "SELECT * FROM users WHERE email = '$email' LIMIT 1";
			$result = mysqli_query($con, $quer);

			if($result)
			{
				if($result && mysqli_num_rows($result) > 0)
				{

					$data = mysqli_fetch_assoc($result);
					
					if($data['pwd'] === $pwd)
					{

						$_SESSION['userid'] = $data['userid'];
                        
						header("Location: main.php");
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
		
		<form method="post">
			<div style="font-size: 30px;margin: 10px;color: white;">Login</div>

			<div style="font-size: 20px;margin: 10px;color: white;">Email ID</div>
			<input id="text" type="email" name="email"><br><br>
			<div style="font-size: 20px;margin: 10px;color: white;">Password</div>
			<input id="text" type="password" name="pwd"><br><br>

			<input id="button" type="submit" value="Login"><br><br>

			<a href="signup.php">Click to Signup</a><br><br>
		</form>
	</div>
</body>
</html>