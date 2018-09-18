<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Record Deleted</title>
    </head>
    <body>
        <% 
            String id=request.getParameter("id");
            int no=Integer.parseInt(id);
            int sumcount=0;
            try
            {
                
Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
Statement st=con.createStatement();
st.executeUpdate("delete from pay where username= '"+no+"' ");
response.sendRedirect("listofemp.jsp");
            }
            catch(Exception e)
            {
                
            }
             %>
           
           
    </body>
</html>
