<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Not Applicable</title>
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

    .helper {
        background: rgba(12, 12, 12, 0.2);
        color: #ffea92;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate3d(-50%, -50%, 0);
        padding: 1.2em 2em;
        text-align: center;
        border-radius: 20px;
        font-size: 2em;
        font-weight: bold;

        span {
            color: rgba(0, 0, 0, 0.2);
            font-size: 0.4em;
            display: block;
        }
    }
}

.menu {
    background: #252424;
    color:white ;
    height: 100vh;
    width: 240px;
    position: fixed;
    top: 0;
    left: 0;
    z-index: 5;
    outline: none;

    .avatar {
        background: rgba(0, 0, 0, 0.1);
        padding: 2em 0.5em;
        text-align: center;

        img {
            width: 100px;
            border-radius: 50%;
            overflow: hidden;
            border: 4px solid #ffea92;
            box-shadow: 0 0 0 4px rgba(255, 255, 255, 0.2);
        }

        h2 {
            font-weight: normal;
            margin-bottom: 0;
        }
    }
    .important-notification {
      background-color: #ffcccc; /* Light red background */
      padding: 10px;
      border: 1px solid #ff0000; /* Red border */
      color: #ff0000; /* Red text color */
      font-size: 1.2em;
      font-weight: bold;
    }

    ul {
        list-style: none;
        padding: 0.5em 0;
        margin: 0;

        li {
            padding: 0.5em 1em 0.5em 3em;
            font-size: 0.95em;
            font-weight: regular;
            background-repeat: no-repeat;
            background-position: left 15px center;
            background-size: auto 20px;
            transition: all 0.15s linear;
            cursor: pointer;

            &.icon-dashboard {
                background-image: url("http://www.entypo.com/images/gauge.svg");
            }
            &.icon-customers {
                background-image: url("http://www.entypo.com/images/briefcase.svg");
            }
            &.icon-users {
                background-image: url("http://www.entypo.com/images/users.svg");
            }
            &.icon-settings {
                background-image: url("http://www.entypo.com/images/tools.svg");
            }

            &:hover {
                background-color: rgba(0, 0, 0, 0.1);
            }

            &:focus {
                outline: none;
            }
        }
    }
}

@media screen and (max-width: 900px) and (min-width: 400px) {
    body {
        padding-left: 90px;
    }
    .menu {
        width: 90px;

        .avatar {
            padding: 0.5em;
            position: relative;
            img {
                width: 60px;
            }

            h2 {
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

            &:hover {
                h2 {
                    opacity: 1;
                    transform: translate3d(0px, -50%, 0);
                }
            }
        }

        ul {
            li {
                height: 60px;
                background-position: center center;
                background-size: 30px auto;
                position: relative;

                span {
                    opacity: 0;
                    position: absolute;
                    background: rgba(0, 0, 0, 0.5);
                    padding: 0.2em 0.5em;
                    border-radius: 4px;
                    top: 50%;
                    left: 80px;
                    transform: translate3d(-15px, -50%, 0);
                    transition: all 0.15s ease-in-out;

                    &:before {
                        content: "";
                        width: 0;
                        height: 0;
                        position: absolute;
                        top: 50%;
                        left: -5px;
                        border-top: 5px solid transparent;
                        border-bottom: 5px solid transparent;
                        border-right: 5px solid rgba(0, 0, 0, 0.5);
                        transform: translateY(-50%);
                    }
                }

                &:hover {
                    span {
                        opacity: 1;
                        transform: translate3d(0px, -50%, 0);
                    }
                }
            }
        }
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

        .smartphone-menu-trigger {
            width: 40px;
            height: 40px;
            position: absolute;
            left: 100%;
            background: #5bc995;

            &:before,
            &:after {
                content: "";
                width: 50%;
                height: 2px;
                background: #fff;
                border-radius: 10px;
                position: absolute;
                top: 45%;
                left: 50%;
                transform: translate3d(-50%, -50%, 0);
            }

            &:after {
                top: 55%;
                transform: translate3d(-50%, -50%, 0);
            }
        }

        ul {
            li {
                padding: 1em 1em 1em 3em;
                font-size: 1.2em;
            }
        }

        &:focus {
            transform: translate3d(0, 0, 0);
            box-shadow: 0 0 0 100em rgba(0, 0, 0, 0.6);

            .smartphone-menu-trigger {
                pointer-events: none;
            }
        }
    }
}




    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
    

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

<!-- Body of Dashboard Start -->
<!-- Data fetching from database -->

       <h3 class="important-notification">Kindly be aware that you can submit only one loan application at a time.</h3>


      <form action="Back" method="post">
      <center>
    <!-- You can replace "#" in the action attribute with the actual form submission URL -->
    <input type="submit" value="Back" style="padding: 10px; font-size: 16px;">
    </center>
  </form>





     <!-- left side navbar section start -->
    <nav class="menu" tabindex="0">
        <div class="smartphone-menu-trigger"></div>
      <header class="avatar">
            <img src="/images/Human-pic.png" /> 
        <h4><%
        HttpSession s1=request.getSession(false);
out.println(s1.getAttribute("temp"));
%></h4>
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
</body>
</html>