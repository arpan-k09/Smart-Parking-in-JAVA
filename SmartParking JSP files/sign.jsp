<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,java.util.* ,java.io.*,javax.servlet.http.*,javax.servlet.*" %>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String fn = request.getParameter("fname");
            String ln = request.getParameter("lname");
            String em = request.getParameter("email");
            String mo = request.getParameter("mob_num");
            int mb = Integer.parseInt(mo);
            String p = request.getParameter("pass");

            out.println(fn + "    " + ln + "  " + em + "  " + mb + "  " + p);

            try {
                Class.forName("com.mysql.jdbc.Driver");
                // loads mysql driver

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
                out.println("successfuly connected");
                Statement st = con.createStatement();
                String sql = "INSERT INTO `user` (`fname`, `lname`, `email`, `monum`, `pass`) VALUES ('" + fn + "', '" + ln + "', '" + em + "', " + mb + ", '" + p + "')";
                int i = st.executeUpdate(sql);

                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            response.sendRedirect("home.jsp");
            //RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
%>
    </body>
</html>