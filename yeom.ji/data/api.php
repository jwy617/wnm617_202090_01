<?php

function makeConn() {
	include_once "auth.php";
	try {
		$conn = new PDO(...Auth());
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		return $conn;
	} catch (PDOException $e) {
		die('{"error":"Connection Error: '.$e->getMessage().'"}');
	}
}



function fetchAll($r) {
	$a = [];
	while($row = $r->fetch(PDO::FETCH_OBJ))
		$a[] = $row;
	return $a;
}


// connection, prepared statement, parameters
function makeQuery($c,$ps,$p,$makeResults=true) {
	try{
		if(count($p)) {
			$stmt = $c->prepare($ps);
			$stmt->execute($p);
		} else {
			$stmt = $c->query($ps);
		}

		$r = $makeResults ? fetchAll($stmt) : [];

		return[
			"result"=>$r
		];
	} catch (PDOException $e) {
		return[
			'error'=>'Query Failed: '.$e->getMessage()
		];
	}
}



function makeStatement($data) {
	$c = makeConn();
	$t = $data->type;
	$p = $data->params;

	switch($t) {

		case "user_all":
			return makeQuery($c, "SELECT" *FROM `track_users`",$p");
		case "animals_all":
			return makeQuery($c, "SELECT" *FROM `track_animals`",$p");
		case "locations_all":
			return makeQuery($c, "SELECT" *FROM `track_locations`",$p");
		
		default: return ["error"=>"No Matched Type"];
	}
}


$type = isset($_GET['type']) ? $_GET['type'] : '';


echo json_encode(
	makeStatement(
		(object)["type"=>$type,"params"=>[]]
	),
	JSON_NUMERIC_CHECK
);