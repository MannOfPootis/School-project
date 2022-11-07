<form method ="get" action ="">
    THIS IS VERY DANGEROUS NO TOUCHIE ESPECIALY DELETE STATEMENTS
    
    <input name = "SQL" type="text"></input>
    <input type = "submit"></input>
    </form>
    <?php
    $row = 0;
        if (isset($_GET["SQL"]))
        {
            echo "<form method = 'post'><table>";
            if ($conn->query($_GET["SQL"])){
                $dataSQLI= $conn->query($_GET["SQL"]);
                $first = true;


                while ($data = $dataSQLI->fetch_assoc())
                {
                echo "<tr>";
                $row++;
                if ($first )
                {
                    foreach($data as $name => $answer)
                    {
                        echo"<td>$name</td>";
                    }
                    $first = false;
                }
                else{
                    foreach($data as $name => $answer)
                    {
                        echo"<td><input name ='$row,$answer' type = 'text' value = '$answer'></td>";
                    }
                    echo " <td><input name '$answer delete' type = 'submit' value = 'delete'></td>";
                   }
                echo"</tr>";
                }
            } else 
            {
                echo "Error: " . $_GET["SQL"] . "<br>" . $conn->error;
            }
            echo"</table><input type  = 'submit' name = 'edit'></form>";
        }
        foreach($_POST as $was => $is)
        {
            $arr= explode(',',$was,2);
        if($arr[1]!=$is)
            {
                echo "test";
            }
        }
    
    
    ?>
