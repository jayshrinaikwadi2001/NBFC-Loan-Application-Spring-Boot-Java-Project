<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Individual Loan Data</title>
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
       /* Add space between navbar and table */
        .table {
            margin-top: 50px;
            
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
        </div>
    </div>
</nav>

<!-- Individual applicant View form start -->
    
    <div class="container">
  <h2 class="mb-4">Applicant Full Information</h2>
  <form id="loanForm" action="/LoanStatusUpdate" method="post" novalidate>
    <div class="row">
      <div class="col-md-6">
        <h3>Contact Information</h3>
        
        <input type="hidden" name="aid" value="${mm.aid }" />
        <div class="form-group">
          <label for="fullName">Full Name</label>
          <input type="text" class="form-control" id="fullName" name="aname" value="${mm.aname}" required readonly>
          <div class="invalid-feedback">
           
          </div>
        </div>
        <div class="form-group">
          <label for="email">Email Address</label>
          <input type="email" class="form-control" id="aemail" name="aemail" value="${mm.aemail}"  required readonly>
          <div class="invalid-feedback">
            
          </div>
        </div>
        <div class="form-group">
          <label for="phone">Phone</label>
          <input type="tel" class="form-control" id="phone" name="phone_no" value="${mm.phone_no}"  required readonly>
          <div class="invalid-feedback">
            
          </div>
        </div>
        <div class="form-group">
          <label for="birthdate">Date of Birth</label>
          <input type="date" class="form-control" id="birthdate" name="dob" value="${mm.dob}" required readonly>
          <div class="invalid-feedback">
            
          </div>
        </div>
        <div class="form-group col-md-6">
        <div class="form-group">
          <label for="incomeRange">Income Range (Yearly)</label>
          <input type="text" class="form-control" id="birthdate" name="income_range" value="${mm.income_range}" required readonly>
          <div class="invalid-feedback">
            
          </div>
        </div>
    
    
  </div>
        <div class="form-group">
          <label for="address">Address</label>
          <input type="text" class="form-control" id="address" name="addr" value="${mm.addr}" required readonly>
          <div class="invalid-feedback">
           
          </div>
        </div>
        <div class="form-group">
          <label for="state">State</label>
          <input type="text" class="form-control" id="state" name="state" value="${mm.state}"  required readonly>
          <div class="invalid-feedback">
            
          </div>
        </div>
        <b><label for="emiOption">Loan Status</label></b>
    <select id="emiOption" class="form-control" name="loan_status" required>
      <option value="" disabled selected>Loan Status</option>
      <option value="Pause">Pause</option>
      <option value="Approved">Approved</option>
    </select>
    <div class="invalid-feedback">
      Please select the EMI option.
    </div>
      </div>
      <div class="col-md-6">
        <h3>Loan Details</h3>
        <div class="form-group">
          <label for="loanAmount">Loan Amount</label>
          <input type="number" class="form-control" id="loanAmount" name="amount" value="${mm.amount}"  required readonly>
          <div class="invalid-feedback">
            
          </div>
        </div>
        <div class="form-group">
  <label for="interestRate">Interest Rate (3%)</label>
  <input type="text" class="form-control" id="interestRate" name="rate" value="3%" readonly readonly>
</div>

<!-- New Tenure Field -->
<div class="form-group col-md-6">
  <label for="tenure">Tenure (In Months)</label>
  <input type="number" class="form-control" id="tenure"  name="tenure" value="${mm.tenure}" required readonly>
  <div class="invalid-feedback">
    
  </div>
</div>
        <div class="form-group">
          <label for="emiOption">EMI Option</label>
         
          <input type="text" class="form-control" name="emi" id="emi" value="${mm.emi}" required readonly>
         
          <div class="invalid-feedback">
            
          </div>
        </div>
        
        <div class="form-group">
          <label for="loanDate">Loan Applied Date</label>
          <input type="date" class="form-control" name="loan_date" id="loan_date" value="${mm.loan_date}" required readonly>
          <div class="invalid-feedback">
           
          </div>
        </div>
        <div class="form-group">
          <label for="loanPurpose">Loan Purpose</label>
          
          <input type="text" class="form-control" name="loan_purpose" id="loan_purpose" value="${mm.loan_purpose}" required readonly>
         
          <div class="invalid-feedback">
           
          </div>
        </div>
        
        <!-- Total Amount Calculation -->
        <div class="form-group">
          <label for="totalAmount">Total Amount To Be Pay</label>
          <input type="text" class="form-control" id="totalAmount" name="total_amt" value="${mm.total_amt}" readonly>
        </div>
        <div class="form-group">
  <label for="emiResult">EMI To Be Pay</label>
  <input type="text" class="form-control" id="emiResult" name="emiResult" value="${mm.emiResult}" readonly>
</div>
      </div>
    </div>
   <h3>Other Information</h3>
<div class="form-row">
  <!-- Aadhar Number and PAN Number in one line -->
  <div class="form-group col-md-6">
    <label for="aadharNo">Aadhar Number</label>
    <input type="text" class="form-control" id="aadharNo" name="adharno" value="${mm.adharno}" required readonly>
    <div class="invalid-feedback">
      <!-- Add any feedback messages here if needed -->
    </div>
    
    <label for="panNo" class="mt-2">PAN Number</label>
    <input type="text" class="form-control" id="panNo" name="panno" value="${mm.panno}" required readonly>
    <div class="invalid-feedback">
      <!-- Add any feedback messages here if needed -->
    </div>
  </div>
  </div>

  

    
        
    <button type="submit" class="btn btn-primary">Close</button>
  </form>
</div>

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
      // Add form validation
      (function() {
        'use strict';
        window.addEventListener('load', function() {
          var forms = document.getElementsByClassName('needs-validation');
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();

      function calculateEMI() {
        // Get loan amount
        var loanAmount = parseFloat(document.getElementById('loanAmount').value);
        // Get interest rate
        var interestRate = 0.03; // 3%
        // Get loan tenure in months or days
        var tenure = document.getElementById('tenure').value;
        // Get selected EMI option
        var emiOption = document.getElementById('emiOption').value;

        // Fixed processing fee
        var processingFee = 500;

        // Calculate EMI based on user's selection
        var emi;
        if (emiOption === 'daily') {
          var tenureDays = parseInt(tenure);
          emi = calculateDailyEMI(loanAmount, interestRate, tenureDays, processingFee);
        } else if (emiOption === 'monthly') {
          var tenureMonths = parseInt(tenure);
          emi = calculateMonthlyEMI(loanAmount, interestRate, tenureMonths, processingFee);
        }

        // Update the EMI result field
        document.getElementById('emiResult').value = emi.toFixed(2);

        // Calculate and update the Total Amount field
        var totalAmount;
        if (emiOption === 'daily') {
          totalAmount = emi * tenureDays;
        } else if (emiOption === 'monthly') {
          totalAmount = emi * tenureMonths;
        }

        document.getElementById('totalAmount').value = totalAmount.toFixed(2);
      }

      // Function to calculate Daily EMI
      function calculateDailyEMI(loanAmount, interestRate, tenureDays, fixedProcessingFee) {
        var dailyRate = interestRate / (100 * 365);
        var totalDays = tenureDays;

        // Adding fixed processing fee
        var totalLoanAmount = loanAmount + fixedProcessingFee;

        return (totalLoanAmount * dailyRate * Math.pow((1 + dailyRate), totalDays)) / (Math.pow((1 + dailyRate), totalDays) - 1);
      }

      // Function to calculate Monthly EMI
      function calculateMonthlyEMI(loanAmount, interestRate, tenureMonths, processingFee) {
        return (loanAmount + processingFee) * interestRate * Math.pow((1 + interestRate), tenureMonths) / (Math.pow((1 + interestRate), tenureMonths) - 1);
      }

      // Add event listener to EMI option field
      document.getElementById('emiOption').addEventListener('change', calculateEMI);
      // Add event listener to loan amount field
      document.getElementById('loanAmount').addEventListener('input', calculateEMI);
      // Add event listener to tenure field
      document.getElementById('tenure').addEventListener('input', calculateEMI);
    </script>
<!-- Apply now form End -->



</body>
</html>