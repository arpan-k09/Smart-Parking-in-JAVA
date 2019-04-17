<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,java.util.* ,java.io.*,javax.servlet.http.*,javax.servlet.*" %>


<%
//    String name = request.getParameter("username");
//    
//    String pass = request.getParameter("pass");
        int id=(int)session.getAttribute("id");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        // loads mysql driver

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
        out.println("successfuly connected");
        Statement st = con.createStatement();
        String sql = "SELECT * FROM parking WHERE id='"+id+"';";
        ResultSet rs = st.executeQuery(sql);
        

        if(rs.next())
        {
            %>
            
            <%
            out.println("<br><h4><p>Total Number of Parking Slots = "+rs.getInt("total")+"<br>"); 
            out.println("Available Parking Slots = "+rs.getInt("available")+"</p></h4><hr>");
            if((rs.getInt("available")==0) && (session.getAttribute("name")!=null))
            {
                out.println("<div class='6u 12u$(xsmall)' style='margin-left:23.33%;margin-right:33.33%'>"
                            +"<a class='button special fit' href='price.jsp'>Book Now</a></div>");
            }
            else if(session.getAttribute("name")==null)
            {
                out.println("<h4>Login is required to book slot.</h4> ");
            }
            else
            {
                out.println("<h4>Sorry, currently no Slot is available.</h4> ");
            }
            
        }

        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    //RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
%>
