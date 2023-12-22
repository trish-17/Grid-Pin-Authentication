<cfif isdefined("form.subsubmit")>
<!---<cfoutput>#lenmax# <br /> #form.txt_blk#<br>
#form.txt_grid#<br> #form.txt_pin#<br>#form.txt_name# </cfoutput>--->
 
    <cfquery name="Login_details" datasource="Gridpin">
        SELECT * FROM Login_details
            WHERE Name='#form.txt_name#'
    </cfquery> 
    
    <cfif Login_details.recordcount eq 0>
    	<script >
                  alert("Invalid username or pin");
				  parent.window.location.href="login.cfm";
             </script>
             <cfabort>  
 </cfif> 


	<cfif isdefined("form.txt_pin") and (len(trim(form.txt_pin)) neq #Login_details.pin#)>
                  <script >
                      alert('Invalid username or pin');
                            parent.window.location.href="login.cfm";
                 </script>
                 <cfabort>
    </cfif>

    <cfset PNo=#login_details.Position#>
    <cfset blockno="#trim(form.txt_blk)#">
   
	<cfset serverGenNumber = "">
        <cfloop list="#blockno#" index="num" delimiters=","> 
    
                <cfset listIndex= 9*num+PNo>
                <cfset serverGenNumber = "#serverGenNumber##listgetat(form.txt_grid,listIndex)#">
        
        </cfloop>  
   
    <cfif (#val(serverGenNumber)# neq #form.txt_pin#) >
    	     <script >
                  alert('Invalid username or pin');
				   		parent.window.location.href="login.cfm";
             </script>
             <cfabort>
       
       <cfelse>
           Login Successful 
    
    </cfif>
</cfif> 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
<!---	<cfoutput>#error#</cfoutput>		
		<cfif #error# eq 0>
		<!---Index taken in Array--->
		   <cfif len(#trim(form.index_no)#) neq 0 and (#trim(form.index_no)#) is not "">
				<Cfset Arr_count=#listtoarray(form.index_no,",")#>   
		  </cfif>   
		  <cfif len(#trim(form.txt_pin)#) neq 0>
				<Cfset Arr_pin=#listtoarray(form.txt_pin,",")#>   
		  </cfif> 
	   <!--- end of index array--->	
	  
	  <cfoutput>#Arr_count#</cfoutput></cfif>--->

			
			<!---<cfif #arraylen(Arr_count)# LTE >
                                    <cfloop index="i" from="1" to="#arraylen(Arr_Units)#">
											<cfif #Len(trim(Arr_Units[i]))#  eq 5>
                                               <cfset noServerSideErrorFlag = False>
                                            <cfelse>
                                               <cfset noServerSideErrorFlag = True>
                                                <script>
                                                    alert("USI Number must be 5 characters only");
                                                </script>
                                            </cfif>                             
                                    </cfloop>
                              <cfelse> 
                                    <cfset noServerSideErrorFlag = True>                            	
                                    <script>
                                        alert("Do not add USI Numbers more than 10");
                                    </script>
                             </cfif>
                         </cfif>--->	
                         
             <!---            
                         <cfquery >

SELECT TOP 1000 [id]
      ,[Name]
      ,[Pin]
      ,[Position]
      ,[Index_No]
  FROM [Gridpin].[dbo].[Login_details]
</cfquery>
			
			
					  	 <cfif len(#trim(count)#) neq -1>
                <Cfset Arr_count=#listtoarray(count,",")#>   
            </cfif> 
			
			
			<cfif #arraylen(Arr_count)# LTE >
                                    <cfloop index="i" from="1" to="#arraylen(Arr_Units)#">
											<cfif #Len(trim(Arr_Units[i]))#  eq 5>
                                               <cfset noServerSideErrorFlag = False>
                                            <cfelse>
                                               <cfset noServerSideErrorFlag = True>
                                                <script>
                                                    alert("USI Number must be 5 characters only");
                                                </script>
                                            </cfif>                             
                                    </cfloop>
                              <cfelse> 
                                    <cfset noServerSideErrorFlag = True>                            	
                                    <script>
                                        alert("Do not add USI Numbers more than 10");
                                    </script>
                             </cfif>
                         </cfif>			              

<cfif #Position_details.id# eq 1>
		<cfset t1="0,3,6,27,30,33,54,57,60">
	     <cfif #listfindnocase(t1,count)# gt -1>
		 	
		 </cfif>	
	<cfelseif #Position_details.id# eq 2>    
		<cfset t2="1,4,7,28,31,34,55,58,61">
		<cfif #listfindnocase(t1,count)# gt 0>
		 	
		 </cfif>
	<cfelseif #Position_details.id# eq 3>     
		<cfset t3="2,5,8,29,32,35,56,59,62">
		<cfif #listfindnocase(t1,count)# gt 0>
		 	
		 </cfif>
	<cfelseif #Position_details.id# eq 4>     
		<cfset t4="9,12,15,36,39,42,63,66,69">
		<cfif #listfindnocase(t1,count)# gt 0>
		 	
		 </cfif>
	<cfelseif #Position_details.id# eq 5>     
		<cfset t5="10,13,16,37,40,43,64,67,70">
		<cfif #listfindnocase(t1,count)# gt 0>
		 	
		 </cfif>
	<cfelseif #Position_details.id# eq 6>     
		<cfset t6="11,14,17,38,41,44,65,68,71">
		<cfif #listfindnocase(t1,count)# gt 0>
		 	
		 </cfif>
	<cfelseif #Position_details.id# eq 7>     
		<cfset t7="18,21,24,45,48,51,72,75,78">
		<cfif #listfindnocase(t1,count)# gt 0>
		 	
		 </cfif>
	<cfelseif #Position_details.id# eq 8>     
		<cfset t8="19,22,25,46,49,52,73,76,79">
		<cfif #listfindnocase(t1,count)# gt 0>
		 	
		 </cfif>
	<cfelseif #Position_details.id# eq 9>    
		<cfset t9="20,23,26,47,50,53,74,77,80">
		<cfif #listfindnocase(t1,count)# gt 0>
		 	
		 </cfif>
</cfif>
 	  --->