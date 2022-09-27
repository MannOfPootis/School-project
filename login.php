
 <?php
 include "Header.php";

if(
    array_key_exists( "username",$_POST)&&
    array_key_exists( "password",$_POST)
    )
    {
        $username=$_POST["username"];
        $password=$_POST["password"];
        $gotten_password=sqli_takefirst($conn->query("SELECT password from user where username ='$username'"));
        if(password_verify($password, $gotten_password))
        {

            $_SESSION["username"]=$username;
            $_SESSION["password"]=$password;
            $perm=sqli_takefirst($conn->query("SELECT permission from user where username = '$username'"));
            switch ($perm){


            case 3:{
              header("location:http://localhost/school-project/Admin/AdminUI.php");
              break;
            }
            case 2:
              {
                header("location:http://localhost/school-project/Prof/ProfUI.php");
                break;
              }

          }
            header('Refresh: 0');

        }
        else{
          echo "<p>bad login boyo</p>";
          session_destroy();
      }
  }
?>
<div class="main_box">














<?php
/*$username = $_SESSION["username"];
echo"$username";*/
if( !array_key_exists( "username",$_SESSION))
{
echo'
<form action="" method="post">

 <h1>Please log in </h1><br>
<h2>
Username:<br> <input type="text" name="username"><br>
Password:<br>   <input type="password" name="password"><br>
<input type="submit" value="login">
</form>
</h2>
</div>
';}
include "footer.php";
?>
