

<!DOCTYPE html>
<html lang="en">
<base target="_self" >
<head>
    <link rel="stylesheet" href="Reg.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
</head>
<cfoutput>
<body>
   <form name="Register" id="Register" method="post" action="details.cfm"> 
	<table cellpadding="0" cellspacing="10" border="0" id="example" width="100%">    
 		<tr><td>    <h2>Register</h2></td></tr>   
       <tr>
         <td align="center" >Username: 
            <input type="text" name="txt_name" id="txt_name" size="15" placeholder="Enter Username" Value="<cfif isdefined("form.txt_name")>#txt_name#</cfif>" />
         </td></tr>
		<tr>
         <td align="center">Pin size: <select name="pinsize" id="pinsize" >
         				<option value="0">Select</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
      	             </select>
          </td></tr><br>

     <tr>
     	<td>
            <div class="container">
                <div class="row">
                  <div class="digit" > top left 
                  </div>
                  <div class="digit" > center left
                  </div>
                  <div class="digit"> down left
                  </div>
                </div>
                <div class="row">
                    <div class="digit" > top mid
                    </div>
                    <div class="digit" > center mid
                    </div>
                    <div class="digit"> down mid
                    </div>
                  </div>
                  <div class="row">
                    <div class="digit" > top right
                    </div>
                    <div class="digit" > center right
                    </div>
                    <div class="digit"> down right
                    </div>
                  </div>
            </div>
        </td>
    </tr><br>
            
<!-- <p id="d"></p>-->
        <script>
            // let text="You have chosen:"
             const collection = document.getElementsByClassName("digit");
             for (let i = 0; i < collection.length; i++) {
                collection[i].addEventListener('click', myF);
                  
                  function myF(){
				  	  document.Register.txt_chose.value = collection[i].innerHTML;
                      document.getElementById("txt_chose").innerHTML = collection[i].innerHTML;
                      collection[i].style.backgroundColor ='green';
                      collection[i].style.color = 'white';
                        for(let j=0; j<collection.length; j++){
                             if(j!=i){
                                  collection[j].style.backgroundColor ='white';
                                  collection[j].style.color = 'black';
                             }
                        }
                  }
              }
        </script>
    
    <tr>
        <td align="center">
            You have chosen: <input type="text" name="txt_chose" id="txt_chose" readonly value="<cfif isdefined("txt_chose")>#trim(txt_chose)#</cfif>">
        </td>
    </tr>
        
    <tr>
        <td>
            <input type="submit" name="btnReg" id="btnReg" value="Register" style="background: beige;">
        </td>
    </tr>
</table>    
</form> 
</body>
</cfoutput>
</html>