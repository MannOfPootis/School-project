<form method ="get" action ="">
    <input name = "SQL" type="text"></input>
    <input type = "submit"></input>
    <?php
        if (isset($_GET["SQL"]))
        {
            echo "<table>";
            if ($conn->query($_GET["SQL"])){
                $dataSQLI= $conn->query($_GET["SQL"]);
                $first = true;


                while ($data = $dataSQLI->fetch_assoc())
                {
                echo "<tr>";
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
                        echo"<td>$answer</td>";
                    }
                   }
                echo"</tr>";
                }
            } else 
            {
                echo "Error: " . $_GET["SQL"] . "<br>" . $conn->error;
            }
            echo"</table>";
        }
    
    
    ?>
</form>