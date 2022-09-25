<?php
header("Content-Type:application/json");
if (isset($_POST['secret_key']) && $_POST['secret_key']!="") {
	if($_POST['secret_key']=="4@@^%&^kdsfkjdkfUM"){
	include('db.php');

	$lat=$_POST['lat'];
	$lan=$_POST['lan'];

	$latmax=$lat+10;
	$latmin=$lat-10;
	$lanmax=$lan+10;
	$lanmin=$lan-10;
	
	$result = mysqli_query(
	$con,
	"SELECT * FROM `location_temp` WHERE (lat BETWEEN $latmin AND $latmax) AND (lan BETWEEN $lanmin AND $lanmax) ");
	if(mysqli_num_rows($result)>0){

	while( $row = mysqli_fetch_array($result)){
    $new_array[] = $row; // Inside while loop
}

	$json_response = json_encode($new_array);
	echo $json_response;
	
	mysqli_close($con);
	}else{
		response($_POST['lat'], NULL, 200,"No Record Found");
		}
		}else{
	response($last_id, NULL, 401,"Unautorized");
}
}else{
	response($_POST['lat'], NULL, 400,"Invalid Request");
	}


?>