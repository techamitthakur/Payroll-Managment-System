<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style=" background-image:url(image/2.jpg);background-repeat:no-repeat;background-size: 100% ; color:white " >
        <%
String username=request.getParameter("username");
String userpass=request.getParameter("userpass");
boolean status=false;
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
PreparedStatement ps=con.prepareStatement("select * from pay where username=? and userpass=? ");
ps.setString(1,username);
ps.setString(2,userpass);

ResultSet rs=ps.executeQuery();
status=rs.next();
if(status){
System.out.print("hi");
username=rs.getString(2);
session.setAttribute("username",String.valueOf(username));
session.setAttribute("islogin","plz sign in first");

%>
<jsp:forward page="loginsuccess.jsp"></jsp:forward>
<%
}
else{
System.out.print("hi");
request.setAttribute("Error","Sorry! Username or Password Error. Plz Enter Correct Detail ");
session.setAttribute("Loginmsg","Plz sign in first");
%>
<H1><center>Sorry!! Invalid Username or Password </center></H1>
<H1><center>"Please <A HREF='index.jsp'>try again</A>") </center></H1>
<%
}
}
catch(Exception e){
e.printStackTrace();
}
%>
    </body>
</html>
