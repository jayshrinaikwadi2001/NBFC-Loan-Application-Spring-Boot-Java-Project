<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personal Loan</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
         .text-section {
            margin-top: 50px; /* Adjust the margin-top value as needed */
            padding: 100px;
            height: 300px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .text-section h1 {
            font-size: 60px;
            font-weight: bold;
        }

          
        .text-section h2 {
            margin-bottom: 20px;
        }
          
        .image-section {
            position: relative;
            background-size: cover;
            height: 400px;
            padding-left: 50px; /* Adjust as needed */
        }

        .background-image {
            position: absolute;
            top: 0;
            left: 150px; /* Adjust as needed */
            width: 80%;
            height: 120%;
            z-index: 0;
        }

        .image-overlay {
            position: absolute;
            top: 200px; /* Adjust as needed */
            right: 150px; /* Adjust as needed */
            height: 99%;
            width: 80%;
            z-index: 1;
        }

        /* Custom style for Apply for Loan button */
        .btn-primary {
            background-color: brown;
            border-color: brown;
            color: white; 
        }
    </style>
    <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- owl stylesheets --> 
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesheet" href="css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light bg-transparent" id="gtco-main-nav">
    <div class="container"><a class="navbar-brand">ACJ Finance</a>
        <button class="navbar-toggler" data-target="#my-nav" onclick="myFunction(this)" data-toggle="collapse"><span
                class="bar1"></span> <span class="bar2"></span> <span class="bar3"></span></button>
        <div id="my-nav" class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
               <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" href="#" id="servicesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Loans</a>
    <ul class="dropdown-menu" aria-labelledby="servicesDropdown">
        <li class="dropdown-item"><a href="HomeLoan">Home Loan</a></li>
        <li class="dropdown-item"><a href="PersonalLoan">Personal Loan</a></li>
        <li class="dropdown-item"><a href="BusinessLoan">Business Loan</a></li>
    </ul>
</li>

                <li class="nav-item"><a class="nav-link" href="Deposit">Deposits</a></li>
                <li class="nav-item"><a class="nav-link" href="Calculator">Calculator</a></li>
                <li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
            </ul>
            
<form class="form-inline my-2 my-lg-0">
    <a href="login" class="btn btn-info my-2 my-sm-0 text-uppercase mr-2">Login</a>
    <a href="register" class="btn btn-info my-2 my-sm-0 text-uppercase">Register</a>
</form>


            
        </div>
    </div>
</nav>
         

<div class="container mt-5">
    <div class="row align-items-center">
        <div class="col-md-6 text-section">
            <!-- Text section with vertical centering -->
            <h1 id="personal loan" style="font-size: 60px;  font-weight: bold;">Building a Brighter Financial Future & Good Support.</h1>

            <p>Personal loans are loans that can cover several personal expenses. A personal loan can be a good alternative if you want to finance a major purchase but don't want to be locked into how you use the money. You need to be a residing citizen of India. You should be aged between 21 years and 80 years* You need to be employed with a private, public limited company, or an MNC. Usually, you will need income proof (bank statements, salary slips or IT returns), address proof and ID proof. Hand over copies of your Personal Loan documents at the bank.</p>
            <button type="button" class="btn btn-primary custom-btn" style="background-color: brown; border-color: brown; color: white; width: 150px;">APPLY FOR LOAN</button>


        </div>

        <div class="col-md-6 image-section">
            <!-- Background image goes here -->
            <img class="image-overlay" src="images/i2.jpg" alt="Overlay Image">
            <!-- Overlay image with slight overlap -->
            <img class="background-image" src="images/i1.jpg" alt="Background Image">
        </div>
    </div>
</div>
  <!-- Eligibility section end -->
  <div class="advisor_section" style="margin-top: 250px;">
    <div class="container">
       <h1 class="what_text">Eligibility</h1>
    </div>
 </div>    
  
 <div class="advisor_section_2 layout_padding">
    <div class="container">
       <div class="box_section">
          <div class="row">
             <div class="col-lg-4 col-sm-12">
                <div class="box_main">
                   <div class="image_3"></div>
                   <h4 class="consultative_text">Age</h4>
                   <p class="readable_text">21 To 59 Years.</p>
                </div>
             </div>
             <div class="col-lg-4 col-sm-12">
                <div class="box_main active">
                   <div class="image_5 active"></div>
                   <h4 class="consultative_text active">Income Proof</h4>
                   <p class="readable_text active">Salaried: Work experience of 1 year
                    Self-Employed: Business Operations for two years.</p>
                </div>
             </div>
             <div class="col-lg-4 col-sm-12">
                <div class="box_main">
                   <div class="image_4"></div>
                   <h4 class="consultative_text">Residence Proof</h4>
                   <p class="readable_text">Applicant must have resided at least one year at the current address.</p>
                </div>
             </div>
          </div>
       </div>
    </div>
 </div>
 <div class="advisor_section_2 layout_padding" style="margin-bottom: 10px;">
    <!-- Your section content here -->
</div>

<footer style="text-align: center; padding: 20px; margin-top: 10px; color: brown; font-weight: bold;">© 2024 ACJ Finance. All rights reserved. Designed By: Akshada, Cheatana, Jayshri</footer>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
