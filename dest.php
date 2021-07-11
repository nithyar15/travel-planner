<?php
	session_start();
	$dest=$_POST["dest"]; //collected as form data from home.php
	$bg=$_POST["bg"]; //collected as form data from home.php
	$_SESSION["dest"]= $dest;
?>
<!DOCTYPE html>
<html>
	<head>
		<title>TRIPPY-Create Trip</title>
		<style type="text/css">
		#container{
			background: url(<?php echo $bg; //sets background image as url from home.php?>); 
		}
		</style>
		<link rel="stylesheet" href="dest.css"> <!--external style sheet for date selection page-->
	</head>
	<body>
	
		<div id="container">
			<div id="box">
				<form method="POST" id="form2" action="details.php"> <!--form to collect trip start and end dates from the user -->
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
			<!--for page transitions-->
			<div id="pg2"><img src="plane.png" id="plane2"></div>
			<div class="overlay"></div>
			<div id="text">
				<!-- displays destination name on date selection page-->
				<p id="des">DESTINATION</p>
				<p id="loc"><?php echo $dest."."; ?></p>
			</div>
			<div id="pg"><img src="plane.png" id="plane"></div>
		</div>
		<!-- animation for page transitions -->
		<script type="text/javascript">
			var open = document.getElementById("button");
			var tran= document.getElementById("pg2");
			var fly= document.getElementById("plane2");
			open.addEventListener("click",function(event){
			event.preventDefault();
			tran.classList.add("slide");
			fly.classList.add("takeoff");
			setTimeout(function(){ document.getElementById("form2").submit();}, 1500);
			});
			
		</script>
	</body>
</html>
