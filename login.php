<?php
 
     include 'header.php';

   $error = "";
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $myusername = $_POST['username'];
      $mypassword = $_POST['password']; 
      

    $sql = "SELECT password FROM login WHERE username = '$myusername'";
      $result = mysqli_query($db,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      
      $count = mysqli_num_rows($result);
         

         if($count == 1) {
      
      $RESULT = $row['password'];
      if (password_verify($mypassword, $RESULT)) {
        
         $_SESSION['loged_in_name'] = $myusername;
       $_SESSION['loggedin'] = true;
       header("location: Home.php");
      }
       }else {
         $error = "Your Login Name or Password is invalid";
      }

      
}

   




?>
<html>
   
   <head>
      <title>Login Page</title>
      
   
      
   </head>
   
   <body >
	
      <div align="center">
         <div class="register_box">
            <div ><b>Login</b></div>
				
               
               <form action = "" method = "post">
                  <label>User name </label><br />

                  <input type = "text" name = "username" class = "box"/><br />

                  <label>Password </label><br />

                  <input type = "password" name = "password" class = "box" /><br/>

                  <input type = "submit" value = " Submit "/><br />

               </form>
               

               <div><?php echo $error; ?></div><br/>


               <div>


			   <div style="margin: 20px;" >New user? </div>

              <a style="border: solid; padding: 4px; width:180px;align-self: center;"  href = "register.php">Register now!</a>



            
            </div>   
           </div>
				
         
			
      </div>
<?php   include 'footer.php' ?>