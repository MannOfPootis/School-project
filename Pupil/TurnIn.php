

<!DOCTYPE html>
<html>
<body>

<form action="" method="post" enctype="multipart/form-data">
  Upload what you wish to turn in
  <input type="file" name="fileToUpload" id="fileToUpload">
  <input type="submit" value="Turn in" <?php
  echo "name='submit$idAss'"
  ?>>
</form>

</body>
</html>

<?php
$name;
$surname;
$un=$_SESSION["username"];
if($bruhmoment = $conn->query("select * from user where username = '$un'")->fetch_assoc() )
{
    $name =$bruhmoment["name"];
    $surname = $bruhmoment["surname"];
}

$target_dir = "uploads/".$title."turnin/";


//echo"$imageFileType";
// Check if image file is a actual image or fake image
if(isset($_POST["submit$idAss"])) {
    $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
$target_file = $target_dir."$name"."$surname-" . basename($_FILES["fileToUpload"]["name"]);
  $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
  if($check !== false) {
    echo "File is an image - " . $check["mime"] . ".";
    $uploadOk = 1;
  } else {
    echo "File is not an image.";
    $uploadOk = 1;
  }
  if (file_exists($target_file)) {
    echo "Sorry, file already exists.";
    $uploadOk = 1;
  } 
  if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
  // if everything is ok, try to upload file
  } else {
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {

      echo "The file ". htmlspecialchars( basename( $_FILES["fileToUpload"]["name"])). " has been uploaded.";
    } else {
      echo "Sorry, there was an error uploading your file.";
    }
  }
}

?>


