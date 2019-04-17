<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,java.util.* ,java.io.*,javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE HTML>

<html>
	<head>
		<title>Login Page!</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="main.css" />

		<script>

		function validateForm() 
			{
				
    			var em = document.forms["myForm1"]["username"].value;    
    			
   				var pass = document.forms["myForm1"]["pass"].value;  
    			
  				
    			   
    			if (em == "")                                   
    			{ 
        			alert("Email must be filled out"); 
        			 
        			return false; 
    			} 
   
    			else if (em.indexOf("@", 0) < 0)                 
    			{ 
        			alert("Please enter a valid e-mail address."); 
        			 
        			return false; 
    			} 
   
    			else if (em.indexOf(".", 0) < 0)                 
    			{ 
        			alert("Please enter a valid e-mail address."); 
        			
        			return false; 
    			} 
   
			     
   				

			    else if (pass === "")                        
    			{ 
        			alert("Password must be filled out");
        			return flase; 
    			} 
    			
   			}
			
       	</script>
	</head>
	<body>

            <!-- Header -->
            <header id="header">
                <div class="inner">
                    <a href="index.jsp" class="logo">Smart Parking</a>
                    <nav id="nav">
                        <a href="index.jsp">Home</a>
                        <%
                            String s = (String) session.getAttribute("name");
                            if (s != null) {
                                out.println("<a href='after_l.jsp'>Services</a>"
                                        + "<a href='c_us.jsp'>Contact Us</a>"
                                        + "<a href='#'>" + s + "</a>"
                                        + "<a href='logout.jsp'>Logout</a>");
                            } else {
                                out.println("<a href='signup.jsp'>Register</a>"
                                        + "<a href='login.jsp'>Login</a>"
                                        + "<a href='after_l.jsp'>Services</a>"
                                        + "<a href='c_us.jsp'>Contact Us</a>");
                            }


                        %>
                    </nav>
                </div>
            </header>

		<!-- Main -->
			<section id="main">
				<div class="inner">
					

					<!-- Form -->
						<section>
							<h3>Sign in!</h3><hr>
							<form name="myForm1" method="post" action="login1.jsp" onsubmit="return validateForm()">
								<div class="row uniform 50%">
									
									
									
									<div class="12u$">
										<input type="email" name="username" id="username" value="" placeholder="User Name" />
									</div>
									
								

									<div class="12u$">
										<input type="Password" name="pass" id="pass" value="" placeholder="Password" />
									</div>

								
									<div class="12u$">
										<ul class="actions">
											<li><input type="submit" value="Login" class="special" /></li>
											
										</ul>
									</div>
								</div>
							</form>
							<hr>
						</section>

				</div>
			</section>

	

	</body>
</html>
