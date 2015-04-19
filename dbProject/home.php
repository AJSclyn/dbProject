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
            <div class="jumbotron">
                <h3>Relations</h3>
				<div class="list-group">
					<a href="#" class="list-group-item">Cras justo odio</a>
					<a href="#" class="list-group-item">Dapibus ac facilisis in</a>
					<a href="#" class="list-group-item">Morbi leo risus</a>
					<a href="#" class="list-group-item">Porta ac consectetur ac</a>
					<a href="#" class="list-group-item">Vestibulum at eros</a>
				</div>
			</div>
			<div class="jumbotron">
                <h3>Queries</h3>
                	<div class="list-group">
					<a href="viewquery.php" class="list-group-item">Cras justo odio</a>
					<a href="#" class="list-group-item">Dapibus ac facilisis in</a>
					<a href="#" class="list-group-item">Morbi leo risus</a>
					<a href="#" class="list-group-item">Porta ac consectetur ac</a>
					<a href="#" class="list-group-item">Vestibulum at eros</a>
				</div>
            </div>
			<div class="jumbotron">
                <h3>Ad-hoc Query</h3>
				<form action="viewQuery.php" method="post">
					<div class="form-group">
						<div class="col-sm-2">
							<label path="name" class="control-label"><h6>Enter Query:</h6></label>
						</div>
						<div class="col-sm-2">
                                <input type="text" name="name" required placeholder="number of students">
                        </div>		
					</div>
					<br><br>
					<div class="container">
						<button type="submit" class="btn btn-success">Submit Query</button>
					</div>
				</form>
			</div>
            <div class="jumbotron">
                <h3>Database Initialization</h3>
				<a href="<?php echo $link_address;?>"><button type="button" class="btn btn-success">Populate Database</button></a>
                <a href="<?php echo $link_address;?>"><button type="button" class="btn btn-danger">Clear Database</button></a>	
            </div>
        </div>    
		<br>
		<br>	
		<br>	
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

<?php

$user = 'root';
$pass = '';
$db = 'university';

$db = new mysqli('localhost', $user, $pass, $db) or die("Unable to connect");


?>