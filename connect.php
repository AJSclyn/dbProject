<?php

$user = 'root';
$pass = '';
$db = 'university';

$db = new mysqli('localhost', $user, $pass, $db) or die("Unable to connect");

echo "GREAT WORK:";
?>