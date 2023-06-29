<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Enter your New Password</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<style>
      .label {
        display: inline-block;
        width: 200px;
      }
      .form-group {
        margin-bottom: 1rem;
      }
      #confirmPassword-feedback {
        color: red;
      }
      
      
  
body{
background-color:#8c3766;
}

    </style>
<body>

<!--  <form action="verify" method="post">
 <table>
 <tr>
 <td>New Password</td>
 <td><input type="text" name="NewPassword"></td>
 </tr>
 
 <tr>
 <td>Confirm New Password</td>
 <td><input type="text" name="ConNewPassword"></td>
 </tr>
 
 <tr>
 <td></td>
 <td><input type="submit" value="Send"></td>
 </tr>
 </table>

</form>-->









<!-- 
<h1>Password confirm </h1>
    <form action="New_Password" id="myForm" method="POST">
      <div class="form-group">
        <label class="label">Password: </label>
        <input type="password" name="password" required />
      </div>
      <div class="form-group">
        <label class="label">Confirm Password: </label>
        <input type="password" name="confirmPassword" required />
        <br>
        <small id="confirmPassword-feedback"></small>
      </div>
      <div><input type="submit" value="Submit" /></div>
    </form>
    
     -->
     
     
     <div class="container-sm">
    
     <div class="container-sm bg-white mb-4 col-12 col-md-6 " style="box-shadow: 5px 5px 20px;box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 15px 12px rgba(0,0,0,0.22);margin-top:182px;border-radius:5px;" >
    
    <!-- Login Heading -->
    <div class="container d-flex justify-content-center Login_title pt-4">
        <h4 class="text-primary">New Password</h4>
        </div>
       
    <form action="New_Password" method="post" id="myForm">
    
        <div class="container d-flex justify-content-center">
        <h4> ${Total_Ammount}</h4>
       
        </div>


<!-- Form Div 1 -->
			<div class="container px-4 ">

				<!-- Name input -->
				<div class="row gx-5">
					<div class="col form-outline mb-4">
						<div>
							<label class="form-label" for="form2Example1">New Password<span style="color:red;font-size: 18px;">*</span></label> <input
								type="password" id="form2Example1" class="form-control" name="password"
								placeholder="Enter new password"  required />
						</div>
					</div>

					
				</div>
			</div>

<!-- Form end Div 1 -->

<!-- Form Div 2 -->
			<div class="container px-4 ">

				<!-- Name input -->
				<div class="row gx-5">
					<div class="col form-outline mb-4">
						<div>
							<label class="form-label" for="form2Example1">Confirm Password<span style="color:red;font-size: 18px;">*</span></label> <input
								type="password" id="form2Example1" class="form-control" name="confirmPassword"
								placeholder="Enter confirm password"  required />
						</div>
					</div>

					<br>
                    <small id="confirmPassword-feedback"></small>
				</div>
			</div>
<!-- Form end Div 2 -->



     
 
        
        <!-- Submit button -->
        <div class="container d-flex justify-content-center">
        <input type="submit" value="Submit" class="btn btn-primary btn-block mb-4 w-50" >
        
        </div>
        
       
        
        
      </form>




	</div>
    
    
    
    
  </div>  
    
    <script>
      const form = document.getElementById("myForm");
      const password = form.password;
      const confirmPassword = form.confirmPassword;
      const feedback = document.getElementById("confirmPassword-feedback");
      let isPasswordMatch = false;

      confirmPassword.addEventListener("input", () => {
        if (password.value != confirmPassword.value) {
          feedback.innerHTML = "Password did not match.";
          isPasswordMatch = false;
        } else {
          feedback.innerHTML = "";
          isPasswordMatch = true;
        }
      });

      form.onsubmit = function () {
        if (isPasswordMatch) {
          alert("Form submitted. Great!");
          return true;
        }
        alert("Wait! Password did not match.");
        return false;
      };
    </script>
    
    
    
   

</body>
</html>