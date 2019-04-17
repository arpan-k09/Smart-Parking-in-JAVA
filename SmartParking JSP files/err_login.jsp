<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,java.util.* ,java.io.*,javax.servlet.http.*,javax.servlet.*" %>



<!DOCTYPE HTML>

<html>
	<head>
		<title>Services</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="main.css" />
		<script>setTimeout(function(){
			window.location.href='login.jsp'},3000);
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
					

					
						<section>
                            <h3>Parking</h3>
                            <hr>
                            
							<center>
							<h1>Invalid Login Details.</h1>
                            </center>
						</section>
						

                </div>
            </section>

    </body>
</html>
