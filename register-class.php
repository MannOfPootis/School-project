<?php include'header.php'  ?>

<div class="main_box">


<h1>Welcome new student, just one more thing </h1>


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

 



 
 






<div id="Father" style="display = none">
I am in: <select name = "class" style=" background-color: #51E181; height:26px; "  >
          <?php
              $classes = $conn->query("Select * from class");
              WHILE($allClasses = mysqli_fetch_array($classes))
              {
                $className= $allClasses["name"];
                $classID= $allClasses["id"];
                echo"<option value = '$classID'>$className</option>";
              }

          ?>
</select>



            </div>









<input type="submit" >

</form>
</div>


<?php include 'footer.php' ?>
