<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fixed Deposit Features</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <!-- Include Bootstrap Icons CSS directly from CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.17.0/font/bootstrap-icons.css">
    <!-- Include your custom CSS (optional) -->
    <link rel="stylesheet" href="styles.css">
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


    <style>
        body {
            background-color: #f8f9fa; /* Light gray background color */
            color: #212529; /* Dark gray text color */
        }

        header {
            background-color: #fff; /* White header background color */
            color: #0e0000; /* Dark brown text color */
            padding: 20px; /* Added padding for better readability */
            border-bottom: 1px solid #dee2e6; /* Light gray border at the bottom */
        }

        header p {
            width: 75%; /* Set the width of the <p> tag to 75% of its container */
            margin: 0 auto; /* Center the <p> tag within its container */
        }

        .feature {
            background-color: #f9e8d2; /* Faint skin color for feature boxes */
            border: 1px solid #f8d7c8; /* Light brown border for feature boxes */
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            transition: background-color 0.3s, color 0.3s; /* Smooth transition for background and text color on hover */
        }

        .feature:hover {
            background-color: #8B4513; /* Dark brown color on hover */
            color: #fff; /* White text color on hover */
        }

        .feature i {
            font-size: 2rem;
        }

        .circular-img {
            width: 80px; /* Adjust the width of the circular image */
            height: 80px; /* Adjust the height of the circular image */
            border-radius: 50%; /* Make the image circular */
            margin-bottom: 20px; /* Add margin to separate the image from the text */
            border: 2px solid #000000; /* Black border */

        }
        header {
            text-align: center; /* Center text in the header */
        }

        header h1.display-4 {
            margin-bottom: 20px; /* Add margin to create space between elements */
        }
    </style>
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
    <!-- Header section -->
    <header class="text-center mb-4" style="max-width: 800px; margin: 0 auto;">
        <h1 class="display-4">Fixed Deposit</h1>
        <p class="lead">Did you know that saving is the first step you can take towards investing? 
            Letting your hard-earned money sit idle in a bank account is not ideal. Invest in a fixed deposit for steady savings, growth and generate inflation-beating returns. Fixed deposits remain the mainstay of India's safest investment options.</p>
        <br><br><hr>
        <h1 class="display-4">Features & Benefits</h1>
        <p class="lead">Trusted by millions of customers, Shriram Fixed Deposit is the safest investment option with attractive interest rates.
            Rated "[ICRA]AA+ (Stable)" by ICRA and "IND AA+/Stable" by India Ratings and Research.</p>
    </header>
    

    <!-- Features & Benefits section -->
    <section class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="feature text-center">
               <img src="/images/img-3.png" alt="Step 3" style="border: 2px solid #000000; border-radius: 50%;">

                   
                    <h3 class="h5">Higher Interest Rate</h3>
                    <p>Grow your savings with interest rates as high as 9.20% p.a.</p>
                </div>
                <div class="feature text-center">
                   <img src="/images/img-5.png" alt="Step 3" style="border: 2px solid #000000; border-radius: 50%;">
                    <h3 class="h5">Flexible Tenure</h3>
                    <p>Choose from flexible investment options starting from 12 to 60 months</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feature text-center">
                    <img src="/images/img-3.png" alt="Step 3" style="border: 2px solid #000000; border-radius: 50%;">
                    <h3 class="h5">Benefits for Senior Citizens</h3>
                    <p>Senior citizens get an additional 0.50%* p.a.</p>
                </div>
                <div class="feature text-center">
                   <img src="/images/img-5.png" alt="Step 3" style="border: 2px solid #000000; border-radius: 50%;">
                    <h3 class="h5">Flexible Payout Options</h3>
                    <p>Choose from flexible interest payout options, i.e., monthly, quarterly, half-yearly, yearly or at maturity.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feature text-center">
                   <img src="/images/img-5.png" alt="Step 3" style="border: 2px solid #000000; border-radius: 50%;">
                    <h3 class="h5">Special Interest Rates for Women</h3>
                    <p>Women depositors get an additional 0.10%* p.a.</p>
                </div>
                <div class="feature text-center">
                   <img src="/images/img-3.png" alt="Step 3" style="border: 2px solid #000000; border-radius: 50%;">
                    <h3 class="h5">Guaranteed Returns</h3>
                    <p>Get steady and assured returns irrespective of market fluctuations.</p>
                </div>
            </div>
        </div>
    </section>

    <div class="advisor_section_2 layout_padding" style="margin-bottom: 10px;">
        <!-- Your section content here -->
    </div>
    
    <footer style="text-align: center; padding: 20px; margin-top: 10px; color: brown; font-weight: bold;">© 2024 ACJ Finance. All rights reserved. Designed By: Akshada, Cheatana, Jayshri</footer>
    

    <!-- Include Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Your custom JavaScript (optional) -->
    <script src="script.js"></script>
</body>
</html>
