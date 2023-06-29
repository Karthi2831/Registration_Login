<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="index.css">


<style type="text/css">

body{
background-color:#8c3766;
}
</style>


</head>
<body>

     <!--  <form action="Register" method="post">
    
    <table>
       
       <tr>
      
       <td>UserName</td>
       <td><input type="text" name="username"></td>
       
       </tr>
       
       <tr>
      
       <td>Email</td>
       <td><input type="email" name="email"></td>
       
       </tr>
       
       <tr>
      
       <td>Password</td>
       <td><input type="password" name="password"></td>
       
       </tr>
       
       <tr>
      
       <td>Mobile No</td>
       <td><input type="number" name="mobile"></td>
       
       </tr>
       
        <tr>
     
       <td></td>
       <td><input type="submit" value="Register"></td>
     
       </tr>
    
    </table>
    
    
    
    </form>
    
    
    <div>
       <p>Already have a Account<a href="Login.jsp">Login</a></p>
    </div>
    
    <div>
    
    
    
    
    </div>-->
    
    <div class="container-sm">
    
     <div class="container-sm bg-white mb-4 col-12 col-md-6 " style="box-shadow: 5px 5px 20px;box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 15px 12px rgba(0,0,0,0.22);margin-top:20px;border-radius:5px;" >
    
    <!-- Login Heading -->
    <div class="container d-flex justify-content-center Login_title pt-4">
        <h4 class="text-primary">Registration</h4>
        </div>
       
    <form action="Register" method="post">
    
        <div class="container d-flex justify-content-center">
        <h4> ${Total_Ammount}</h4>
       
        </div>


<!-- Form Div 1 -->
			<div class="container px-4 ">

				<!-- Name input -->
				<div class="row gx-5">
					<div class="col form-outline mb-4">
						<div>
							<label class="form-label" for="form2Example1">Full Name<span style="color:red;font-size: 18px;">*</span></label> <input
								type="text" id="form2Example1" class="form-control" name="Name"
								placeholder="Enter name" value="${Name}" required />
						</div>
					</div>

					<!-- Email input -->
					<div class="col form-outline mb-4">
						<div>
							<label class="form-label" for="form2Example1">Email<span style="color:red;font-size: 18px;">*</span></label> <input
								type="email" id="form2Example1" class="form-control"
								name="email_id" placeholder="Enter email" value="${email_id}" required />
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
							<label class="form-label" for="form2Example1">Mobile Number<span style="color:red;font-size: 18px;">*</span>
								</label> <input type="number" id="form2Example1"
								class="form-control" name="Mobile_No"
								placeholder="Enter mobile number" value="${Mobile_No}" required />
						</div>
					</div>

					<!--Square feet input -->
					<div class="col form-outline mb-4">
						<div>
							<label class="form-label" for="form2Example2">Date of birth<span style="color:red;font-size: 18px;">*</span></label>
							<input type="date" id="form2Example2" class="form-control"
								name="dob" value="${Square_feet}"required />
						</div>
					</div>
				</div>
			</div>

<!-- Form end Div 2 -->

<!-- Gender -->
			<div class="form-outline mb-4 px-4">
				<label class="form-label " for="form2Example1">Gender<span style="color:red;font-size: 18px;">*</span></label><br>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio"
						 id="inlineRadio1" value="Male" name="Gender" value="${Gender }" checked>
					<label class="form-check-label" for="inlineRadio1" >Male</label>
				</div>

				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio"
						 id="inlineRadio2" value="Female" name="Gender" value="${Gender }">
					<label class="form-check-label" for="inlineRadio2">Female</label>
				</div>
				
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio"
						 id="inlineRadio2" value="Others" name="Gender" value="${Gender }">
					<label class="form-check-label" for="inlineRadio2">Others</label>
				</div>
				
		

			</div>
			<!-- Form Div 4 -->
			<div class="container px-4 ">

				<!--Bathroom Category feet input -->
				<div class="row gx-5">
					<div class="col form-outline mb-4">
						<div>
							<label class="form-label" for="form2Example2">Address<span style="color:red;font-size: 18px;">*</span></label>
                            <input type="text" id="form2Example2" class="form-control" name="address" placeholder="Enter address" value="${Wash_Room}" required/>
						</div>
					</div>

				
				</div>
			</div>

<!-- Form end Div 4-->

<!-- Form Div 3 -->
			<div class="container px-4 ">

				<!-- door Account -->
				<div class="row gx-5">
					<div class="col form-outline mb-4">
						<div>
							<label class="form-label" for="form2Example2">District<span style="color:red;font-size: 18px;">*</span></label>
							<input type="text" id="form2Example2" class="form-control"
								name="district" placeholder="Enter destrict" value="${No_Of_rooms}" required />
						</div>
					</div>

					<!--House Category feet input -->
					<div class="col form-outline mb-4">
						<div>
							<label class="form-label" for="form2Example2">State<span style="color:red;font-size: 18px;">*</span></label>
							<input type="text" id="form2Example2" class="form-control"
								name="state" placeholder="Enter state" value="${No_Of_rooms}" required />
						</div>
					</div>
				</div>
			</div>

<!-- Form end Div 3-->

			
  <!-- Form Div 5 -->
			<div class="container px-4 ">

				<!--Bathroom Category feet input -->
				<div class="row gx-5">
					<div class="col form-outline mb-4">
						<div>
							<label class="form-label" for="form2Example2">Pincode<span style="color:red;font-size: 18px;">*</span></label>
          <input type="number" id="form2Example2" class="form-control" name="pincode" placeholder="Enter pincode" value="${Wash_Room}" required/>
						</div>
					</div>

					
				</div>
			</div>

<!-- Form end Div 5-->

  <!-- Form Div 6 -->
			<div class="container px-4 ">

				<!--Bathroom Category feet input -->
				<div class="row gx-5">
					<div class="col form-outline mb-4">
						Already have a Account<a href="Login.jsp">Login</a>
					</div>

					
				</div>
			</div>

<!-- Form end Div 6-->
     
 
        
        <!-- Submit button -->
        <div class="container d-flex justify-content-center">
        <input type="submit" value="Register" class="btn btn-primary btn-block mb-4 w-50" >
        
        </div>
        
       
        
        
      </form>




	</div>
    
    
    
    
  </div>  
    

    

</body>
</html>