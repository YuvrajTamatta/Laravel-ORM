<?php

	require "vendor/autoload.php";
	require "./includes/db-config.php";
	require "./includes/kint-config.php";

	use Illuminate\Database\Capsule\Manager as Capsule;




	$capsule = new Capsule;
		$capsule->addConnection([
		"driver" => $db['driver'],
		"host" => $db['hostname'],
		"database" => $db['database'],
		"username" => $db['username'],
		"password" => $db['password']
		]);
	$capsule->setAsGlobal();
	$capsule->bootEloquent();
	Capsule::connection()->enableQueryLog();


?>