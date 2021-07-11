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
        
        $tripid = $_SESSION['tripid'];
        
		$query1 = "SELECT * FROM plan WHERE tripid = '$tripid' ";
		$result = mysqli_query($con,$query1);
        if($result){
		    $user_data = mysqli_fetch_assoc($result);
	    	return $user_data;
        }
        else
            echo "error in retrieving data<br>";
	        
    }
    else
        echo "error in retrieving data<br>";
}

function location_data($con, $count, $d,$x,){

    echo '<link rel="stylesheet" href="main_style.css">';
    $c = 1;
    $loop = 1;
    $a = 0;
    $query2 = "SELECT * FROM $x WHERE $x.id <= '$count'";
    $res2 = mysqli_query($con,$query2);
    if($res2){
        while($locdata = mysqli_fetch_assoc($res2)){
            $s = $a+1;
            echo "<div class='details'>";        
            if($a % 3 == 0){
                
                echo "<div class='date'>".$d->format('d-m-y')."</div>";
                $c++;
                $d->modify('+1 day');
            }
            
            if($loop == 1){
            $pl1 = $locdata['place'];
            $de1 = $locdata['det'];
            $image1 = $locdata['image'];
            $link1 = $locdata['link'];
            $visit1 = $locdata['visit'];
            }
            if($loop == 2){
            $pl2 = $locdata['place'];
            $de2 = $locdata['det'];
            $image2 = $locdata['image'];
            $link2 = $locdata['link'];
            $visit2 = $locdata['visit'];
            }
            if($loop == 3){
            $pl3 = $locdata['place'];
            $de3 = $locdata['det'];
            $image3 = $locdata['image'];
            $link3 = $locdata['link'];
            $visit3 = $locdata['visit'];
            }
            $loop++;
            if($loop == 4){            
            
                echo "<script>document.getElementById('desc').style.color='red'</script>";           
                echo "<div class='day'>";
                echo "<section class='dest1'>";
                echo '<img src= "//'.$image1.'" class="pic">';
                echo "<p class='caption'>$pl1</p>";
                echo "<div class='desc'><p id='text'>$de1";


                if($link1 == NULL && $visit1 == NULL)
                    echo "</p></div>";
                else if ($visit1 == NULL)
                    echo "<br><br><a href='$link1' style='color:#f09c67;' target='_blank'>Book Now</a></p></div>";
                else
                    echo "<br><br><a href='$visit1' style='color:#f09c67;' target='_blank'>Visit Website</a></p></div>";


                echo '</section>';
              
                echo "<section class='dest2'>";
                echo '<img src= "//'.$image2.'" class="pic">';
                echo "<p class='caption'>$pl2</p>";
                echo "<div class='desc'><p id='text'>$de2";
                
                if($link2 == NULL && $visit2 == NULL)
                    echo "</p></div>";
                else if ($visit2 == NULL)
                    echo "<br><br><a href='$link2' style='color:#f09c67;' target='_blank'>Book Now</a></p></div>";
                else
                    echo "<br><br><a href='$visit2' style='color:#f09c67;' target='_blank'>Visit Website</a></p></div>";

                echo '</section>';
            
                echo "<section class='dest3'>";
                echo '<img src= "//'.$image3.'" class="pic">';
                echo "<p class='caption'>$pl3</p>";
                echo "<div class='desc'><p id='text'>$de3";
                
                if($link3 == NULL && $visit3 == NULL)
                    echo "</p></div>";
                else if ($visit3 == NULL)
                    echo "<br><br><a href='$link3' style='color:#f09c67;' target='_blank'>Book Now</a></p></div>";
                else
                    echo "<br><br><a href='$visit3' style='color:#f09c67;' target='_blank'>Visit Website</a></p></div>";
            
                echo "</div>";
                echo "</div>";
                $loop = 1;
            }
            $a++;
            $c++;            
        }
    }
}

function dashboard_info($con, $count, $d,$x,$p){

    echo '<link rel="stylesheet" href="main_style.css">';
    $c = 1;
    $loop = 1;
    $a = 0;
    $query2 = "SELECT * FROM $x WHERE $x.id <= '$count'";
    $res2 = mysqli_query($con,$query2);
    if($res2){
        while($locdata = mysqli_fetch_assoc($res2)){
            $s = $a+1;
                 
            if($a % 3 == 0){ 
                
                echo "<br>".$d->format('d-m-y')."<br>";
                $c++;
                $d->modify('+1 day');
            }
            $pl = $locdata['place'];
            $de = $locdata['det'];
            $image = $locdata['image'];    
            
            echo " $pl . ";
            if(++$a % 3 == 0)
                echo "<br><br>";
            $c++;  
                     
        }
    }
}

function more_dashboard($con){
    echo '<link rel="stylesheet" href="main_style.css">';
    include("dashboard_nav.php");
    echo "<div id='empty1'></div>";
    $id = $_SESSION['userid'];
    $query = "SELECT * FROM users WHERE userid = '$id' ";
    $res = mysqli_query($con, $query);
    $data = mysqli_fetch_assoc($res);
    $name = $data['username'];
    echo "<div id='city'>.DASHBOARD.</div>";
    echo "<div id='welcome1'>".$name.", here are all your trip details</div>";
    
    
    $num = 1;
    $query3 = "SELECT * FROM plan WHERE usernum = '$id' ";
    
    $res3 = mysqli_query($con,$query3);
    if($res3){
        while($tripdata = mysqli_fetch_assoc($res3)){
            $place = $tripdata['dest'];
            $tripnum = $tripdata['tripid'];
            $ds = new DateTime($tripdata['start']);
            $de = new DateTime($tripdata['end']);
            $days = $de->diff($ds)->format("%a")+1;
            $nights = $days-1;
            
            echo "<div class='trip'>Trip no.".$num."</div>";
            if($num %2 == 0)
                echo "<div class='title'>".$days." days and ".$nights." nights at ".$place."</div>";   
            else
                echo "<div class='title1'>".$days." days and ".$nights." nights at ".$place."</div>";
            if($days>0 && $days<=8){
                 $count = 3*$days;
                 $d = new DateTime($tripdata['start']);
                 echo "<div class='overall'>";
                 dashboard_info($con,$count,$d,$place,$num); 
                 echo "</div>";    
                 
            }  
        $num++;
        }
        echo "<div id='empty'></div>";
        echo "</div>";
        
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

