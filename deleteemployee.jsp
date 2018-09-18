<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Employee</title>
    </head>
    <body style="font-weight:bold;background-image:url(image/2.jpg);background-repeat:no-repeat;background-size: 100% ;font-size:200%; color: white ">
    <center>
         
        <FORM ACTION="delete.jsp" METHOD="POST">
            <br>
            <br>
            Please Enter the ID of the Employee :
            <BR>
            <INPUT TYPE="TEXT" NAME="id">
            <BR>
            <button onclick="myFunction()">Submit</button>

<script>

function myFunction() {

confirm("Are You Sure");

}

</script>
           
        </FORM>
    </center>
       

    </body>
</html>
 