<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,java.util.* ,java.io.*,javax.servlet.http.*,javax.servlet.*" %>


<%
    String cat = request.getParameter("add-category");
    
    String no = request.getParameter("no");
    
    String email = (String)session.getAttribute("email");


    try {
        Class.forName("com.mysql.jdbc.Driver");
        // loads mysql driver

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
        out.println("successfuly connected");
        Statement st = con.createStatement();
        String sql = "INSERT INTO `vehicle_info` (`email`, `category`, `no`) VALUES ('"+email+"', '"+cat+"', '"+no+"')";
        int i = st.executeUpdate(sql);
        
        response.sendRedirect("veh_info.jsp");
        
        
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    //RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
%>
