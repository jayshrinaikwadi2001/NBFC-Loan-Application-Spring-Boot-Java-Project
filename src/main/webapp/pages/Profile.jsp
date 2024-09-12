<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Loan Application Form</title>
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
                <a class="nav-link" href="Profile">Profile</a>
            </li>
        </ul>
    </div>
</nav>

<!-- Include Bootstrap JS (at the end of the body) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Upper Navbar end -->
    
    
    <!-- Apply now form start -->
    
    

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- Profile form End -->
<div class="container">
    <form id="loanForm" action="updateProfile" method="post" novalidate>
        
        <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" class="form-control" id="aemail" name="aemail" value="<%HttpSession s1=request.getSession(false); out.println(s1.getAttribute("temp1"));%>" required readonly>
            <div class="invalid-feedback">
                <!-- Your invalid feedback message goes here -->
            </div>
        </div>
        
       
        
        <button type="submit" class="btn btn-primary">
        <a href="edit/${temp1}"; style="text-decoration: none;color: inherit;">
        View Profile</a></button>
    
    </form>
</div>




     <!-- left side navbar section start -->
    <nav class="menu" tabindex="0">
        <div class="smartphone-menu-trigger"></div>
      <header class="avatar">
            <img src="images/Human-pic.png" />
        <h4><%out.println(s1.getAttribute("temp"));%></h4>
      </header>
        <ul>
        <li tabindex="0" class="icon-dashboard"><a href="Dashbord" style="text-decoration: none; color: inherit; cursor: pointer;">
        <span>Dashbord</span></li>
        
        <li tabindex="0" class="icon-users"><a href="ApplyNow" style="text-decoration: none; color: inherit; cursor: pointer;">
        <span>Apply Now</span></li>
        <li tabindex="0" class="icon-users"> <a href="logout" style="text-decoration: none; color: inherit; cursor: pointer;">
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
