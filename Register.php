
<?php
include "Header.php";





?>





    <script type="text/javascript">
        //function submitcheck
        function checkok(){
            var password = document.getElementById("password");
            var password1 = document.getElementById("password1");
            if(password.value!=(password1.value)){
                document.getElementById("problem").innerHTML="The passwords don't mactch";
                document.getElementById("problem").style.color="red";
                //document.getElementById("problem").style.border-color="red";
            }
            else{
                document.getElementById("problem").innerHTML="they match";
                document.getElementById("problem").style.color="green";
            }
            //document.getElementById("problem").innerHTML=password.value;
        }
        /*function checkPupil()
        {
            document.write("aids");
            choice=document.getElementByName("claim");
            choice.innerHTML="sdsda"
            if(choice.value=="1"){
                document.write("aids");

            }
        }*/
    </script>




<div class = "trekeneratorBackground">


    <div class="window2">


        <h1 style=" margin: 0px" >Register your school account here</h1>



<form action="" method="post"  style="
   background-color:#51f190 ;

   font-size: 30px;
   border-style: solid;
   border-width: 2px;
   border-color: #515B3A;
   width: 300px;
   color:#515B3A;
   cursor: pointer;
   padding: 5px;
   margin: 5px;
   ">


First Name:  <input type="text" name="name"><br>

Last Name:  <input type="text" name="surname"><br>

Username:   <input type="text" name="username"><br>






I am a: <select name="claim" style=" background-color: #51E181; height:26px; " onclick="class_check()"  id="selected" >



        <option  value="1" >Pupil</option>

        <option  value="2">Proffessor</option>

        <option  value= "3">Admin</option>



        </select><br>



Password:   <input type="password" name="password"id ="password" onchange="checkok()"><br>


Password again<input type = "password" name="password2" id ="password1" onchange="checkok()"></br>



<input type="submit" >

<script>



        </script>


<div id ="problem"></div>


<?php
            if(array_key_exists( "name",$_POST)&&
            array_key_exists( "surname",$_POST)&&
            array_key_exists( "username",$_POST)&&
            array_key_exists( "claim",$_POST)&&
            array_key_exists( "password",$_POST)&&
            array_key_exists( "password2",$_POST)&&
            isset($_POST["name"])&&
            isset($_POST["surname"])&&
            isset($_POST["username"])&&
            isset($_POST["claim"])&&
            isset($_POST["password2"])&&
            isset($_POST["class"])

            )
            {
            if($_POST["password"]==$_POST["password2"])
            {
                $firstname=$_POST["name"];
                $lastname=$_POST["surname"];
                $username=$_POST["username"];
                $claim=$_POST["claim"];

           
                
                $password=password_hash($_POST["password"],PASSWORD_DEFAULT);

                if($conn->query("select username from user where username='$username'")->num_rows>0)
                {
                    echo "<h1 style ='color: red;'>Username already taken</h1>";
                }
                else
                {
                $sql = "INSERT INTO user(name  ,surname ,username,claim   ,password)
                values('$firstname','$lastname','$username','$claim','$password')";
                if ($conn->query($sql)) {
                    echo "<h1 style ='color: green;'>New record created successfully</h1>";
                  } else {
                    echo "Error: " . $sql . "<br>" . $conn->error;
                  }
                }
                $idUser=sqli_takefirst( $conn->query("select ID from user where username='$username'"));
                $idClass= $_POST["class"];
                $sql="INSERT INTO Atends(user, id_class)
                values('$idUser',$idClass )";
                if ($conn->query($sql))
                {
                    echo "<h1 style ='color: green;'>New record created successfully</h1>";
                  } else {
                    echo "Error: " . $sql . "<br>" . $conn->error;
                  }
                }
                $conn->close();
        }

        include "footer.php";
        ?>
</form>
