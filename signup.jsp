<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup Page</title>
    <style>
            #first
            {
                
                height:100%;
                width:50%;
                 
                float:right;
            }
            #second
            {
                height:100%;
               
                 width:50%;
              
                  float:left;
            }
           
            </style>
    </head>
    <body style=" background-image:url(image/2.jpg);font-weight:bold;;background-repeat:no-repeat;background-size: 100% ; font-size:200%; color:white ">
        <form name="myform" action="signupdata.jsp">
     <div id="second">
            <center><table>
                    <tr><td><th>Personal Information</th></td>
                        <tr><td><th> </th></td></tr> 
                        <tr><td><th> </th></td></tr> 
                    </tr>
<tr><td>Employee Name:  </td><td><input type="text" name="username"/></td></tr>
	<tr><td><br></td></tr>
	
<tr><td>Password:  </td><td><input type="password" name="userpass"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Email Id:</td><td><input type="email" name="email"/></td></tr>
	<tr><td><br></td></tr>
       	<tr><td>Date Of Birth:</td><td><input type="date" name="dob"/></td></tr>
	<tr><td><br></td></tr>
        <tr><td>Qualification:</td><td><select name="qualification">
					<option>Select a qualification</option>
					<option>Diploma</option>
					<option>Graduation</option>
					<option>Post Graduation</option>
					</select></td></tr>
					<tr><td><br></td></tr>
                                         <tr><td>Address:</td><td><input type="text" name="address"/></td></tr>
	<tr><td><br></td></tr>        
            </table></center>
        </div>
        <div id="first">
            <center><table>
                    <tr><td><th>Professional Information</th></td></tr>
                    <tr><td><th> </th></td></tr> 
                    <tr><td><th> </th></td></tr> 
<tr><td>Designation </td><td><input type="text" name="desination"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Company Name:</td><td><input type="text" name="cname"/></td></tr>
	<tr><td><br></td></tr>
	<tr><td>Salary:</td><td><input type="text" name="salary"/></td></tr>
	<tr><td><br></td></tr>
        <tr><td>Date Of joining:</td><td><input type="date" name="doj"/></td></tr>
	<tr><td><br></td></tr>        
         <tr><td>Branch:</td><td><select name="branch">
					<option>Select a Branch</option>
					<option>Gurgaon</option>
                                        <option>Banglore</option>
					<option>Delhi</option>
					<option>Agra</option>                                        
					</select></td></tr>
					<tr><td><br></td></tr>     
                                             
         <tr><td>Department:</td><td><select name="dep">
					<option>HR</option>
					<option>IT</option>
                                        <option>Sales</option>
					<option>Production</option>
                                        </select></td></tr>
					<tr><td><br></td></tr>     
            </table></center>
            </div> 
            </br></br></br></br>
            </br>
</br>           </br></br></br></br> 
            </br></br></br></br>
             </br>    
	
  <center> <input type="submit" value="Register"/> </Center>
           </form> 
</html>
