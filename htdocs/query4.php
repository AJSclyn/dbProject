<?php

		$user = 'root';
		$pass = '';
		$db = 'university';
		$con = mysqli_connect('localhost', $user, $pass, $db)  or die("Unable to connect");
		
		$query = "UPDATE `section` SET `SECCOURSE` = \"Hell\" \n" 
		.	"WHERE `SECCOURSE` = \"Algorithm Design and Analysis\" and semester = \"Fall\"";

		
?>
<!DOCTYPE html>
<html lang="en">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <title>AJ and Zack's DB Project</title>
        <!-- Bootstrap core CSS -->
        <link href="css/theme.css" rel="stylesheet">
	
    </head>
    <body>
        <div class="container">
            <div class="page-header">
               <a href="home.php"><h1>DB Project: University Database</h1></a> 
                <p class="lead">Created by AJ Saclayan and Zachary Rzotkiewicz</p>
		
            </div>
					<p class="lead">Update all section courses named Algorithm Design and Analysis to Hell(Cool Update).</p>
    <body>
		<table class="table">
	<?php
	if  ($result = mysqli_query($con,$query))
		{
		echo "Update successful";
		}
	else
		echo "In trouble.";
	?>
</html>
<?php
?>
