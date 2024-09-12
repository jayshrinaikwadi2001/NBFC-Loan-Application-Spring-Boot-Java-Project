<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oNf5CXK6dPFGvqd3I5fGx6mK2Wd3qOKjlrj/YV3PqA8=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@2.11.6/dist/umd/popper.min.js" integrity="sha384-8Ve3M2m8yjfnzOJsPrYRFsAH8I5IxMQ7gMzQJ/FWwYJ8AX8tgz8E2zJP6P7MquRK" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/JgcWR5F6Fm2Imyj4Pb8iJcKlMF" crossorigin="anonymous"></script>
    <style>
    body{
    background-color: white;
    color: black;
    }
        .navbar {
          background-color: #5bc995;
           padding: 15px 0;
           width: 100%;
           }
        .navbar-brand {
            font-size: 35px; /* Increase the font size for ACJ Finance */
            font-weight: bold;
            
        }

        .admin-name {
            color: black; /* Set your preferred text color */
            margin-right: 25px;
        }
       /* Add space between navbar and h2 tag */
        h2 {
            margin-top: 30px;
            
        }

        /* Add left and right margins for the table */
       .table {
    margin-top: 50px;
    margin-right: 40px;
    border-collapse: collapse;
    width: 100%;
}

th, td {
    border: 1px solid #dddddd; /* Set border for both th and td */
    padding: 8px;
    text-align: left;
}


        
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
        <!-- Left side of the navbar -->
        <a class="navbar-brand" href="#">
            <!-- Circular image on the left side -->
            <img src="/images/bank_img.jpeg" alt="Bank Logo" style="border-radius: 50%; width: 60px; height: 60px; margin-right: 10px;">
            Bank of Maharastra
        </a>

        <!-- Right side of the navbar -->
        <div class="d-flex">
            <!-- Admin name on the right side -->
            <div class="admin-name">
                Admin: <%
        HttpSession s2=request.getSession(false);
out.println(s2.getAttribute("temp"));
%> 
            </div>
            <a href="adminlogout">Logout</a>
        </div>
    </div>
</nav>
<center><h2>All Loan Details</h2></center>

<table class="table table-hover ">
  <thead>
    <tr>
      
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Date of Birth</th>
      <th scope="col">Address</th>
      <th scope="col">Loan Amount</th>
      <th scope="col">Loan Purpose</th>
      <th scope="col">Loan Status</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${mm}" var="e">
    <tr>
      <th scope="row">${e.aid}</th>
      <td>${e.aname}</td>
      <td>${e.aemail}</td>
      <td>${e.dob}</td>
      <td>${e.addr}</td>
      <td>${e.amount}</td>
      <td>${e.loan_purpose} Loan</td>
      <td>${e.loan_status}</td>
      
      
      <td><a href="view/${e.aid}">View</a></td>
    </tr>
    </c:forEach>
   
      
  </tbody>
</table>
</body>
</html>
