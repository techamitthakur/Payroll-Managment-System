
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="font-weight:bold;background-image:url(image/2.jpg);;background-repeat:no-repeat;background-size: 100% ; color:white ">

        
<%
    	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
        
<h2 align="center"><font><strong><b>List Of Employees</b></strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>
 
</tr>
	<tr bgcolor="dodgerblue">
		<td><b>Employee Id</b></td>
		<td><b>Password</b></td>
		<td><b>Email</b></td>
                <td><b>Address</b></td>
		<td><b>DOB</b></td>
                <td><b>Branch</b></td>
                <td><b>Departement</b></td>
               <td><b>Desination</b></td>
               <td><b>Company Name</b></td>
               <td><b>DOJ</b></td>
               <td><b>Qualification</b></td>
               <td><b>Salary</b></td>
               
               
               
	</tr>
   <%
	try{	
		connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
		statement=connection.createStatement();
		String sql ="SELECT * FROM pay";

		resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
	%>
		<tr bgcolor="skyblue">
			
			<td><%=resultSet.getString("username") %></td>
			<td><%=resultSet.getString("userpass") %></td>
			<td><%=resultSet.getString("email") %></td>
			<td><%=resultSet.getString("address") %></td>
			<td><%=resultSet.getString("dob") %></td>
                        <td><%=resultSet.getString("branch") %></td>
                        <td><%=resultSet.getString("dep") %></td>
                        <td><%=resultSet.getString("desination") %></td>
                        <td><%=resultSet.getString("cname") %></td>
                        <td><%=resultSet.getString("doj") %></td>
                        <td><%=resultSet.getString("qualification") %></td>
                        <td><%=resultSet.getString("salary") %></td>
                        
		            
	<%		
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
%>

</table>