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
                <header class="major special">
                    <h1>Vehicle Info</h1>
                    <hr>

                </header>
                <section>

                    <div class='table-wrapper'>
                        <table class='alt'>
                            <thead>
                                <tr>

                                    <th>Category</th>
                                    <th>Vehicle Number</th>

                                </tr>
                            </thead>
                            <tbody>
                                <%                    if (session.getAttribute("name") != null) {
                                        String email = (String) session.getAttribute("email");

                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            // loads mysql driver

                                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");

                                            Statement st = con.createStatement();
                                            String sql = "SELECT * FROM `vehicle_info` WHERE email='" + email + "'";
                                            ResultSet rs = st.executeQuery(sql);
//                                            out.println("<section>");
//                                            out.println("<div class='table-wrapper'>");
//                                            out.println("<table class='alt'>");
//                                            out.println("<thead>");
//                                            out.println("<tr>");
//                                            out.println("<th>Category</th>");
//                                            out.println("<th>Vehicle Number</th>");
//                                            out.println("</tr>");
//                                            out.println("</thead>");
//                                            out.println("<tbody>");
                                            while (rs.next()) {
                                %>
                                <tr>
                                    <td><%=rs.getString("category")%></td>
                                    <td><%=rs.getString("no")%></td>
                                </tr>
                                <%
                                            }
                                            //                                            out.println("</tbody></table></section>");

                                            con.close();
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }

                                    } else {
                                        out.println("<h4>No Information Available.</h4>");
                                    }

                                    //RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
%>
                            </tbody>

                        </table>
                    </div>
                </section>

                <form name="add" method="post" action="remove_vehicle.jsp" onsubmit="return isValidNumber()">

                    <h4>Enter the number of the vehicle which you want to delete.</h4>
                    <div class="12u$">
                        <input type="text" name="no" id="demo-name" value="" placeholder="Vehicle Number ex : GJ-01-XX-0000" />
                    </div>
                    <br>

                    <div class='12u$''>
                        <ul class='actions'>
                            <li><input type='submit' value='Remove' class='special' /></li>
                            <li><input type='reset' value='RESET' /></li>
                        </ul>
                    </div>

                </form>





            </div>
        </section>


    </div>
</section>

</body>
</html>
