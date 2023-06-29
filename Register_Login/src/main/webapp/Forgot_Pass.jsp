<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<title>Forget password</title>
<style>
body{
background-color:#8c3766;
}
</style>
</head>
<body>

<!--

 Email verfication 
<form action="verify" method="post">

<table>
<tr>
<td>Email</td>
<td><input type="email" name="Verifyemail"></td>
<td><input type="submit" value="send"></td>
</tr>



</table>




</form>
<!-- otp verfication 
<form action="otpverify" method="post">

<table>
<tr>
<td>Verify your otp</td>
<td><input type="text" name="otp"></td>
<td><input type="submit" value="verify"></td>
</tr>


</table>

</form> 

-->

     
     <div class="container-sm">
    
     <div class="container-sm bg-white mb-4 col-12 col-md-6 " style="box-shadow: 5px 5px 20px;box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 15px 12px rgba(0,0,0,0.22);margin-top:182px;border-radius:5px;" >
    
    <!-- Login Heading -->
    <div class="container d-flex justify-content-center Login_title pt-4">
        <h4 class="text-primary">Verification</h4>
        </div>
       
    
    
        <div class="container d-flex justify-content-center">
        <h4> ${pass_sucess_msg}</h4>
       
        </div>


<!-- Form Div 1 -->
			<div class="container px-4 ">
              <form action="verify" method="post">
				<!-- Name input -->
				<div class="row gx-5">
				
					<div class="col form-outline mb-4">
						<div>
							<label class="form-label" for="form2Example1">Email<span style="color:red;font-size: 18px;">*</span></label> <input
								type="email" id="form2Example1" class="form-control" name="Verifyemail"
								placeholder="Enter email" value="${email}" required />
						</div>
					</div>

					<div class="col form-outline mb-4" style="margin-top:36px">
						<div>
							<input type="submit" value="send" id="form2Example1" class="btn btn-primary btn-block mb-4 w-50">
						</div>
					</div>
				</div>
				</form>
			</div>

<!-- Form end Div 1 -->

<!-- Form Div 2 -->
			<div class="container px-4 ">
              <form action="otpverify" method="post">
				<!-- Name input -->
				<div class="row gx-5">
				
					<div class="col form-outline mb-4">
						<div>
							<label class="form-label" for="form2Example1">OTP<span style="color:red;font-size: 18px;">*</span></label> <input
								type="number" id="form2Example1" class="form-control" name="otp"
								placeholder="Enter otp" value="${Name}" required />
						</div>
					</div>

					<div class="col form-outline mb-4 " style="margin-top:36px">
						<div>
							<input type="submit" value="verify" id="form2Example1" class="btn btn-primary btn-block mb-4 w-50">
						</div>
					</div>
				</div>
				</form>
			</div>


<!-- Form end Div 2 -->



  
        
       
        
       
        
        
     




	</div>
    
    
    
    
  </div>  

</body>
</html>