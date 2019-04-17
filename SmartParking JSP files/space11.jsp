<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,java.util.* ,java.io.*,javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE HTML>

<html>
    <head>
        <title>Login Page!</title>
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



                <section>
                    <h3>Parking</h3>
                    <hr>
                    <h4>Pay And Park By SMC.,Under Ring Road Flyover, Sahara Darwaja, New Textile Market, Surat, Gujarat 395003</h4>


                    <iframe class="12u$" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14880.535610757966!2d72.8281775316299!3d21.186839027091228!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x151fcc903de5b38f!2sPay+And+Park+By+SMC.!5e0!3m2!1sen!2sin!4v1553612662847" width="800" height="500" frameborder="0" style="border:0" allowfullscreen></iframe>

                    </iframe>

                    <div id="id1">
                        
                        <%
                            String i="11";
                            session.putValue("id", i);
                            String str = String.valueOf(session.getAttribute("id"));
                            int id=Integer.parseInt(str);
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                // loads mysql driver

                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
                                
                                Statement st = con.createStatement();
                                String sql = "SELECT * FROM parking WHERE id='" + id + "';";
                                ResultSet rs = st.executeQuery(sql);

                                if (rs.next()) {
                                    out.println("<br><h4><p>Total Number of Parking Slots = " + rs.getInt("total") + "<br>");
                                    out.println("Available Parking Slots = " + rs.getInt("available") + "</p></h4><hr>");
                                    if ((rs.getInt("available") >= 0) && (session.getAttribute("name") != null)) {
                                        con.close();
                                        out.println("<div class='6u 12u$(xsmall)' style='margin-left:23.33%;margin-right:33.33%'>"
                                                + "<a class='button special fit' href='price.jsp'>Book Now</a></div>");
                                    } else if (session.getAttribute("name") == null) {
                                        out.println("<h4>Login is required to book slot.</h4> ");
                                    } else {
                                        out.println("<h4>Sorry, currently no Slot is available.</h4> ");
                                    }

                                }

//                                con.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                            //RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
                        %>
                        
                    </div>
                </section>


            </div>
        </section>

    </body>
</html>
