<?php

	session_start();
	include("connection.php");
	include("functions.php");
	$email = $_SESSION['email'];
	$quer = "SELECT * FROM users WHERE email = '$email'";
	$res = mysqli_query($con, $quer);
	if($res)
		$data = mysqli_fetch_assoc($res);
	$name = $data['username'];
	$_SESSION['username'] = $name;

?>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>TRIPPY-Homepage</title>
		<link rel="stylesheet" href="home.css">
		<link rel="stylesheet" href="globe.css">
		
	</head>
	<body>
		<div id="menu-bar">
		<?php include("home_nav.php"); ?>
		<div style="float:left; font-family:Apal; margin-left:7px; margin-top:13px; letter-spacing:4px; opacity:0.8; font-size:22px; color:white;">TRIPPY</div>
		</div>
		<div style="float:right; font-family:Apal; margin-left:1280px;top:15px; text-transform:uppercase; letter-spacing:4px; opacity:0.8; font-size:22px; color:white;position:absolute;">HI,<?php echo $name; ?></div>
		</div>
		<div id="head"></div>
		<div id="globe">
			<p id="txt1">CLICK A</p><br>
			<p id="txt2">PIN TO</p><p id="create">create</p>
			<p id="txt3">YOUR TRIP</p>
			<img src="darkbg2.png" id="bg">
			<img src="map.jpg" id="map">
			
			<img src="pin.png" id="p-van" class="pin" title="Vancouver" onclick="van()">
			<img src="pin.png" id="p-ny" class="pin" title="New York" onclick="ny()">
			<img src="pin.png" id="p-rio" class="pin" title="Rio De Janeiro" onclick="rio()">
			<img src="pin.png" id="p-par" class="pin" title="Paris" onclick="par()">
			<img src="pin.png" id="p-giz" class="pin" title="Giza" onclick="giz()">
			<img src="pin.png" id="p-dub" class="pin" title="Dubai" onclick="dub()">
			<img src="pin.png" id="p-ker" class="pin" title="Kerala" onclick="ker()">
			<img src="pin.png" id="p-seo" class="pin" title="Seoul" onclick="seo()">
			<img src="pin.png" id="p-tok" class="pin" title="Tokyo" onclick="tok()">
			<img src="pin.png" id="p-syd" class="pin" title="Sydney" onclick="syd()">	
		</div>
		
		<div id="dest">
			<form method="POST" action="dest.php" id="form">
				<input type = "text" value="" name="dest" id="desti">
				<input type = "text" value="" name="bg" id="bgurl">
				<input type = "submit" id="click"> 
			</form>
		</div>
		
		<div id="end"></div>
		<?php include("footer.php"); ?>
		<div id="pg">
			<img src="plane.png" id="plane">		
		</div>
		<div id="pg2"><img src="logo.png" id="logo"><p id="tag">YOUR GATEWAY TO A PERFECT GETAWAY</p></div> <!-- inserts transition page when page is refreshed or opened -->
		<script type="text/javascript">	
		
			document.addEventListener('scroll',function(){
			let val = window.scrollY;
			
			if(val<20){
				document.getElementById("map").style.left = 30 + "vw";
				document.getElementById("p-van").style.left = 730 + "px";
				document.getElementById("p-ny").style.left = 850 + "px";
				document.getElementById("p-rio").style.left = 907 + "px";
				document.getElementById("p-par").style.left = 1004 + "px";
				document.getElementById("p-giz").style.left = 1070 + "px";
				document.getElementById("p-dub").style.left = 1135 + "px";
				document.getElementById("p-ker").style.left = 1193 + "px";
				document.getElementById("p-seo").style.left = 1306 + "px";
				document.getElementById("p-tok").style.left = 1336 + "px";
				document.getElementById("p-syd").style.left = 1387 + "px";
			}
		
			else if(val>240){
				document.getElementById("map").style.left = -200 + "px";
				document.getElementById("p-van").style.left = 65 + "px";
				document.getElementById("p-ny").style.left = 190 + "px";
				document.getElementById("p-rio").style.left = 247 + "px";
				document.getElementById("p-par").style.left = 344 + "px";
				document.getElementById("p-giz").style.left = 410 + "px";
				document.getElementById("p-dub").style.left = 475 + "px";
				document.getElementById("p-ker").style.left = 525 + "px";
				document.getElementById("p-seo").style.left = 638 + "px";
				document.getElementById("p-tok").style.left = 668 + "px";
				document.getElementById("p-syd").style.left = 719 + "px";
			}
			
			else{
				let newmap=30-(val*0.18);
				let newvan=730-(val*2.8);			
				let newny=850-(val*2.8);			
				let newrio=907-(val*2.8);			
				let newpar=1004-(val*2.8);			
				let newgiz=1070-(val*2.8);			
				let newdub=1135-(val*2.8);			
				let newker=1193-(val*2.8);			
				let newseo=1306-(val*2.8);			
				let newtok=1336-(val*2.8);			
				let newsyd=1387-(val*2.8);	
				
				document.getElementById("map").style.left = newmap + "vw";
				document.getElementById("p-van").style.left = newvan + "px";
				document.getElementById("p-ny").style.left = newny + "px";
				document.getElementById("p-rio").style.left = newrio + "px";
				document.getElementById("p-par").style.left = newpar + "px";
				document.getElementById("p-giz").style.left = newgiz + "px";
				document.getElementById("p-dub").style.left = newdub + "px";
				document.getElementById("p-ker").style.left = newker + "px";
				document.getElementById("p-seo").style.left = newseo + "px";
				document.getElementById("p-tok").style.left = newtok + "px";
				document.getElementById("p-syd").style.left = newsyd + "px";
			}
			
			//VANCOUVER
			if(val>78){
				document.getElementById("p-van").style.zIndex="0";}
			else{
				document.getElementById("p-van").style.zIndex="100";}	
				
			//NEWYORK
			if(val>123||val<38){
				document.getElementById("p-ny").style.zIndex="0";}
			else{
				document.getElementById("p-ny").style.zIndex="100";}
				
			//RIO
			if(val>132||val<54){
				document.getElementById("p-rio").style.zIndex="0";}
			else{
				document.getElementById("p-rio").style.zIndex="100";}
				
			//PARIS
			if(val>170||val<80){
				document.getElementById("p-par").style.zIndex="0";}
			else{
				document.getElementById("p-par").style.zIndex="100";}	
				
			//GIZA
			if(val>200||val<100){
				document.getElementById("p-giz").style.zIndex="0";}
			else{
				document.getElementById("p-giz").style.zIndex="100";}
				
			//DUBAI
			if(val>229||val<120){
				document.getElementById("p-dub").style.zIndex="0";}
			else{
				document.getElementById("p-dub").style.zIndex="100";}
				
			//KERALA
			if(val<150){
				document.getElementById("p-ker").style.zIndex="0";}
			else{
				document.getElementById("p-ker").style.zIndex="100";}	
			
			//SEOUL
			if(val<180){
				document.getElementById("p-seo").style.zIndex="0";	
			}
			else{
				document.getElementById("p-seo").style.zIndex="100";
			}	
			//TOKYO
			if(val<190){
				document.getElementById("p-tok").style.zIndex="0";}
			else{
				document.getElementById("p-tok").style.zIndex="100";}
				
			//SYDNEY
			if(val<210){
				document.getElementById("p-syd").style.zIndex="0";}
			else{
				document.getElementById("p-syd").style.zIndex="100";}	
		})
		
		function van(){
			document.getElementById("desti").value = "Vancouver";
			document.getElementById("bgurl").value = "https://a0.muscache.com/pictures/70fe8316-8b02-4d1c-b4d0-435006716e21.jpg";
			document.getElementById("click").click();
			
		}
		function ny(){
			document.getElementById("desti").value = "Newyork";
			document.getElementById("bgurl").value = "https://images.musement.com/cover/0002/94/new-york-skyline-and-the-statue-of-liberty-xl-jpg_header-193952.jpeg";
			document.getElementById("click").click();
		}
		function rio(){
			document.getElementById("desti").value = "Rio";
			document.getElementById("bgurl").value = "https://images2.alphacoders.com/946/946722.jpg";
			document.getElementById("click").click();
		}
		function par(){
			document.getElementById("desti").value = "Paris";
			document.getElementById("bgurl").value = "https://wallpapercave.com/wp/c8MSprE.jpg";
			document.getElementById("click").click();
		}
		function giz(){
			document.getElementById("desti").value = "Giza";
			document.getElementById("bgurl").value = "https://cdn.britannica.com/26/171026-050-11CE446C/Great-Sphinx-of-Giza-pyramid-background-Khafre.jpg";
			document.getElementById("click").click();
		}
		function dub(){
			document.getElementById("desti").value = "Dubai";
			document.getElementById("bgurl").value = "https://www.visitdubai.com/-/media/gathercontent/poi/b/burj-khalifa/fallback-image/burj-khalifa.jpg";
			document.getElementById("click").click();
		}
		function ker(){
			document.getElementById("desti").value = "Kerala";
			document.getElementById("bgurl").value = "https://wallpapercave.com/wp/wp2649841.jpg";
			document.getElementById("click").click();
		}
		function seo(){
			document.getElementById("desti").value = "Seoul";
			document.getElementById("bgurl").value = "https://static.coindesk.com/wp-content/uploads/2018/01/Seoul-Korea-1200x628.jpg";
			document.getElementById("click").click();
		}
		function tok(){
			document.getElementById("desti").value = "Tokyo";
			document.getElementById("bgurl").value = "https://assets.vogue.com/photos/5e387ae1be72df00088bf8c8/master/w_2560%2Cc_limit/EEX74X.jpg";
			document.getElementById("click").click();
		}
		function syd(){
			document.getElementById("desti").value = "Sydney";
			document.getElementById("bgurl").value = "https://www.roadaffair.com/wp-content/uploads/2017/12/sydney-opera-house-australia-shutterstock_557938795-1024x683.jpg";
			document.getElementById("click").click();
		}
		function fn(){
			document.getElementById("but").click();
		}
		var open = document.getElementById("click");
		var trans= document.getElementById("pg");
		var fly= document.getElementById("plane");
		open.addEventListener("click",function(event){
			event.preventDefault();
			trans.classList.add("slide");
			fly.classList.add("takeoff");
			setTimeout(function(){ document.getElementById("form").submit();}, 1500);
			});
	</script>
	</body>
</html>
