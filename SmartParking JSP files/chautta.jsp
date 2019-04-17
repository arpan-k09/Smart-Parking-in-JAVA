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
                    <h3>Parking Spaces</h3>
                    <h4>List of Parking Spaces Areawise:</h4>

                    <div class="table-wrapper">
                        <table>
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Name</th>
                                    <th></th>

                                </tr>
                            </thead>
                            <tbody>

                                <tr>
                                    <td>1.</td>
                                    <td>S.M.C Multi level Parking-Chauta Bazar, Lal Gate, Shahpore</td>
                                    <td style="padding-top:1.5em"><a href="space3.jsp" class="button special fit">Book Slot</a></td>
                                </tr>
                                <tr>
                                    <td>2.</td>
                                    <td>Car Park,Opp. MAA & Baby, Rani Talab Rd, Lal Gate, Shahpore</td>
                                    <td style="padding-top:1.5em"><a href="space6.jsp" class="button special fit">Book Slot</a></td>
                                </tr>
                                <tr>
                                    <td>3.</td>
                                    <td>Surat Chotta Bazar, Car Parking</td>
                                    <td style="padding-top:1.5em"><a href="space7.jsp" class="button special fit">Book Slot</a></td>
                                </tr>
                            </tbody>

                        </table>
                    </div>

            </div>
        </section>



    </body>
</html>
