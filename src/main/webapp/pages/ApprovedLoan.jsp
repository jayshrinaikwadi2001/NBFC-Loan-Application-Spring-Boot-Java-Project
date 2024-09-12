<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Approved Loan</title>
    <!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
		
    @color-1st: #ffea92;
@color-2nd: #5bc995;

@menu-width-desktop: 240px;
@menu-width-tablet: 90px;
@menu-width-smartphone: 230px;

@icon-url-base: "http://www.entypo.com/images/";
@icon-url-dashboard: "@{icon-url-base}/gauge.svg";
@icon-url-customers: "@{icon-url-base}/briefcase.svg";
@icon-url-users: "@{icon-url-base}/users.svg";
@icon-url-settings: "@{icon-url-base}/tools.svg";



body {
    background: white;
    margin: 0;
    font-family: "Open Sans", Helvetica Neue, Helvetica, Arial, sans-serif;
    color: black;
    padding-left: 240px;
}

main {
    position: relative;
    height: 100vh;
}

/* Upper Side Navigation Bar */
.navbar {
    background-color: #f8f9fa;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.navbar-brand {
    font-weight: bold;
    font-size: 30px;
    color: blue;
    line-height: 1.5;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
}

.navbar-nav {
    margin-left: auto;
}

.nav-item {
    margin-right: 10px;
}

/* Left Side Navigation Bar */
.menu {
    background: #252424;
    color: white;
    height: 100vh;
    width: 240px;
    position: fixed;
    top: 0;
    left: 0;
    z-index: 5;
    outline: none;
}

.menu .avatar {
    background: rgba(0, 0, 0, 0.1);
    padding: 2em 0.5em;
    text-align: center;
}

.menu .avatar img {
    width: 100px;
    border-radius: 50%;
    overflow: hidden;
    border: 4px solid #ffea92;
    box-shadow: 0 0 0 4px rgba(255, 255, 255, 0.2);
}

.menu .avatar h2 {
    font-weight: normal;
    margin-bottom: 0;
}

.menu ul {
    list-style: none;
    padding: 0.5em 0;
    margin: 0;
}

.menu ul li {
    padding: 0.5em 1em 0.5em 3em;
    font-size: 0.95em;
    font-weight: regular;
    background-repeat: no-repeat;
    background-position: left 15px center;
    background-size: auto 20px;
    transition: all 0.15s linear;
    cursor: pointer;
}

.menu ul li.icon-dashboard {
    background-image: url("http://www.entypo.com/images/gauge.svg");
}

.menu ul li.icon-customers {
    background-image: url("http://www.entypo.com/images/briefcase.svg");
}

.menu ul li.icon-users {
    background-image: url("http://www.entypo.com/images/users.svg");
}

.menu ul li.icon-settings {
    background-image: url("http://www.entypo.com/images/tools.svg");
}

.menu ul li:hover {
    background-color: rgba(0, 0, 0, 0.1);
}

.menu ul li:focus {
    outline: none;
}

@media screen and (max-width: 900px) and (min-width: 400px) {
    body {
        padding-left: 90px;
    }

    .menu {
        width: 90px;
    }

    .menu .avatar {
        padding: 0.5em;
        position: relative;
    }

    .menu .avatar img {
        width: 60px;
    }

    .menu .avatar h2 {
        opacity: 0;
        position: absolute;
        top: 50%;
        left: 100px;
        margin: 0;
        min-width: 200px;
        border-radius: 4px;
        background: rgba(0, 0, 0, 0.4);
        transform: translate3d(-20px, -50%, 0);
        transition: all 0.15s ease-in-out;
    }

    .menu .avatar:hover h2 {
        opacity: 1;
        transform: translate3d(0px, -50%, 0);
    }

    .menu ul li {
        height: 60px;
        background-position: center center;
        background-size: 30px auto;
        position: relative;
    }

    .menu ul li span {
        opacity: 0;
        position: absolute;
        background: rgba(0, 0, 0, 0.5);
        padding: 0.2em 0.5em;
        border-radius: 4px;
        top: 50%;
        left: 80px;
        transform: translate3d(-15px, -50%, 0);
        transition: all 0.15s ease-in-out;
    }

    .menu ul li:hover span {
        opacity: 1;
        transform: translate3d(0px, -50%, 0);
    }
}

@media screen and (max-width: 400px) {
    body {
        padding-left: 0;
    }

    .menu {
        width: 230px;
        box-shadow: 0 0 0 100em rgba(0, 0, 0, 0);
        transform: translate3d(-230px, 0, 0);
        transition: all 0.3s ease-in-out;
    }

    .menu .smartphone-menu-trigger {
        width: 40px;
        height: 40px;
        position: absolute;
        left: 100%;
        background: #5bc995;
    }

    .menu ul li {
        padding: 1em 1em 1em 3em;
        font-size: 1.2em;
    }

    .menu:focus {
        transform: translate3d(0, 0, 0);
        box-shadow: 0 0 0 100em rgba(0, 0, 0, 0.6);
    }

    .menu .smartphone-menu-trigger {
        pointer-events: none;
    }
}

/* Loan Application Form */
.container {
            max-width: 600px;
            margin-top: 50px;
        }

.form-group label {
    font-weight: bold;
}

.form-control:focus {
    border-color: #80bdff;
    box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
}

.btn-primary {
    background-color: #007bff;
    border-color: #007bff;
}

.btn-primary:hover {
    background-color: #0056b3;
    border-color: #0056b3;
}

.loan-card {
    border: 1px solid #ddd;
    border-radius: 10px;
    padding: 20px;
    margin-bottom: 20px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    transition: box-shadow 0.3s ease-in-out; /* Add transition for smoother hover effect */
}

.loan-card:hover {
    box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2); /* Adjusted shadow on hover */
}

.loan-card img {
    max-width: 100%;
    height: auto;
}

.custom-button {
    background-color: transparent;
    border: 1px solid #007bff;
    color: #007bff;
    transition: all 0.3s ease-in-out;
}

.custom-button:hover {
    background-color: #007bff;
    border-color: #007bff;
    color: white;
}


.container {
    max-width: 800px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); /* Increased shadow effect */
}

.profile-image img {
    width: 100%; /* Image takes full width of its container */
    height: auto;
    border-radius: 10px; /* Rounded corners */
    border: 4px solid rgba(0, 0, 0, 0.1); /* Faint black border */
    transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out; /* Added transition */
}

.profile-image img:hover {
    transform: scale(1.05); /* Increase size on hover */
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.3); /* Shadow effect on hover */
}


.profile-info {
    padding: 20px; /* Added padding for better spacing */
}

.profile-info h1 {
    color: #007bff;
    margin-top: 0;
    margin-bottom: 20px; /* Added margin to separate from paragraphs */
}

.profile-info p {
    margin-bottom: 10px; /* Adjusted margin */
}

    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body >
     

    
<!-- Top Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#" style="font-weight: bold; font-size: 30px; color: blue; line-height: 1.5; text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);">ACJ Finance</a>
        <ul class="navbar-nav ml-auto">
            
            <li class="nav-item">
                <a class="nav-link" href="/Profile">Profile</a>
            </li>
        </ul>
    </div>
</nav>

<!-- Include Bootstrap JS (at the end of the body) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Upper Navbar end -->
    
    <div class="container">
    <div class="row">
        <div class="col-md-5">
            <div class="profile-image">
                <img src="/images/ApproveLoan.png" alt="Profile Picture">
            </div>
        </div>
        <div class="col-md-6">
            <div class="profile-info">
                <h1><%HttpSession s1=request.getSession(false);out.println(s1.getAttribute("temp"));%></h1>
                <p><b>Email:</b> <%out.println(s1.getAttribute("temp1"));%></p>
                <p><b>Income Range:</b> ${kk.income_range }</p>
                <p><b>Loan Amount:</b> ${kk.amount }</p>
                <p><b>Interest Rate:</b> ${kk.rate }</p>
                <p><b>Tenure (In Months):</b> ${kk.tenure }</p>
                <p><b>EMI:</b> ${kk.emi }</p>
                <p><b>Loan Applied Date:</b> ${kk.loan_date }</p>
                <p><b>Loan Purpose:</b> ${kk.loan_purpose }</p>
                <p><b>Total Amount To Be Pay:</b> ${kk.total_amt }</p>
                <p><b>Monthly EMI To Be Pay:</b> ${kk.emiResult }</p>
                <p><b>Adhar-Card Number:</b> ${kk.adharno }</p>
                <p><b>Pan-Card Number:</b> ${kk.panno }</p>
            </div>
        </div>
    </div>
</div>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-4" style="margin-bottom: 20px;">
            <!-- Form for View Wallet Balance -->
            <div style="position: relative;">
                <form id="addWalletForm"  novalidate>
                    <div class="loan-card">
                        <img src="/images/AddWallet.png" alt="View Wallet Balance" style="width: 100%; height: 100%; object-fit: cover;">
                    </div>
                    <input type="hidden" class="form-control" id="aemail" name="aemail" value="<% out.println(s1.getAttribute("temp1"));%>" required readonly>
                    
                    <button type="submit" class="btn btn-primary custom-button" style="width: 100%;">
                    <a href="/AddWallet/${temp1}" style="text-decoration: none; color: inherit; display: inline-block;">
                    Add Wallet Balance </a></button>
                </form>
            </div>
        </div>
        <div class="col-md-4" style="margin-bottom: 20px;">
            <!-- Form for Add Wallet Balance -->
            <div style="position: relative;">
                <form id="viewWalletForm"  novalidate>
                    <div class="loan-card">
                        <img src="/images/ViewBalance.png" alt="Add Wallet Balance" style="width: 100%; height: 100%; object-fit: cover;">
                    </div>
                    <input type="hidden" class="form-control" id="aemail" name="aemail" value="<% out.println(s1.getAttribute("temp1"));%>" required readonly>
                    <button type="submit" class="btn btn-primary custom-button" style="width: 100%;">
                    <a href="/viewWallet/${temp1}" style="text-decoration: none; color: inherit; display: inline-block;">
                    View Wallet Balance</a></button>
                </form>
            </div>
        </div>
        <div class="col-md-4">
            <!-- Form for Pay EMI -->
            <div style="position: relative;">
                <form id="payEMIForm" action="" method="post" novalidate>
                    <div class="loan-card">
                        <img src="/images/PayEmi.png" alt="Pay EMI" style="width: 100%; height: 100%; object-fit: cover;">
                    </div>
                    <button type="submit" class="btn btn-primary custom-button" style="width: 100%;">
                    <a href="/${temp1}" style="text-decoration: none; color: inherit; display: inline-block;">
                    Pay EMI</a></button>
                </form>
            </div>
        </div>
    </div>
</div>


<form action="/Back1" method="post">
    <!-- You can replace "#" in the action attribute with the actual form submission URL -->
    <center>
    <input type="submit" value="Back" style="padding: 10px; font-size: 16px;">
    </center>
  </form>

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>





     <!-- left side navbar section start -->
    <nav class="menu" tabindex="0">
        <div class="smartphone-menu-trigger"></div>
      <header class="avatar">
            <img src="/images/Human-pic.png" />
        <h4><%out.println(s1.getAttribute("temp"));%></h4>
      </header>
        <ul>
        <li tabindex="0" class="icon-dashboard"><a href="/Dashbord" style="text-decoration: none; color: inherit; cursor: pointer;">
        <span>Dashbord</span></li>
        
        <li tabindex="0" class="icon-users"><a href="/ApplyNow" style="text-decoration: none; color: inherit; cursor: pointer;">
        <span>Apply Now</span></li>
        <li tabindex="0" class="icon-users"> <a href="/logout" style="text-decoration: none; color: inherit; cursor: pointer;">
        <span>Logout</span>
    </a></li>
       
      </ul>
    </nav>
    
    <main>
      <div >
       
            
      </div>
    </main>
    
    <!-- left side navbar section End -->
   
</body>
</html>
