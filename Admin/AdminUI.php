

   
       <form action ="" method = "post">
        <?php
include 'AdminConfig.php';
foreach($_POST as $name => $answer)
{
    echo "<h1>$name $answer</h1> <br> ";
    switch ($answer)
    {
        case "null":
            break;
        case "yes":
            $conn->query("UPDATE from user set permission =claim where username = '$name'");
            break;
        case "no":
            $conn->query("DELETE from user where username = '$name'");
            break;
    }
}



$allDif = $conn->query("SELECT * FROM user  WHERE claim > permission /*AND claim =3*/");
while ($allDifArray=mysqli_fetch_array($allDif)){
    $claimUsername=$allDifArray["username"];
    $name=$allDifArray["name"];
    $surname= $allDifArray["surname"];
    $claim=$allDifArray['Claim'];
    echo"$name claims to be ";
    switch ($claim)
    {
        case 1:
            echo "a pupil ";
            break;
        case 2:
            echo "a proffessor ";
            break;
        case 3:
            echo "an admin ";
            break;
    }
    echo"their surname is $surname  $claimUsername ";
    echo'

    <select name = '.$claimUsername.' > 
        <option value = "null"> null</option>
        <option value="no" >no</option>
        <option value="yes" >yes</option>
    </select>
    
    <br>
   

';
}

?>
<input type ="submit">
    </form>

<!--<p>can you confirm ?</p>
<form method = "post">
    <select value="no" >no</select>
    <select value="yes" >esy</select>
</form>-->
<h1>you are now the admin</h1>
