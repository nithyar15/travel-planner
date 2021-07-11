<!DOCTYPE>
<head>
    <title>navigation</title>
</head>
<style>
    .header{
        background: red;
        height: 100px;
    }

    @font-face {
        font-family: myfont;
        src: url("Apal.ttf");
    }
</style>
<body>
    <!--contains onmouseover and onmouseout functions to change color on hovering over the icons-->
<script type="text/javascript">
    function homeover() {
           document.getElementById("but1").src = "profile3.png";
       }
       function homeout() {
           document.getElementById("but1").src = "profile1.png";
       }

        function logover() {
           document.getElementById("but2").src = "logout3.png";
       }
       function logout() {
           document.getElementById("but2").src = "logout1.png";
       }

</script>

<img style="float:left; display:inline-block; " src="logo.png" width="40px" title="Trippy Logo"> <!--inserts logo-->

<div style="display:inline-block; padding:5px; width:20%; float:right;"><!--inserts website name-->
    
   
    <img src="profile1.png" style="padding:10px; float:right;" id="but1" width="40px" title="View Dashboard" onmouseover="homeover()" onmouseout="homeout()" onclick="location.href = 'dashboard.php';"> <!--displays button for dasbhoard-->
    <img src="logout1.png" style="padding:10px; float:right;" title="Logout" id="but2" width="40px" onmouseover="logover()" onmouseout="logout()" onclick="location.href = 'login.php';"> <!--displays button for logging out-->
    <img style="float:right;display:inline-block; padding:10px;" src="home3.png" width="40px" title="Currently in home"> <!--displays button for home-->
     
   
</div>

</body>
</html>

