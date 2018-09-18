
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="font-weight:bold;background-image:url(image/2.jpg);;background-repeat:no-repeat;background-size: 100% ;  color:white">
        <h2 align="center"><font><strong><b>Employee Detail</b></strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
        <center>
      <br>
           
            
        <% 
            
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection connection=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");

            Statement statement = connection.createStatement();

            String id = request.getParameter("id");  

            ResultSet resultset = 
                statement.executeQuery("select * from pay where username = '" + id + "'") ; 
                      if(!resultset.next()) {
                              out.println("Sorry, Could not find that Employee. " +
                "Please <A HREF='searchemp.jsp'>try again</A>");
             
            } else {
        %>
        
        
            <TR bgcolor="dodgerblue">
            <th>Employee id</th>
            <th>Password</th>
            <th>Email</th>
            <th>Address</th>
            <th>DOB</th>
            <th>Branch</th>
            <th>Departement</th>
            <TH>Desination</TH>
            <TH>Company Name</TH>
            <TH>DOJ</TH>
            <TH>Qualification</TH>
            <TH>Salary</TH>
           </TR>
                       
                       
           <TR bgcolor="skyblue">
               <TD> <%= resultset.getString(1) %> </TD>
               <TD> <%= resultset.getString(2) %> </TD>
               <TD> <%= resultset.getString(3) %> </TD>
               <TD> <%= resultset.getString(4) %> </TD>
               <TD> <%= resultset.getString(5) %> </TD>
               <TD> <%= resultset.getString(6) %> </TD>
               <td> <%= resultset.getString(7)%></td>
               <TD> <%= resultset.getString(8) %> </TD>
               <TD> <%= resultset.getString(9) %> </TD>
               <TD> <%= resultset.getString(10) %> </TD>
               <TD> <%= resultset.getString(11)%> </TD>
               <TD> <%= resultset.getString(12) %> </TD>
           </TR>
       </TABLE>
       <BR>
       <% 
           } 
       %>
        </center>
    </body>
</html>
