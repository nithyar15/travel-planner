<!DOCTYPE>
<head>
    <title>navigation</title>
</head>
<style>
    .header{
        background: red;
        height: 100px;
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

       function plusover() {
           document.getElementById("but3").src = "plus3.png";
       }
       function plusout() {
           document.getElementById("but3").src = "plus1.png";
       }

       function printover() {
           document.getElementById("but4").src = "print3.png";
       }
       function printout() {
           document.getElementById("but4").src = "print1.png";
       }
</script>
<style>
    @font-face {
        font-family: Apal;
        src: url("Apal.ttf");
    }
</style>

<img style="float:left;display:inline-block;" src="logo.png" width="40px" title="Trippy Logo"> <!--inserts logo-->
<div style="float:left; font-family:Apal; margin-left:7px; margin-top:13px; letter-spacing:4px; opacity:0.8; font-size:23px; color:white;">TRIPPY</div> <!--inserts website name-->

<div style="display:inline-block; padding:5px;  width:20%; float:right;">
    
    <img src="profile3.png" style="float:right; padding:10px;" id="but1" width="40px" title="Currently in Dashboard"> <!--displays button for dasbhoard-->

    <img src="logout1.png" style="float:right; padding:10px;" title="Logout" id="but2" width="40px" onmouseover="logover()" onmouseout="logout()" onclick="location.href = 'login.php';">

    <img src="print1.png" style="padding:10px; float:right;" title="Print" id="but4" width="40px" onmouseover="printover()" onmouseout="printout()" onclick="window.print();"> <!--displays button for logging out-->

    <img src="plus1.png" style="float:right; padding:10px;" id="but3" title="Create New Trip" width="40px" onmouseover="plusover()" onmouseout="plusout()" onclick="location.href = 'home.php';"> <!--displays button for creating another trip-->
   
</div>

</body>
</html>

