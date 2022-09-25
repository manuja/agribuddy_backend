<?php
header("Content-Type:application/json");
if (isset($_POST['secret_key']) && $_POST['secret_key']!="" && isset($_POST['last_id']) && isset($_POST['last_id']) ) {
	if($_POST['secret_key']=="2@@^%&^kdsfkjdkfUM"){
	include('db.php');
	$last_id_string=$_POST['last_id'];
	$last_id = intval($last_id_string);
	$result = mysqli_query(
	$con,
	"SELECT * FROM `knowledgeup` WHERE id > $last_id");
	if(mysqli_num_rows($result)>0){

	while( $row = mysqli_fetch_array($result)){
    $new_array[] = $row; // Inside while loop
}

	$json_response = json_encode($new_array);
	echo $json_response;
	
	mysqli_close($con);
	}else{
		response($last_id, NULL, 200,"No Record Found");
		}

	}else{
	response($last_id, NULL, 401,"Unautorized");
}
}else{
	response($last_id, NULL, 400,"Invalid Request");
	}


?>