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
                var Number = document.forms["add"]["demo-name"].value;
                var cat = document.forms["add"]["category"].value;
                var pattern = "^[A-Z]{2}([-])[0-9]{2}([-])[A-Z]{2}([-])[0-9]{4}";

                if (cat == 0)
                {
                    alert("Please select a category");
                    return false;
                } else if (!Number.match(pattern)) {

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
                    <h3>Add Vehicle</h3>
                    <form name="add" method="post" action="add_vehicle.jsp" onsubmit="return isValidNumber()">
                        <div class="row uniform 50%">
                            <div class="12u$">
                                <div class="select-wrapper">
                                    <select name="add-category" id="category">
                                        <option value="0">- Category -</option>
                                        <option value="2">2-Wheeler</option>
                                        <option value="4">4-Wheeler</option>
                                    </select>
                                </div>
                            </div>

                            <div class="12u$">
                                <input type="text" name="no" id="demo-name" value="" placeholder="Vehicle Number ex : GJ-01-XX-0000" />
                            </div>
                            <%
                                if(session.getAttribute("name")!=null)
                                {
                                    out.println("<div class='12u$''>");
                                    out.println("<ul class='actions'>");
                                    out.println("<li><input type='submit' value='ADD' class='special' /></li>");
                                    out.println("<li><input type='reset' value='RESET' /></li>");
                                    out.println("</ul>");
                                    out.println("</div>");
                                }
                                else
                                {
                                    out.println("<h4>Please Login to add Vehicle.</h4>");
                                }
                                %>
                            

                        </div>
                    </form>
                </section>
            </div>
        </section>


    </div>
</section>

</body>
</html>
