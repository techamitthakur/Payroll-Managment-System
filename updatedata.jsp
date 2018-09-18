
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Data</title>
    </head>
    <body>
          <%try{

String username=request.getParameter("username");
String userpass=request.getParameter("userpass");
String email=request.getParameter("email");
String address=request.getParameter("address");
String dob=request.getParameter("dob");
String branch=request.getParameter("branch");
String desination=request.getParameter("desination");
String cname=request.getParameter("cname");
String doj=request.getParameter("doj");
String qualification=request.getParameter("qualification");
String salary=request.getParameter("salary");

Connection conn = null;
Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("UPDATE pay set username = '"+username+"' , userpass= '"+userpass+"', email = '"+email+"',address = '"+address+"',dob = '"+dob+"',branch = '"+branch+"',desination = '"+desination+"',cname = '"+cname+"' ,doj = '"+doj+"' ,qualification = '"+qualification+"',salary = '"+salary+"' Where USERNAME = '"+username+"'");
System.out.println("done!! updating1");
{
%>
<jsp:forward page="updatesucessful.jsp"></jsp:forward>
<% 
}

}catch(SQLException e2){
    out.print("sorry!please fill correct detail and try again" );
System.out.println(e2);
}
          finally
{
    System.out.println("done!! updating2");
}
          
%>


</body>
</html>
