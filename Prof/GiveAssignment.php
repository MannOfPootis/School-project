

<!DOCTYPE html>
<html>
<body>
  <?php include "../header.php";?>

<form action="" method="post" enctype="multipart/form-data">
  Select image to upload:
  <input type="file" name="fileToUpload" id="fileToUpload">
  
  <input type = "date" name = "due">
  for subject
  <select name = "subject">
    <option></option>
    <?php
      $un = $_SESSION["username"];
    
      //echo "$un";
      
  	  $teachesSQLI= $conn->query("SELECT distinct SUBJECTS.* FROM SUBJECTS INNER JOIN SCHEDULE ON (subjects.id = schedule.subject) inner join user on(user.id = schedule.teacher) where user.username = '$un'");
      //unset($un);
      while ($teaches = $teachesSQLI->fetch_assoc()){
        $a = $teaches["ID"];
        $b =$teaches["name"];
        echo"<option value='$a'>$b</option>";
      }
    ?>
  </select>
  for class
  <select name = "class">
    <option value ="0">all</option>
    <?php
      $un = $_SESSION["username"];
      
      //echo "$un";
  	  $teachesSQLI= $conn->query("SELECT distinct class.* FROM class INNER JOIN SCHEDULE ON (class.id = schedule.class) inner join user on(user.id = schedule.teacher) where user.username = '$un'");//
      //unset($un);
      while ($teaches = $teachesSQLI->fetch_assoc()){
        $a = $teaches["id"];
        $b =$teaches["name"];
        echo"<option value='$a'>$b</option>";
      }
    ?>
  </select>
  <input type="submit" value="Upload Image" name="submit">
</form>
aerararasea
</body>sadeew
</html>

<?php


$target_dir = "../uploads/";

$uploadOk = 1;

// Check if image file is a actual image or fake image
if(isset($_POST["submit"]) && isset($_POST["due"]) && isset($_POST["due"]) && isset($_POST["class"])&& isset($_POST["subject"])) {
  $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
  $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
  $title = $_POST["title"];
  $due = $_POST["due"];
  $class = $_POST["class"];
  $subject = $_POST["subject"];
  $teachID= sqli_takefirst( $conn->query("select id from user where username = '$un'"));

  $conn->query("INSERT INTO ASSIGNMENT(TEACHER,SUBJECT, DUE, TITLE, CLASS) VALUES('$teachID', '$subject','$due','". htmlspecialchars( basename( $_FILES["fileToUpload"]["name"]))."','$class')");


  $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
  if($check !== false) {
    echo "File is an image - " . $check["mime"] . ".";
    $uploadOk = 1;
  } else {
    echo "File is not an image.";
    $uploadOk = 1;
  }
  if (file_exists($target_file)) {
    echo "Sorry, file already exists. we are replacing it ";
    $uploadOk = 1;
  } 
  if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
  // if everything is ok, try to upload file
  } else {
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
      mkdir("../uploads/". htmlspecialchars( basename( $_FILES["fileToUpload"]["name"]))."turnin");
      echo "The file ". htmlspecialchars( basename( $_FILES["fileToUpload"]["name"])). " has been uploaded.";
    } else {
      echo "Sorry, there was an error uploading your file.";
    }
  }
}
include "../footer.php";
?>


