<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%try{
              

String username=request.getParameter("username");
String userpass=request.getParameter("userpass");
String email=request.getParameter("email");
String address=request.getParameter("address");
String dob=request.getParameter("dob");
String branch=request.getParameter("branch");
String dep=request.getParameter("dep");
String desination=request.getParameter("desination");
String cname=request.getParameter("cname");
String doj=request.getParameter("doj");
String qualification=request.getParameter("qualification");
double salary=Double.valueOf(request.getParameter("salary"));
  double ta=14;
    double ta2=salary*ta/100;
    double da=22;
    double da2=salary*da/100;
    double hra=13;
    double hra2=salary*hra/100;
    double pf=13;
    double pf2=salary*pf/100;
    double lic=9;
    double lic2=salary*lic/100;
    double allowance;
    double deduction;
    double gsal;
    double netsal;
   
    

    allowance = (salary*ta)/100 + (salary*da)/100 + (salary*hra)/100;
    deduction = (salary*pf)/100 + (salary*lic)/100;
    gsal = salary + allowance;
    netsal = gsal - deduction;
    

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
PreparedStatement ps=con.prepareStatement("insert into pay values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

ps.setString(1,username);
ps.setString(2,userpass);
ps.setString(3,email);
ps.setString(4,address);
ps.setString(5,dob);
ps.setString(6,branch);
ps.setString(7,dep);
ps.setString(8,desination);
ps.setString(9,cname);
ps.setString(10,doj);
ps.setString(11,qualification);
ps.setDouble(12,salary);
ps.setDouble(13,ta);
ps.setDouble(14,ta2);
ps.setDouble(15,da);
ps.setDouble(16,da2);
ps.setDouble(17,hra);
ps.setDouble(18,hra2);
ps.setDouble(19,pf);
ps.setDouble(20,pf2);
ps.setDouble(21,lic);
ps.setDouble(22,lic2);
ps.setDouble(23,allowance);
ps.setDouble(24,deduction);
ps.setDouble(25,gsal);
ps.setDouble(26,netsal);

int s=ps.executeUpdate();

if(s>0){
%>
<jsp:forward page="registersuccess.jsp"></jsp:forward>
<% 
}
else{
out.print("sorry!please fill correct detail and try again" );
}
}catch(SQLException e2){
out.print("sorry!please fill correct detail and try again" );
e2.printStackTrace();
}
%>

    </body>
</html>
