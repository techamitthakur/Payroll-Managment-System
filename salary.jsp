<%@page import="java.sql.*"%>
<html>
     <title>Employee Salary Statement</title>
 </head>
    </head>
    <body style="font-weight:bold;background-image:url(image/2.jpg);;background-repeat:no-repeat;background-size: 100% ;  color:white">
         
        <% 
            
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection connection=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");

            Statement statement = connection.createStatement();

            String id = request.getParameter("id");  

            ResultSet resultset = 
                statement.executeQuery("select * from pay where username = '" + id + "'") ; 
                      if(!resultset.next()) {
                              out.println("Sorry, Could not find that Employee. " +
                "Please <A HREF='salarysearch.jsp'>try again</A>");
             
            } else {
        %>
          
          <% 
           } 
       %>
          <h2 align="center"><font><strong><b>SALARY STATEMENT</b></strong></font></h2>
          <center>
          <h2><font color="white"><td><%=resultset.getString(9)%></td>>Employee Detail<br></font></h2>
        
     <table border=5 bgcolor="biege" height=600 width=400 >
     
    <tr><td>Employee ID</td><td colspan=2><%=resultset.getString(1)%></td></tr>
    <tr><td>Department</td><td colspan=2><%=resultset.getString(7)%></td></tr>
    <tr><td>Designation</td><td colspan=2><%=resultset.getString(8)%></td></tr>
    <tr><td>Basic Salary</td><td colspan=2><%=resultset.getDouble(12)%></td></tr>
    <tr><th>Allowances</th><th>Percentage</th><th>Amount</th></tr>
    <tr align=center><td>TA</td><td><%=resultset.getDouble(13)%></td><td><%=resultset.getDouble(14)%></td></tr>
    <tr align=center><td>DA</td><td><%=resultset.getDouble(15)%></td><td><%=resultset.getDouble(16)%></td></tr>
    <tr align=center><td>HRA</td><td><%=resultset.getDouble(17)%></td><td><%=resultset.getDouble(18)%></td></tr>
    <tr><th>Total Allowance:</th><td colspan=2><%=resultset.getDouble(23)%></td><tr>
    <tr><th>Deductions</th><th>Percentage</th><th>Amount</th></tr>
    <tr align=center><td>PF</td><td><%=resultset.getDouble(19)%></td><td><%=resultset.getDouble(20)%></td></tr>

    <tr align=center><td>LIC</td><td><%=resultset.getDouble(21)%></td><td><%=resultset.getDouble(22)%></td></tr>
    <tr><th>Total Deduction:</th><td colspan=2><%=resultset.getDouble(24)%></td><tr>
    <tr><td>Gross Salary</td><td colspan=2><%=resultset.getDouble(25)%></td></tr>
    
    <tr><td>Net Salary</td><td colspan=2><%=resultset.getDouble(26)%></td></tr>
    </table>

          </center>

        </body>
</html>
