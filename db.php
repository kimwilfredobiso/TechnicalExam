<?php
	$dsn = 'mysql:host=localhost;dbname=youtube_app';
	$username = 'root';
	$password = '';
	$options = [];
	try {
		$connection = new PDO($dsn, $username, $password, $options);
		//print_r("Connection Established");
	} catch(PDOException $e) {
		//print_r($e);
	}
?>