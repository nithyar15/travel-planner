<?php
function confirm_login($con){
    	if(isset($_SESSION['userid']))
	{

		$id = $_SESSION['userid'];
		$query = "SELECT * FROM users WHERE userid = '$id' LIMIT 1";
		$result = mysqli_query($con,$query);
		if($result && mysqli_num_rows($result) > 0)
		{
			$data = mysqli_fetch_assoc($result);
			return $data;
		}
	}
	header("Location: login.php");
	die;
}
function check_login($con)
{
    if(isset($_SESSION['tripid'])){
        //echo "data retrieved succesfully<br>";
        $tripid = $_SESSION['tripid'];
        //echo $tripid;
		$query1 = "SELECT * FROM plan WHERE tripid = '$tripid' ";
		$result = mysqli_query($con,$query1);
        if($result){
		    $user_data = mysqli_fetch_assoc($result);
	    	return $user_data;
        }
        else
            //echo "error in retrieving data<br>";
	header("Location: login.php");
	die;
    }
    else
        echo "error in retrieving data<br>";
}

function location_data($con, $count, $d,$x){

    $c = 1;
    $a = 0;
    $query2 = "SELECT * FROM $x WHERE $x.id <= '$count'";
    $res2 = mysqli_query($con,$query2);
    if($res2){
        while($locdata = mysqli_fetch_assoc($res2)){
            $s = $a+1;
            if($a % 3 == 0){
                echo "<h3>Day $c <br>".$d->format('d-m-y')."</h3>";
                echo "<br>";
                $d->modify('+1 day');
                $c++;
            }
            echo $locdata["place"]."<br>";
            echo $locdata["det"]."<br>";
            $image = $locdata["image"];
            echo '<img src= "//'.$image.'" alt="monument">'."<br><br><br>";
            if($s%3==0)
                echo "<hr>";
            $a++;

        }
    }
}
function location_description($con,$place){
    $q4 = "SELECT * FROM cityinfo WHERE city = '$place'";
    $r4 = mysqli_query($con,$q4);
    if($r4){
         while($description = mysqli_fetch_assoc($r4)){
          echo $description["info"]."<br>";
          }
        }
}

function more_dashboard($con){
    $id = $_SESSION['userid'];
    $num = 1;
    $query3 = "SELECT * FROM plan WHERE usernum = '$id' ";
    $res3 = mysqli_query($con,$query3);
    echo "<form method='POST'><input type='submit' name='one' value='Click to view schedule for all trips'></form>";
    if($res3){
        while($tripdata = mysqli_fetch_assoc($res3)){
            $place = $tripdata['dest'];
            $tripnum = $tripdata['tripid'];
            $ds = new DateTime($tripdata['start']);
            $de = new DateTime($tripdata['end']);
            $days = $de->diff($ds)->format("%a")+1;
            $nights = $days-1;
            echo "<h3><u>Trip $num :</u><br>";
            echo "$days days and $nights nights at $place</h3>";    
            if(isset($_POST['one'])){
            if($days>0 && $days<=8){
                 $count = 3*$days;
                 $d = new DateTime($tripdata['start']);
                 echo "<h3>About $place</h3>";
                 location_description($con,$place);
                 location_data($con,$count,$d,$place);     
            }  
        }
        $num++;
        }
        if(isset($_POST['one'])){
            echo '<br><br><button onclick="window.print()" style="padding:10px; border:none; width:200px; color:white; background-color:lightgreen;">Print all details</button><br><br>';
        }
        $page = $_SERVER['PHP_SELF'];
        print "<a href=\"$page\">Show less</a>";
    }
}

function random_num($length)
{
	$text = "";
	$len = rand(4,$length);
	for ($i=0; $i < $len; $i++) { 
		$text .= rand(0,9);
	}
	return $text;
}

?>
