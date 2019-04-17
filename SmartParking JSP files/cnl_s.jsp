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

            function isValidNumber() {
                var Number = document.forms["cnl_s"]["v_num"].value;
                var pattern = "^[A-Z]{2}([-])[0-9]{2}([-])[A-Z]{2}([-])[0-9]{4}";

                if (!Number.match(pattern)) {

                    alert("Number Plate Format Should Be GJ-01-XX-0000 ");
                    return false;
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
                    <h3>Cancel</h3>
                    <form name="cnl_s" method="post" action="#" onsubmit="return isValidNumber()">
                        <div class="row uniform 50%">
                            <div class="12u$">
                                <div class="select-wrapper">
                                    <select name="demo-category" id="demo-category">
                                        <option value="">- Category -</option>
                                        <option value="1">2-Wheeler</option>
                                        <option value="1">4-Wheeler</option>

                                    </select>
                                </div>
                            </div>

                            <div class="12u$">
                                <input type="text" name="v_num" id="v_num" value="" placeholder="ex : GJ-01-XX-0000" />
                            </div>
                            <div class="12u$">
                                <input type="text" name="slot_num" id="slot_num" value="" placeholder="Enter Slot Number" />
                            </div>
                            <div class="12u$">
                                <ul class="actions">
                                    <li><input type="submit" value="ADD" class="special" /></li>
                                    <li><input type="reset" value="RESET" /></li>
                                </ul>
                            </div>
                        </div>
                    </form>
                </section>
            </div>
        </section>



    </body>
</html>
