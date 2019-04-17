<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,java.util.* ,java.io.*,javax.servlet.http.*,javax.servlet.*" %>


<%
    
    try {
        Class.forName("com.mysql.jdbc.Driver");
        // loads mysql driver
        String str = String.valueOf(session.getAttribute("id"));
        int id=Integer.parseInt(str);

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
        out.println("successfuly     connected and id = "+id);
        Statement st = con.createStatement();
        out.println("HII");
        String sql = "SELECT * FROM `parking` WHERE id='"+id+"'";
        out.println("HII");
        ResultSet rs = st.executeQuery(sql);
        out.println("HII");
        int av = rs.getInt("available");
        out.println("HII");
        av = av - 1;
        out.println("Available = "+av);

        if(rs.next())
        {
            String sq = "UPDATE parking SET available='"+av+"' WHERE id='"+id+"'";
            st.executeUpdate(sq);
            response.sendRedirect("afterbook.jsp");
        }
        
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    //RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
%>
