<?php
include 'AdminConfig.php';


$allDif = $conn->query("SELECT * FROM user  WHERE claim != permission AND claim =3");
while ($allDifArray=mysqli_fetch_array($allDif)){
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
    echo"their surname is $surname";
    echo'<form method = "post">
    <select value="no '.$username.'" >no</select>
    <select value="yes '.$username.'" >esy</select>
</form>';
}
?>
<p>can you confirm ?</p>
<form method = "post">
    <select value="no" >no</select>
    <select value="yes" >esy</select>
</form>
<h1>you are now the admin</h1>
