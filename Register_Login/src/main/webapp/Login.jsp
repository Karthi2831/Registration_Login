<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

<style type="text/css">

body{
background-color:#8c3766;
}
</style>
</head>
<body>

    <!--    <form action="log" method="post">
     
     <table>
     
     <tr>
     
     <td>Email</td>
     <td><input type="email" name="Email"></td>
     
     </tr>
     
     <tr>
     
     <td>Password</td>
     <td><input type="password" name="password"></td>
     
     </tr>
     
      <tr>
     
     <td></td>
     <td><input type="submit" value="Login"></td>
     
     </tr>
     
     <tr>
     
     <td><a href="Forgot_Pass.jsp">Forget Password</a></td>
     
     </tr>
     
     </table>
     
     
     
     </form>
     
     <div>
     <p>New user Account  <a href="Register.jsp">Register</a></p>
     </div> -->
     
     
     
     <div class="container-sm">
    
     <div class="container-sm bg-white mb-4 col-12 col-md-6 " style="box-shadow: 5px 5px 20px;box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 15px 12px rgba(0,0,0,0.22);margin-top:182px;border-radius:5px;" >
    
    <!-- Login Heading -->
    <div class="container d-flex justify-content-center Login_title pt-4">
        <h4 class="text-primary">Login</h4>
        </div>
       
    <form action="log" method="post">
    
        <div class="container d-flex justify-content-center">
        <h4> ${Total_Ammount}</h4>
       
        </div>


<!-- Form Div 1 -->
			<div class="container px-4 ">

				<!-- Name input -->
				<div class="row gx-5">
					<div class="col form-outline mb-4">
						<div>
							<label class="form-label" for="form2Example1">Email<span style="color:red;font-size: 18px;">*</span></label> <input
								type="email" id="form2Example1" class="form-control" name="Email"
								placeholder="Enter email" value="${Name}" required />
						</div>
					</div>

					
				</div>
			</div>

<!-- Form end Div 1 -->

<!-- Form Div 2 -->
			<div class="container px-4 ">

				<!-- Phone number input -->
				<div class="row gx-5">
					<div class="col form-outline mb-4">
						<div>
							<label class="form-label" for="form2Example1">Password<span style="color:red;font-size: 18px;">*</span>
								</label> <input type="password" id="form2Example1"
								class="form-control" name="password"
								placeholder="Enter password" value="${Mobile_No}" required />
						</div>
					</div>

				
				</div>
			</div>

<!-- Form end Div 2 -->



  <!-- Form Div 6 -->
  
            <div class="container px-4 ">

				<!--Bathroom Category feet input -->
				<div class="row gx-5">
					<div class="col form-outline mb-4">
						<a href="Forgot_Pass.jsp">Forget Password</a>
					</div>

					
				</div>
			</div>
  
  
  
			<div class="container px-4 ">

				<!--Bathroom Category feet input -->
				<div class="row gx-5">
					<div class="col form-outline mb-4">
						New user Account  <a href="Registration.jsp">Register</a>
					</div>

					
				</div>
			</div>

<!-- Form end Div 6-->
     
 
        
        <!-- Submit button -->
        <div class="container d-flex justify-content-center">
        <input type="submit" value="Login" class="btn btn-primary btn-block mb-4 w-50" >
        
        </div>
        
       
        
        
      </form>




	</div>
    
    
    
    
  </div>  
    
     
     
     
     
    

</body>
</html>