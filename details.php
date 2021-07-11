<?php 
session_start();

	include("connection.php");
    include("functions.php");

    $dest = $_SESSION['dest']; //takes destination as a session variable
    $start = $_POST['start'];
    $_SESSION['start'] = $start; //takes start date as a session variable
    $end = $_POST['end'];
    $_SESSION['end'] = $end; //takes end date as a session variable
    $data = confirm_login($con);
    $tripid = random_num(10); //generates a random tripid numbers ny calling random_num() from functions.php
    $_SESSION['tripid'] = $tripid;

    $useride = $data['userid'];

    $d1 = new DateTime($start);
    $d2 = new DateTime($end);
    $diff = $d2->diff($d1)->format("%a")+1; //calculates trip duration in days
    $night = $diff-1; //calculates number of nights in the trip

    if($diff>7){
			echo "<script>window.alert('Kindly enter a date range that is within 7 days! ');</script>"; //displays alert if number of days exceeds 7
            echo "<script>location.replace('home.php')</script>";
		}
		if(!($diff>7 || $diff<1)){
		$query = "INSERT INTO plan (tripid,usernum,dest,start,end) VALUES ('$tripid','$useride','$dest','$start','$end')"; //sql query to insert trip details into table `plan`
		$res = mysqli_query($con, $query); //executes $query
        }

    $email = $_SESSION['email'];

    $que = "SELECT * FROM users WHERE email = '$email' LIMIT 1"; //sql query selects correct user details depending on email id
    $req = mysqli_query($con, $que);//executes query $que

    $disp = mysqli_fetch_assoc($req); //retrieves rows that satisfy the query
    $username = $disp['username'];
?>
<!DOCTYPE html>
<html>
<head>
	<title>TRIPPY-Itinerary</title>
    <link rel="stylesheet" href="main_style.css"> <!--external style sheet for itinerary page -->
</head>   
<body>
	
	<div class="overlay"></div>
    <?php include("nav.php") ?> 
    <script type='text/javascript'>

    var destination = '<?php echo $dest //to change background image depending on chosen destination ?>'; 
    if(destination == 'Seoul'){
        document.body.style.backgroundImage = "url('https://static.coindesk.com/wp-content/uploads/2018/01/Seoul-Korea-1200x628.jpg')";}
    if(destination== 'Paris') {
        document.body.style.backgroundImage = "url('https://images6.alphacoders.com/377/thumb-1920-377152.jpg')";
        }
    if(destination == 'Giza'){
        document.body.style.backgroundImage = "url('https://cdn.britannica.com/26/171026-050-11CE446C/Great-Sphinx-of-Giza-pyramid-background-Khafre.jpg')";}
    if(destination == 'Tokyo'){
        document.body.style.backgroundImage = "url('https://assets.vogue.com/photos/5e387ae1be72df00088bf8c8/master/w_2560%2Cc_limit/EEX74X.jpg')";}
    if(destination == 'Dubai'){
        document.body.style.backgroundImage = "url('https://www.visitdubai.com/-/media/gathercontent/poi/b/burj-khalifa/fallback-image/burj-khalifa.jpg')";}
    if(destination == 'Kerala'){
        document.body.style.backgroundImage = "url('https://wallpapercave.com/wp/wp2649841.jpg')";}
    if(destination == 'Vancouver'){
        document.body.style.backgroundImage = "url('https://a0.muscache.com/pictures/70fe8316-8b02-4d1c-b4d0-435006716e21.jpg')";}
    if(destination == 'Newyork'){
        document.body.style.backgroundImage = "url('https://images.musement.com/cover/0002/94/new-york-skyline-and-the-statue-of-liberty-xl-jpg_header-193952.jpeg')";}
    if(destination == 'Rio de Janeiro'){
        document.body.style.backgroundImage = "url('https://images2.alphacoders.com/946/946722.jpg')";}
    if(destination == 'Sydney'){
        document.body.style.backgroundImage = "url('https://www.roadaffair.com/wp-content/uploads/2017/12/sydney-opera-house-australia-shutterstock_557938795-1024x683.jpg')";}

</script>
    <div id="main-head">
        <!-- displays header portion of the website -->
		<div id="from">.<?php echo $d1->format('d-m-y')?>.</div> 
		<div id="city" style="text-transform : uppercase;"><?php echo $dest; ?></div>
		<div id="to">.<?php echo $d2->format('d-m-y')?>.</div>
	</div>
    <div id="welcome"><?php echo "$username here is your travel plan for $diff days and $night nights" ?></div>
	
    <?php
    //displays the correct links for hotel bookins and covid travel restrictions depending on the chosen destination -->
    if($diff>0 && $diff<=8){
            if($dest == "Newyork"){
                $hotel = "https://www.booking.com/city/us/new-york.en-gb.html?aid=318615;label=New_English_EN_BH_26761675585-nc5JV1vJq3DgUj_9nOTX3gS100840309705:pl:ta:p1:p2:ac:ap:neg:fi:tidsa-64415190745:lp1001478:li:dec:dm;ws=&gclid=Cj0KCQjwxJqHBhC4ARIsAChq4asUL8jfXCAbU1TZtE1pn4sGU0xwb4UW2i0G-mXWc87L2Vcj8ycGDDIaAhyUEALw_wcB";
                $covid = "https://coronavirus.health.ny.gov/covid-19-travel-advisory";
            }
            if($dest == "Paris"){
                $hotel = "https://www.booking.com/city/fr/paris.html?aid=1610684;label=paris-weQzKy7PkXbzjurmTuzcxAS412073484920:pl:ta:p1:p2:ac:ap:neg:fi:tikwd-43144960941:lp1001478:li:dec:dm:ppccp=UmFuZG9tSVYkc2RlIyh9YfqnDqqG8nt10AsofPfvtt0;ws=&gclid=Cj0KCQjwxJqHBhC4ARIsAChq4auOkVjpIVbFADO69DAtL4LJenhjyZrxYoeRvxZqt7-Mm_Z7bi5F-nYaAql3EALw_wcB";
                $covid = "https://www.gouvernement.fr/en/coronavirus-covid-19";
            }
            if($dest == "Sydney"){
               $hotel = "https://www.booking.com/city/au/sydney.html?aid=1610684;label=au-sydney-YQt9zp7TO_Z*zDagzgXgRQS484026608151:pl:ta:p1:p2:ac:ap:neg:fi:tikwd-300783273828:lp1001478:li:dec:dm:ppccp=UmFuZG9tSVYkc2RlIyh9YfqnDqqG8nt10AsofPfvtt0;ws=&gclid=Cj0KCQjwxJqHBhC4ARIsAChq4avqsNxWa4BZJg9d2Wi9O2wKdEwJzVgwxhPfXDgtXr-hf8vo6X6DBdQaAsSgEALw_wcB";
                $covid = "https://www.sydney.com/travel-information/travel-alerts";
            }
            if($dest == "Rio"){
               $hotel = "https://www.booking.com/accommodation/country/br.en-gb.html?aid=318615;label=New_English_EN_BH_26761675705-lzfnWxDvYrswwLWEqi5LFAS100840309945:pl:ta:p1:p2:ac:ap:neg:fi:tidsa-55482331735:lp1001478:li:dec:dm;ws=&gclid=Cj0KCQjwxJqHBhC4ARIsAChq4avvu01lxmNU6wClQDSexl_XwkAueW0u89TbvP3VCBAxPaGsrGFkLFAaAvrYEALw_wcB";
                $covid = "https://www.dfa.ie/travel/travel-advice/a-z-list-of-countries/brazil/";
            }
            if($dest == "Vancouver"){
               $hotel = "https://www.booking.com/city/ca/vancouver.en-gb.html?aid=318615;label=New_English_EN_BH_26761675585-nc5JV1vJq3DgUj_9nOTX3gS217290967678:pl:ta:p1:p2:ac:ap:neg:fi:tidsa-64415190745:lp1001478:li:dec:dm;ws=&gclid=Cj0KCQjwxJqHBhC4ARIsAChq4asrVBJ2voR09H8yB4pHFUcGWAIz8VQsspjZkY7BrhnEzF6GDLtuPd4aAij0EALw_wcB";
                $covid = "https://www2.gov.bc.ca/gov/content/covid-19/travel/current";
            }
            if($dest == "Giza"){
               $hotel = "https://www.booking.com/city/eg/cairo.en-gb.html?aid=318615;label=New_English_EN_BH_26761675585-nc5JV1vJq3DgUj_9nOTX3gS100840309705:pl:ta:p1:p2:ac:ap:neg:fi:tidsa-64415190745:lp1001478:li:dec:dm;ws=&gclid=Cj0KCQjwxJqHBhC4ARIsAChq4as8_XyB-VfDJbiMgzRLfEqk4H91nxKFAknQ7Xrg2Tu7mRs_5xecY_IaAoPAEALw_wcB";
                $covid = "https://www.care.gov.eg/EgyptCare/Index.aspx";
            }
            if($dest == "Kerala"){
               $hotel = "https://www.booking.com/accommodation/region/in/kerala.en-gb.html?aid=318615;label=New_English_EN_BH_26761675705-lzfnWxDvYrswwLWEqi5LFAS100840309945:pl:ta:p1:p2:ac:ap:neg:fi:tidsa-55482331735:lp1001478:li:dec:dm;ws=&gclid=Cj0KCQjwxJqHBhC4ARIsAChq4avm8VCa9TvhgG3H3WabsjEJFRxK029yfxq8zzx2v4erQhBMYMMp1AMaAunFEALw_wcB";
                $covid = "https://www.mygov.in/covid-19";
            }
            if($dest == "Seoul"){
               $hotel = "https://www.booking.com/city/kr/seoul.en-gb.html?aid=318615;label=New_English_EN_BH_26761675585-nc5JV1vJq3DgUj_9nOTX3gS100840309585:pl:ta:p1:p2:ac:ap:neg:fi:tidsa-64415190745:lp1001478:li:dec:dm;ws=&gclid=Cj0KCQjwxJqHBhC4ARIsAChq4auwQAwBZsvVzv0wR3cmkVznCr_jnMdi0DY1kYeWXpr1wLNxsrG-XcYaAnr6EALw_wcB";
                $covid = "https://travel.state.gov/content/travel/en/traveladvisories/traveladvisories/south-korea-travel-advisory.html";
            }
            if($dest == "Tokyo"){
               $hotel = "https://www.booking.com/city/jp/tokyo.html?redirected=1&aid=318615;label=New_English_EN_BH_26761675585-nc5JV1vJq3DgUj_9nOTX3gS100840309585:pl:ta:p1:p2:ac:ap:neg:fi:tidsa-64415190745:lp1001478:li:dec:dm;ws=&gclid=Cj0KCQjwxJqHBhC4ARIsAChq4autI6-7kVt6DAXiHesz3fulBkW-xzkX6kwWw_w19U4yKXfzsbh7wT4aAljHEALw_wcB";
                $covid = "https://www.japan.travel/en/coronavirus/";
            }
            if($dest == "Dubai"){
               $hotel = "https://www.booking.com/city/ae/dubai.html?aid=1610684;label=dubai-DBVXEjtxx*OsJovZuWqFOQS438109384754:pl:ta:p1:p2:ac:ap:neg:fi:tikwd-302085797493:lp1001478:li:dec:dm:ppccp=UmFuZG9tSVYkc2RlIyh9YfqnDqqG8nt10AsofPfvtt0;ws=&gclid=Cj0KCQjwxJqHBhC4ARIsAChq4as5zOiPjPjt3ggDLqAFtjW6SFQ3dn-zxb1v33o1STVI1Dil4zGFeEkaAucaEALw_wcB";
                $covid = "https://u.ae/en/information-and-services/justice-safety-and-the-law/handling-the-covid-19-outbreak/travelling-amid-covid-19/travelling-to-the-uae";
            }
            $count = 3*$diff; //calculates total number of attractions to be displayed ie. 3 per day
            $d = new DateTime($start);
            location_data($con,$count,$d,$dest,$diff); //calls function location_data from functions.php
            }
    ?>

    <center>
        <div id="#empty" style="height: 20vh;"></div> <!--empty div -->
        <!-- displays hotel booking link and covid restrictions link-->
        <a href="<?php echo $hotel ?>" target="_blank" style="color:white;">Check for Hotels in <?php echo $dest ?></a>

        <br><br><br>

        <a href="<?php echo $covid ?>" target="_blank" style="color:white;">COVID-19 Travel Restrictions in <?php echo $dest ?></a>
     </center>
    <!-- for page transitions -->
    <div id="pg"><img src="plane.png" id="plane"></div>

    <div id="#empty" style="height: 40vh;"></div>
    <?php include("footer.php"); //includes footer file at the bottom of the page ?>
</body>
</html>