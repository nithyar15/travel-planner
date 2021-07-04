<?php
	session_start();
	$dest=$_POST["dest"];
	$bg=$_POST["bg"];
	$_SESSION["dest"]= $dest;
?>
<!DOCTYPE html>
<html>
	<head>
		<title>CREATE TRIP</title>
		<style type="text/css">
		#container{
			background: url(<?php echo $bg; ?>);
		}
		</style>
		<link rel="stylesheet" href="dest.css">
	</head>
	<body>
	
		<div id="container">
			<div id="box">
				<form method="POST", action="details.php">
					<p style="font-size: 30px;margin: 10px; color:#F09C67;">CREATE TRIP</p>
					<br>
					<p>Start</p>
					<input class="date" type="date" name="start"><br><br>
		
					<p>End</p>
					<input class="date" type="date" name="end"><br><br>
					<br>
					<input id="button" type="submit" value="GO !"><br><br>
				</form>
			</div>
			<div class="overlay"></div>
			<div id="text">
				<p id="des">DESTINATION</p>
				<p id="loc"><?php echo $dest."."; ?></p>
			</div>
			<div id="pg"><img src="plane.png" id="plane"></div>
		</div>
	</body>
</html>
