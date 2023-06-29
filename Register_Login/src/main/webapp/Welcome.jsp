<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</head>
<body>
<!--navbar start-->
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">

            <div class="container">
                  
				<a href="" class="navbar-brand"><img
					src="https://res.cloudinary.com/dsedsmqrs/image/upload/v1685905487/1685905387595_t6z2ge.png"
					class="img-fluid" alt="company logo"
					style="height: 40px; width: 180px;"> </a>
				

                     <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#Mynavbar" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                     </button>
 
            <div class="collapse navbar-collapse" id="Mynavbar">

                <ul class="navbar-nav ms-auto">
                   <li class="nav-item"> 
                    <form action="logout" method="post">

                    <input type="submit" value="Logout" class="text-white bg-dark btn">
                    </form>
                   </li>

                   
                </ul>

            </div>

           </div>
           
        </nav>
    </header>
    <!--end navbar -->
    
    
    <div class="container-fluid" style="margin-top:100px;">
     
     <h3>Welcome <% out.println(session.getAttribute("Name"));  %> to our page</h3>
    
    </div>


<%
            
           response.setHeader("Cache-Control", "no-cache , no-store ,must-revalidate");

           if(session.getAttribute("Email")==null)
           {
        	   response.sendRedirect("Login.jsp");
           }


%>




</body>
</html>