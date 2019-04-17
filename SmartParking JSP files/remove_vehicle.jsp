<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,java.util.* ,java.io.*,javax.servlet.http.*,javax.servlet.*" %>


<%

    String no = request.getParameter("no");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        // loads mysql driver

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
        out.println("successfuly connected");
        Statement st = con.createStatement();
        String sql = "DELETE from vehicle_info WHERE no='"+no+"'";
        int i = st.executeUpdate(sql);
        
        response.sendRedirect("veh_info.jsp");
        
        
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    //RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
%>
