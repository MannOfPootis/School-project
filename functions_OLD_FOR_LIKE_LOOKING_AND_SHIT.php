<?php  
if (!isset($_SESSION['s_quizz_thingy'])) {
	session_start();
}
if (!isset($_SESSION['num_corr'])) {
	$_SESSION['num_corr']=1;
}
if (!isset($_SESSION['num_incorr'])) {
	$_SESSION['num_incorr']=1;
}


if (!isset($_SESSION['qnum'])) {
    $_SESSION['qnum']=1; 
}






$server_name = "localhost";
$database_name="database";
$DB_username="GOD";
$DB_password="GODSPASS";
 $db = mysqli_connect($server_name,$DB_username,$DB_password,$database_name );

if($db === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
$_SESSION['s_quizz_thingy']=false;
if($_SESSION['s_quizz_thingy']==false){
$_SESSION['s_quizz']="";
}


if (isset($_POST['ans1'])) {
$_SESSION['num_corr']=$_SESSION['num_corr']+1;	
$_SESSION['qnum']=$_SESSION['qnum']+1;
$_SESSION['qnum_thingy']=true;
header("Location: Quizes.php");	


}

if (isset($_POST['ans2'])) {
$_SESSION['num_incorr']=$_SESSION['num_incorr']+1;	
$_SESSION['qnum']=$_SESSION['qnum']+1;
$_SESSION['qnum_thingy']=true;
header("Location: Quizes.php");	




}



if (isset($_POST["quizz_confirm"])) {
					
		
			if (isset($_POST["search_txt"])) {
			$tempp = $_POST["search_txt"];
				
			$querry ="SELECT table_name FROM quizz_names WHERE quiz_name = '$tempp'";

			$result = mysqli_query($db, $querry);
					
			$row=mysqli_fetch_assoc($result);


			$_SESSION['searched_quiz']= $row['table_name'];
			$_SESSION['qnum']=1;
			$_SESSION['num_corr']=0;
			$_SESSION['num_incorr']=0;
			}
		
		
				header("Location: Quizes.php");				
				}












if (isset($_POST["create"]))
{
	
$temp2 = explode(' ', $_SESSION['current_table']);
$temp = implode('', $temp2);
if ($result = $db->query("SHOW TABLES LIKE '".$temp."'")) {
    if($result->num_rows == 1) {

  if ($_SESSION['current_table']!=""){  	
   $question= $_POST["question"];
   $Tanswer= $_POST["Tanswer"];
   $Fanswer= $_POST["Fanswer"];
   
   
					   
					$query = "INSERT INTO ".$temp."(question_text,Tanswer,Fanswer,owner)
					VALUES ('".$question."','".$Tanswer."','".$Fanswer."','".$_SESSION["loged_in_name"]."');";	
					
					$stmt = mysqli_stmt_init($db);
							


					if(!mysqli_stmt_prepare($stmt,$query)){
						echo "stmt failed";
					}

					mysqli_stmt_execute($stmt);

					header("Location: quizz_maker.php");
}    
}
else {
	$quiz_title= $_POST["quiz_title"];
	$_SESSION['current_quizz']=$quiz_title;
    create_quiz($quiz_title,$db);
    }
}



}
	








	if (isset($_POST["Back"]))
{
$_SESSION['current_table'] = "";

header("Location: quizz_maker.php");

}


















function create_quiz($quiz_title,$db){

		


if ($quiz_title == "") {
	header("location: quizz_maker.php");
	exit();

}
else{
	$table_name_array =explode(' ', $quiz_title);
	$table_name = implode('',$table_name_array); 
	$_SESSION['current_table'] = $table_name;   	 	
	$query_text = "CREATE TABLE ".$table_name."( 
            	 quizz_id int(25) AUTO_INCREMENT PRIMARY KEY,           	             	 
            	 question_text nvarchar(70),
            	 Tanswer varchar(45),
            	 Fanswer varchar(45),
            	 owner nvarchar(45)  ) ";

   				if ($_SESSION['loged_in_name']!=="") {
   					
   				
					$query = "INSERT INTO quizz_names (quiz_name,owner,table_name)".
					"VALUES ('".$quiz_title."','".$_SESSION["loged_in_name"]."','".$table_name."');";	
					
					$stmt = mysqli_stmt_init($db);
							


					if(!mysqli_stmt_prepare($stmt,$query)){
						echo "stmt failed";
					}

					mysqli_stmt_execute($stmt);
				}
				else{



					$query = "INSERT INTO quizz_names (quiz_name,owner,table_name)".
					"VALUES ('".$quiz_title."','anon','".$table_name."');";	
					
					$stmt = mysqli_stmt_init($db);
							


					if(!mysqli_stmt_prepare($stmt,$query)){
						echo "stmt failed";
					}

					mysqli_stmt_execute($stmt);

				}




	if(!mysqli_stmt_prepare($stmt,$query_text)){
		echo "stmt failed";
	}

	mysqli_stmt_execute($stmt);
    $_SESSION['current_table']=$quiz_title;
    $_SESSION['current_table_thingy']=True;
	header("Location: quizz_maker.php");

}
}


if (isset($_POST["go_back"])){

	$_SESSION['current_table']="";
	$_SESSION['current_table_thingy']=false;
	header("Location: quizz_maker.php");

}


					$query = "SELECT table_name FROM quizz_names";	
					
					$result = mysqli_query($db, $query);
					
					$row=mysqli_fetch_assoc($result);
					
				while ($row = mysqli_fetch_assoc($result))
				{
				if (isset($_POST[$row['table_name']])) {
					detect_quizz($row['table_name']);
				}
				
				}



function number_it($table_name){
$_SESSION['SELECT_NUM']=1;
$_SESSION[$table_name] = $_SESSION['SELECT_NUM'];

$_SESSION['SELECT_NUM']=$_SESSION['SELECT_NUM']+1;
}

?>


















