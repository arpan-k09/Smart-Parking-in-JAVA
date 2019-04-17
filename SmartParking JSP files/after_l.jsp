<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,java.util.* ,java.io.*,javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE HTML>

<html>
	<head>
		<title>Services</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="main.css" />
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
					

					
					<!-- Lists -->
						<section><div id="res">
							<h2>Services</h2>
							<div class="row">
								<div class="6u 12u$(xsmall)">

									<h4>Vehicle Related Services</h4>

										<ul class="actions vertical">
											<li><a href="add_v.jsp" class="button special fit">Add Vehicle</a></li>
											<li><a href="remove_veh.jsp" class="button special fit">Remove Vehicle</a></li>
											<li><a href="veh_info.jsp" class="button special fit">Vehicle Info</a></li>
											
										</ul>
									
								</div>
								<div class="6u$ 12u$(xsmall)">

									<h4>Parking Related Services</h4>
										
										<ul class="actions vertical">
											
											<li><a href="book_s.jsp" class="button special fit">Book Slot</a></li>
											<li><a href="cnl_s.jsp" class="button special fit">Cancel Slot</a></li>
											
											
										</ul>
								</div>
							</div>
						</div></section>
				</div>
			</section>			
		
	</body>
</html>