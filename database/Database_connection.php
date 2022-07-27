<?php

//Database_connection.php

class Database_connection
{
	function connect()
	{
		$connect = new PDO("mysql:host=localhost; dbname=chat;charset=utf8mb4", "root", "");

		return $connect;
	}
}

?>