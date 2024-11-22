<?php
    session_start();
    include('../includes/dbconn.php');
    include('../includes/check-login.php');
    check_login();
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>HOSTEL MANAGMENT</title>
	<link rel="stylesheet" href="das.css">
	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/favicon.png">
    <title>Hostel Management System</title>
    <!-- Custom CSS -->
    <link href="../assets/extra-libs/c3/c3.min.css" rel="stylesheet">
    <link href="../assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../dist/css/style.min.css" rel="stylesheet">

 <div class="navbar-brand">
                        <!-- Logo icon -->
                        <a href="index.html">
                            <b class="logo-icon">
                                <!-- Dark Logo icon -->
                                <img src="../assets/images/log.png" alt="homepage" class="dark-logo" />
                                <!-- Light Logo icon -->
                               
                            </b>
                            <!--End Logo icon -->
                            <!-- Logo text -->
                            <span class="logo-text">
                                <!-- dark Logo text -->
                                <img src="../assets/images/logo-text-nav.png" alt="homepage" class="dark-logo" />
                                <!-- Light Logo text -->
                              
                            </span>
                        </a>
                    </div>
</head>

<body>

  
  <div class="wrapper">
    <div class="sidebar">
       
        <div>
 <!--<img src="../assets/images/log.png" alt="homepage" class="type2" /-->
                            
                             
</div>
 
        <ul>
            <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="dashboard.php"
        aria-expanded="false"><i data-feather="home" class="feather-icon"></i><span
         class="hide-menu"> Dashboard</span></a></li>

       

        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="log-activity.php"
        aria-expanded="false"><i class="fas fa-cogs"></i><span
        class="hide-menu"> Log Activities</span></a></li>


                            
        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="book-hostel.php"
        aria-expanded="false"><i class="fas fa-h-square"></i><span
        class="hide-menu">Book Hostel</span></a></li>

        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="room-details.php"
        aria-expanded="false"><i class="fas fa-bed"></i><span
        class="hide-menu">My Room Details</span></a></li>

      

<li class="sidebar-item">  <a class="dropdown-item" href="logout.php"><i data-feather="power"
                           class="svg-icon mr-2 ml-1"></i>
                                     Logout</a>


        </ul> 

       
    <div class="main_content">
        <div class="header">Welcome!! Have a nice day.</div>  


 




 <script src="../assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="../assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- apps -->
    <!-- apps -->
   
    <script src="../dist/js/app-style-switcher.js"></script>
    <script src="../dist/js/feather.min.js"></script>
    <script src="../assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="../dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../dist/js/custom.min.js"></script>
    <!--This page JavaScript -->
    <script src="../assets/extra-libs/c3/d3.min.js"></script>
    <script src="../assets/extra-libs/c3/c3.min.js"></script>
    <script src="../assets/libs/chartist/dist/chartist.min.js"></script>
    <script src="../assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
    <script src="../dist/js/pages/dashboards/dashboard1.min.js"></script>

 

</body>
</html>