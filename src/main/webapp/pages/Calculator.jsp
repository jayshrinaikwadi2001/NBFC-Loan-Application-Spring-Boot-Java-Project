<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="icon" href="images/fevicon.png" type="image/gif" />
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
  <title>Interest Calculator</title>
  <!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
  
  
  /* Custom CSS for the navbar */
<style>
 

.navbar-brand {
      font-size: 24px;
      font-weight: bold;
      color: #fff; /* White color */
    }

    .navbar-nav .nav-link {
      font-weight: bold;
      color: #fff; /* White color */
    }

    .nav-item.dropdown .dropdown-menu {
      background-color: #8B4513; /* Dark brown color */
    }

    .nav-item.dropdown .dropdown-menu .dropdown-item {
      color: #fff; /* White color */
    }

    .nav-item.dropdown .dropdown-menu .dropdown-item:hover {
      background-color: #D2B48C; /* Brown color */
    }

    .navbar-toggler {
      border-color: #fff; /* White color */
    }

    .navbar-toggler-icon {
      background-color: #fff; /* White color */
    }

    .navbar-toggler:hover .navbar-toggler-icon {
      background-color: #D2B48C; /* Brown color */
    }

    @media screen and (min-width: 992px) {
      .navbar {
        padding-top: 0;
        padding-bottom: 0;
      }
    }

    /* Custom CSS for the Interest Calculator section */
    #interestCalculator {
      background-color: #f5f5f5; /* Skin color */
      font-family: Arial, sans-serif;
    }

    #interestCalculator .container {
      max-width: 800px;
      margin: 50px auto;
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.1);
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
    }

    #interestCalculator h1 {
      text-align: center;
      margin-bottom: 30px;
      color: #8B4513; /* Dark brown color */
    }

    #interestCalculator label {
      font-weight: bold;
      color: #8B4513; /* Dark brown color */
    }

    #interestCalculator .form-wrapper {
      width: 100%;
      margin-bottom: 20px;
    }

    #interestCalculator #result {
      width: calc(50% - 10px);
      padding: 20px;
      background-color: #fff; /* White color */
      border-radius: 8px;
    }

    #interestCalculator .btn-dark-brown {
      background-color: #8B4513 !important; /* Dark brown color */
      border-color: #8B4513 !important;
      color: #fff !important; /* White color */
    }
</style>
 </head>
<body>



<nav class="navbar navbar-expand-lg navbar-light bg-light bg-transparent" id="gtco-main-nav">
    <div class="container">
        <a class="navbar-brand">ACJ Finance</a>
        <button class="navbar-toggler" data-target="#my-nav" onclick="myFunction(this)" data-toggle="collapse">
            <span class="bar1"></span>
            <span class="bar2"></span>
            <span class="bar3"></span>
        </button>
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
                <a href="SigninSignup" class="btn btn-info my-2 my-sm-0 text-uppercase mr-2">Sign In</a>
                <a href="SigninSignup" class="btn btn-info my-2 my-sm-0 text-uppercase">Sign Up</a>
            </form>
        </div>
    </div>
</nav>

<div class="container">
  <div class="form-wrapper">
    <h1>Interest Calculator</h1>
    <div class="form-group">
      <label for="loanType">Select your loan type:</label>
      <select class="form-control" id="loanType">
        <option value="home">Home Loan</option>
        <option value="business">Business Loan</option>
        <option value="personal">Personal Loan</option>
      </select>
    </div>
    
    <div class="form-group">
      <label for="loanAmount">Loan Amount:</label>
      <input type="number" class="form-control" id="loanAmount" placeholder="Enter loan amount" min="10000" max="100000" required>
    </div>
    
    <div class="form-group">
      <label for="interestRate">Interest Rate (% per annum):</label>
      <input type="number" class="form-control" id="interestRate" placeholder="Enter interest rate" min="3" max="100" step="0.01" required>
    </div>
    
    <div class="form-group">
      <label for="years">Years:</label>
      <input type="number" class="form-control" id="years" placeholder="Enter number of years" min="12" max="36" required>
    </div>
    
<button type="button" class="btn btn-dark-brown btn-block" onclick="validateAndCalculate()" style="background-color: brown; color:white; width: 20%;">Calculate</button>
</div>
  
  <div id="result">
    <div id="resultContent">
    	<h4>Loan Type: <span id="loan_type"></span></h4>
      <p>Monthly Payment: <span id="loan_amount"></span></p>
      <p>Total Payment: <span id="total_payment"></span></p>
      <p>Total Interest: <span id="intrest_rate"></span></p>
    </div>
  </div>
</div>

<!-- Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
  function validateAndCalculate() {
    var loanAmount = parseFloat(document.getElementById('loanAmount').value);
    var interestRate = parseFloat(document.getElementById('interestRate').value);
    var years = parseFloat(document.getElementById('years').value);
    
    if (loanAmount < 10000 || loanAmount > 100000) {
      alert("Loan amount must be between ₹10,000 and ₹100,000.");
      return;
    }
    
    if (interestRate < 3 || interestRate > 100) {
      alert("Interest rate must be between 3% and 100%.");
      return;
    }
    
    if (years < 1 || years > 12) {
      alert("Years must be between 1 and 12.");
      return;
    }
    
    calculateInterest();
  }

  function calculateInterest() {
    var loanType = document.getElementById('loanType').value;
    var loanAmount = parseFloat(document.getElementById('loanAmount').value);
    var interestRate = parseFloat(document.getElementById('interestRate').value);
    var years = parseFloat(document.getElementById('years').value);
    
    var monthlyInterestRate = interestRate / 100 / 12;
    var numberOfPayments = years * 12;
    
    var monthlyPayment = (loanAmount * monthlyInterestRate) / (1 - Math.pow(1 + monthlyInterestRate, -numberOfPayments));
    var totalPayment = monthlyPayment * numberOfPayments;
    var totalInterest = totalPayment - loanAmount;
    
    //alert(monthlyPayment);
    
    document.getElementById('loan_type').innerText =loanType;
    document.getElementById('loan_amount').innerText =loanAmount;
    document.getElementById('intrest_rate').innerText =interestRate;
    document.getElementById('total_payment').innerText =totalPayment;

    


  }
</script>

</body>
</html>