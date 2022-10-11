
<style>
.drop {
  max-width: 400px;
  height: 200px;
  padding: 25px;
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
  cursor: pointer;
  color: darkgoldenrod;
  border: 6px solid purple;
  border-radius: 25px;
}

.drop-over {
  border-style: solid;
}

.drop_input {
  display: none;
}

.drop_thumb {
  width: 100%;
  height: 100%;
  overflow: hidden;
  background-color: #cccccc;
  background-size: cover;
  position: relative;
}

.drop_thumb::after {
  content: attr(data-label);
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  padding: 5px 0;
  background: rgba(0, 0, 0, 0.75);
  text-align: center;
}
</style>
<link href='../theme_1.css' rel='stylesheet'>
<script>
/*
document.querySelectorAll(".drop_input").forEach((inputElement) => {
  const dropZoneElement = inputElement.closest(".drop");

  dropZoneElement.addEventListener("click", (e) => {
    inputElement.click();
  });

  inputElement.addEventListener("change", (e) => {
    if (inputElement.files.length) {
      updateThumbnail(dropZoneElement, inputElement.files[0]);
    }
  });

  dropZoneElement.addEventListener("dragover", (e) => {
    e.preventDefault();
    dropZoneElement.classList.add("drop-over");
  });

  ["dragleave", "dragend"].forEach((type) => {
    dropZoneElement.addEventListener(type, (e) => {
      dropZoneElement.classList.remove("drop-over");
    });
  });

  dropZoneElement.addEventListener("drop", (e) => {
    e.preventDefault();

    if (e.dataTransfer.files.length) {
      inputElement.files = e.dataTransfer.files;
      updateThumbnail(dropZoneElement, e.dataTransfer.files[0]);
    }

    dropZoneElement.classList.remove("drop-over");
  });
});

function updateThumbnail(dropZoneElement, file) {
  let thumbnailElement = dropZoneElement.querySelector(".drop_thumb");

  // First time - remove the prompt
  if (dropZoneElement.querySelector(".drop-zone__prompt")) {
    dropZoneElement.querySelector(".drop-zone__prompt").remove();
  }

  // First time - there is no thumbnail element, so lets create it
  if (!thumbnailElement) {
    thumbnailElement = document.createElement("div");
    thumbnailElement.classList.add("drop_thumb");
    dropZoneElement.appendChild(thumbnailElement);
  }

  thumbnailElement.dataset.label = file.name;

  // Show thumbnail for image files
  if (file.type.startsWith("image/")) {
    const reader = new FileReader();

    reader.readAsDataURL(file);
    reader.onload = () => {
      thumbnailElement.style.backgroundImage = `url('${reader.result}')`;
    };
  } else {
    thumbnailElement.style.backgroundImage = null;
  }
}
*/
</script>
<body>
<?php


?>

<?php include '../header.php'; include "ProfConfig.php"; ?>

<div class="main_box">

<table>
<tr>

<td><h1>you are the homeroom teacher of</h1></td> <?php
$sesionUsername=$_SESSION["username"];
$profId =  sqli_takefirst($conn->query("SELECT ID FROM user WHERE username = '$sesionUsername'"));


$abtClass= $conn->query("select * from class where homeroom = '$profId'");
$row = $abtClass->fetch_assoc();
$classname =$row["name"];
$classID=$row["id"];

echo"<td> <h1>".$classname ."</h1> </td>";



?>

<div>
<?php
include "MakeSchedule.php";?>
</div>

<input type ="submit">
</form>

<table>
</div>


	<!--<form action="" method="post">
  <div class="drop">
    <span class="drop-zone__prompt">Drop file here or click to upload</span>
    <input type="file" name="myFile" class="drop_input">
  </div>
  <script src="drop.js"></script>

  <button type="submit" id="submit" name="submit" value="submit" default>Upload</button>
</form>
<?php
   /* if (isset($_POST["myFile"])){

        $File = $_POST["myFile"];
        //$user=$_SESSION["accountun"];
        //$date = date("Y-m-d");
        $sql="UPDATE class SET schedule = '$File' WHERE ID = 4";
        if($conn->query($sql)){
            echo "statment was good $sql";
        }else {
            echo "afxjfjklasdfjkl $sql";
        }
    }*/
?>-->

<?php include '../footer.php' ?>
</body>

</html>
