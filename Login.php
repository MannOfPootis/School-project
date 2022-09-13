 <h1> this is the login form </h1>
 <?php
 //session_start();
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
            header('Refresh: 0');

        }
        else{
          echo "<p>bad login boyo</p>";
          session_destroy();


      }
  }
?>

<br>

<?php
$username =$_SESSION["username"];
echo"$username";
if( !array_key_exists( "username",$_SESSION))
{
echo'
<form action="" method="post">

Please log in<br><br>
<div class="borderp">
username:<br> <input type="text" name="username"><br>
password:<br>   <input type="password" name="password"><br>
<input type="submit" value="login">
</form>
</h2>

';}

?>
