<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,java.util.* ,java.io.*,javax.servlet.http.*,javax.servlet.*" %>


<%
    String name = request.getParameter("username");
    
    String pass = request.getParameter("pass");


    try {
        Class.forName("com.mysql.jdbc.Driver");
        // loads mysql driver

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
        out.println("successfuly connected");
        Statement st = con.createStatement();
        String sql = "SELECT * FROM user WHERE email='"+name+"' AND pass='"+pass+"'";
        ResultSet rs = st.executeQuery(sql);
        

        if(rs.next())
        {
//          out.println(rs.getString("fname")); 
            session.putValue("name",rs.getString("fname"));
            session.putValue("email",rs.getString("email"));
            response.sendRedirect("index.jsp");
        }
        else
        {
            response.sendRedirect("err_login.jsp");
        }
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    //RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
%>
