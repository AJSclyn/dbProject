<!DOCTYPE html>
<html lang="en">
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
                <h1>DB Project: University Database</h1>
                <p class="lead">Created by AJ Saclayan and Zachary Rzotkiewicz</p>
            </div>
		</div>
		
		<?php
			$db = new mysqli('localhost', 'site', 'pass', 'dbproject');

			if($db->connect_errno > 0){
				die('Unable to connect to database [' . $db->connect_error . ']');
			}
			
			$result = mysql_query('SELECT * FROM main');
			if (!$result) {
				die('Invalid query: ' . mysql_error());
			}
			
			while($row = $result->fetch_assoc()){
				echo $row['username'] . '<br />';
			}
			
		?>
		
		<br>
		<center>
		<a href="home.php"><button type="button" class="btn btn-warning">Home</button></a>
		</center>
        <!-- /container -->
        <!-- Bootstrap core JavaScript
    ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
    </body>
</html>