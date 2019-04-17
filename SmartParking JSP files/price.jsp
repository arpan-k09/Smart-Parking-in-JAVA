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
                <header class="major special">
                    <h1>BOOK SLOT</h1>
                    <hr><br>

                </header>

                <section>

                    <h4>For 2-Wheelers(Bikes)</h4>
                    <div class="table-wrapper">
                        <table class="alt">
                            <thead>
                                <tr>

                                    <th>Structure of Parking (per hour)</th>
                                    <th>Price (in Rs.)</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>

                                    <td>For 1 hour</td>
                                    <td>5.00</td>
                                </tr>
                                <tr>

                                    <td>For 1 hour to 5 hours</td>
                                    <td>10.00</td>
                                </tr>
                                <tr>

                                    <td>For 5 hours to 24 hours(1 Day)</td>
                                    <td>20.00</td>
                                </tr>
                                <tr>

                                    <td>Above 24 hours(1 Day)</td>
                                    <td>25.00</td>
                                </tr>

                            </tbody>

                        </table>
                    </div>
                </section>		
                <br><hr><br>
                <section>

                    <h4>For 4-Wheelers(Cars)</h4>
                    <div class="table-wrapper">
                        <table class="alt">
                            <thead>
                                <tr>

                                    <th>Structure of Parking (per hour)</th>
                                    <th>Price (in Rs.)</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>

                                    <td>For 1 hour</td>
                                    <td>10.00</td>
                                </tr>
                                <tr>

                                    <td>For 1 hour to 5 hours</td>
                                    <td>20.00</td>
                                </tr>
                                <tr>

                                    <td>For 5 hours to 24 hours(1 Day)</td>
                                    <td>25.00</td>
                                </tr>
                                <tr>

                                    <td>Above 24 hours(1 Day)</td>
                                    <td>30.00</td>
                                </tr>

                            </tbody>

                        </table>
                    </div>
                </section>		
                <div class='6u 12u$(xsmall)' style='margin-left:23.33%;margin-right:33.33%'>
                    <a class='button special fit' href='confirmbook.jsp'>Confirm Booking</a></div>

            </div>
        </section>



    </body>
</html>
