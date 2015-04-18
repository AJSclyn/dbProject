<?php

$user = 'root';
$pass = '';
$db = 'school';

$db = new mysqli('localhost', $user, $pass, $db) or die("Unable to connect");

echo "GREAT WORK:";
?>