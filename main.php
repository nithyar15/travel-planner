<?php 
session_start();

	include("connection.php");
    include("functions.php");
	$data = confirm_login($con);
	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		$dest = $_POST['dest'];
		$start = $_POST['start'];
        $end = $_POST['end'];
		$tripid = random_num(10);
		$useride = $data['userid'];
		$d1 = new DateTime($start);
    	$d2 = new DateTime($end);
    	$diff = $d2->diff($d1)->format("%a")+1;
		$days = $diff+1;
		if($days>7){
			echo "<script>window.alert('Kindly enter a date range that is within 7 days! ');</script>";
		}
		if(!($days>7)){
		$query = "INSERT INTO plan (tripid,usernum,dest,start,end) VALUES ('$tripid','$useride','$dest','$start','$end')";
		$res = mysqli_query($con, $query);
		if($res){
			echo "insertion succesful<br>";
		}
		else{
			echo "insertion unsuccesful: ".$con->error."<br>";
		}
        $_SESSION['tripid'] = $tripid;
		mysqli_close($con);
		header("Location: details.php");
	}
		//die;
	}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Create Trip</title>
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
		background-color: lightgreen;
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
			<div style="font-size: 30px;margin: 10px;color: white;">Create Trip</div>
            <div style="font-size: 20px;margin: 10px;color: white;">Destination</div>
			<input id="text" type="text" name="dest"><br><br>
            <div style="font-size: 20px;margin: 10px;color: white;">Start</div>
			<input id="text" type="date" name="start"><br><br>
            <div style="font-size: 20px;margin: 10px;color: white;">End</div>
            <input id="text" type="date" name="end" ><br><br>
			<input id="button" type="submit" value="Go!"><br><br>
		</form>
		
	</div>
</body>
</html>