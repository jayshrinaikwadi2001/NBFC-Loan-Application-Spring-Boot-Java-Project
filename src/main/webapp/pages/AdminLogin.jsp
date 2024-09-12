<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
<meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
<title>Admin Login</title>
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
            



            
        </div>
    </div>
</nav>

<section class="vh-100" style="background-color: #eee;">
    <div class="container h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-lg-12 col-xl-11">
                <div class="card text-black" style="border-radius: 25px; padding: 20px; box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);">
                    <div class="card-body p-md-5">
                        <div class="row justify-content-center">
                            <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
                                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Admin Login</p>
                                <form action="checkadmindata" method="post" class="mx-1 mx-md-4" style="color: #555;">

                                   
                                    <div class="mb-3">
                                        <label for="form3Example3c" class="form-label">Email</label>
                                        <input type="email" id="form3Example3c" class="form-control" name="email" style="border-color: black; border-radius: 10px;" />
                                    </div>

                                    <div class="mb-3">
                                        <label for="form3Example4c" class="form-label">Password</label>
                                        <input type="password" id="form3Example4c" class="form-control" name="pass" style="border-color: black; border-radius: 10px;" />
                                    </div>

                                    

                                    <div class="d-grid gap-2 mb-3">
                                        <button type="submit" class="btn btn-primary btn-lg" style="background-color: #8B4513; border: none; border-radius: 10px;">Login</button>
                                    </div>

                                    
                                </form>
                            </div>

                            <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
                                <img src="images/img-2.png" class="img-fluid" alt="Sample image" style="width: 100%; height: auto; border-radius: 15px; box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>