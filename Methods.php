<?php
function sqli_takefirst($sqli){
    while ($row = $sqli->fetch_assoc()) {
        foreach($row as $first){
            return $first;
        }
      }
}
function get_session_user(){
    $username=$_SESSION["username"];
    $result=$conn->query("select* from ligma where username='$username'");
    return $result->fetch_assoc();

}
/*function edit_sql(,$atrName, $tableName, $atrValue,$IDColumn,$IDColumnValue){
    $copyEntry=$conn->query("select * from $TableName where $IDColumn = '$IDColumnValue'");

    while($entry=$copyEntry->fetch_assoc()){
        $conn->query("DELETE from $tablename where $IDColumn = '$IDColumnValue'");
        $valuesName="";
        $values="";
        foreach($copyEntry as $name => $answer){
        $conn->query("INSERT into $tablename($valuesName) values($values) ");
        }
    }
}*/



?>
