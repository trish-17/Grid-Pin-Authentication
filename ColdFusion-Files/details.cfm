<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<cfif isdefined("form.btnReg")>
<cfoutput>Username: #form.txt_name#
<br>Position: #form.txt_chose#<br>
Pin size: #form.pinsize#</cfoutput>


<cfquery name="Login_details" datasource="Gridpin">
	SELECT * FROM Login_details
      where Name='#form.txt_name#'
</cfquery>    

	<cfif Login_details.recordcount eq 0> 
    	<cfquery name="Position_details" datasource="Gridpin">
	       SELECT * FROM Position_Master
               where Position='#trim(form.txt_chose)#'
        </cfquery>  
        
       
    
        <cfquery name="logindetails" datasource="Gridpin">
            Insert into Login_details(Name,Pin,Position)
                values('#form.txt_name#',
                        #form.pinsize#,
                        #Position_details.id#
                       )
        </cfquery> 
        <script language="JavaScript">
                alert('Data Inserted Successfully');
       </script>
       <cfabort>
       
     <cfelse>
     	   <script language="JavaScript">
                alert('User already exist');
				parent.window.location.href="reg.cfm";
          </script>
    </cfif>   
</cfif>  
</body>
</html>
