<?php 
session_start();

	include("connection.php");
    include("functions.php");
	$user_data = check_login($con);
    $d1 = new DateTime($user_data['start']);
    $d2 = new DateTime($user_data['end']);
    $diff = $d2->diff($d1)->format("%a")+1;
    $place = $user_data['dest'];
    $email = $_SESSION['email'];
    $que = "SELECT * FROM users WHERE email = '$email' LIMIT 1";
    $req = mysqli_query($con, $que);
    $disp = mysqli_fetch_assoc($req);
    $username = $disp['username'];
?>
<!DOCTYPE html>
<html>
<head>
	<title>Homepage</title>
</head>
<body>
    <h1>Welcome, <?php echo $username; ?></h1>
    <hr>
	<h2>Here is your travel itinerary for <?php echo $user_data['dest']; ?>
    <h2>Starting from <?php echo $d1->format('d-m-y') ?> to <?php echo $d2->format('d-m-y') ?> </h2>
    <h2>Your trip duration: <?php echo $diff ?> days </h2>
    <hr>
    <?php
    if($diff>0 && $diff<=8){
            $count = 3*$diff;
            $d = new DateTime($user_data['start']);
            echo "<h3>About $place</h3>";
            location_description($con,$place);
            location_data($con,$count,$d,$place);
            }
    ?>
    <center>
    <button onclick="window.print()" style="padding:10px; border:none; width:100px; color:white; background-color:lightgreen;">Print</button><br><br>
    <button onclick='location.href="dashboard.php"'>View Dashboard</button><br>
    <br><button onclick=window.location.href='main.php'>Create another trip</button>
    <br><br><button onclick=window.location.href='login.php'>Logout</button>
    </center>
</body>
</html>