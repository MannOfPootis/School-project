<h1> this is the login form </h1>
<form action="" method="post"><b>
First Name: <input type="text" name="name"><br>
Last Name:  <input type="text" name="surname"><br>
Username:   <input type="text" name="username"><br>
Password:   <input type="password" name="password"id ="password" onchange="checkok()"><br>
Password again<input type = "password" name="password2" id ="password1" onchange="checkok()">
    </b>
<input type="submit" >
<div id ="problem"></div>
<?php
            if(array_key_exists( "name",$_POST)&&
            array_key_exists( "surname",$_POST)&&
            array_key_exists( "username",$_POST)&&
            array_key_exists( "password",$_POST)&&
            array_key_exists( "password2",$_POST) 
        
        
            ){
            if($_POST["password"]==$_POST["password2"])
            {
                $firstname=$_POST["name"];
                $lastname=$_POST["surname"];
                $username=$_POST["username"];
                $password=password_hash($_POST["password"],PASSWORD_DEFAULT);
                if($conn->query("select username from user where username='$username'")->num_rows>0)
                {
                    echo "<h1 style ='color: red;'>Username already taken</h1>";
                }
                else
                {
                $sql = "INSERT INTO user(name  ,surname  ,username   ,password)
                values('$firstname','$lastname','$username','$password')";
                if ($conn->query($sql)) {
                    echo "<h1 style ='color: green;'>New record created successfully</h1>";
                  } else {
                    echo "Error: " . $sql . "<br>" . $conn->error;
                  }
                }
                $conn->close();
            }
        }
        ?>
</div>
</form>