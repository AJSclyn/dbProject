<?php

		$user = 'root';
		$pass = '';
		$db = 'university';
		$db = new PDO("mysql:host=localhost;dbname=university", $user, $pass) or die("Unable to connect");
		
		
	
	if(!empty($_GET['clear'])){
		$db->query("DELETE FROM person");
		$db->query("DELETE FROM belongs");
		$db->query("DELETE FROM chairman");
		$db->query("DELETE FROM college");
		$db->query("DELETE FROM committee");
		$db->query("DELETE FROM course");
		$db->query("DELETE FROM current_section");
		$db->query("DELETE FROM department");
		$db->query("DELETE FROM faculty");
		$db->query("DELETE FROM grade");
		$db->query("DELETE FROM grad_students");
		$db->query("DELETE FROM grant");
		$db->query("DELETE FROM instructor_researcher");
		$db->query("DELETE FROM majorsin");
		$db->query("DELETE FROM minorsin");
		$db->query("DELETE FROM pi");
		$db->query("DELETE FROM registeredin");
		$db->query("DELETE FROM staff");
		$db->query("DELETE FROM student");
		$db->query("DELETE FROM student_sports");
		$db->query("DELETE FROM supports");
		$db->query("DELETE FROM teaches");
		$db->query("DELETE FROM transcript");
	}else if(!empty($_GET['populate'])){
		$db = new PDO("mysql:host=localhost;dbname=university", $user, $pass);
		$sql = file_get_contents('university.sql');
		$qr = $db->exec($sql);
	}
	

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
            <div class="jumbotron">
                <h3>Relations</h3>
				<div class="list-group">
					<a href="belongsin.php" class="list-group-item list-group-item-success">BelongsIn</a>
					<a href="cd.php" class="list-group-item list-group-item-success">Cd</a>
					<a href="chairman.php" class="list-group-item list-group-item-success">Chairman</a>
					<a href="college.php" class="list-group-item list-group-item-success">College</a>
					<a href="committee.php" class="list-group-item list-group-item-success">Committee</a>
					<a href="course.php" class="list-group-item list-group-item-success">Course</a>
					<a href="current_section.php" class="list-group-item list-group-item-success">Current_Section</a>
					<a href="department.php" class="list-group-item list-group-item-success">Department</a>
					<a href="faculty.php" class="list-group-item list-group-item-success">Faculty</a>
					<a href="grade.php" class="list-group-item list-group-item-success">Grade</a>
					<a href="grad_students.php" class="list-group-item list-group-item-success">Grad_Students</a>
					<a href="grant.php" class="list-group-item list-group-item-success">Grant</a>
					<a href="instructor_researcher.php" class="list-group-item list-group-item-success">Instructor_Researcher</a>
					<a href="majorsin.php" class="list-group-item list-group-item-success">MajorsIn</a>
					<a href="minorsin.php" class="list-group-item list-group-item-success">MinorsIn</a>
					<a href="person.php" class="list-group-item list-group-item-success">Person</a>
					<a href="pi.php" class="list-group-item list-group-item-success">Pi</a>
					<a href="registeredin.php" class="list-group-item list-group-item-success">RegisteredIn</a>
					<a href="section.php" class="list-group-item list-group-item-success">Section</a>
					<a href="staff.php" class="list-group-item list-group-item-success">Staff</a>
					<a href="student.php" class="list-group-item list-group-item-success">Student</a>
					<a href="student_sports.php" class="list-group-item list-group-item-success">Student_Sports</a>
					<a href="supports.php" class="list-group-item list-group-item-success">Supports</a>
					<a href="teaches.php" class="list-group-item list-group-item-success">Teaches</a>
					<a href="transcript.php" class="list-group-item list-group-item-success">Transcript</a>
				</div>
			</div>
			<div class="jumbotron">
                <h3>Queries</h3>
                	<div class="list-group">
					<a href="query1.php" class="list-group-item list-group-item-info">Return SSN, Name, and Address from Person Table</a>
					<a href="query2.php" class="list-group-item list-group-item-info">Return the students who play soccer as Primary and Majors in Computer Science</a>
					<a href="query3.php" class="list-group-item list-group-item-info">Return the grades of the student SSN = 127-67-3588 in chronological order</a>
					<a href="query4.php" class="list-group-item list-group-item-info">Update all section courses named Algorithm Design and Analysis to Hell</a>
					<a href="query5.php" class="list-group-item list-group-item-info">Easter Egg Query</a>
					
					</div>
            </div>
			<div class="jumbotron">
                <h3>Ad-Hoc</h3>
				<form action="viewQuery.php" method="post" >
					<div class="form-group">
					
					
                    <input  class="form-control input-lg" type="text" name="query" rows="3" id="inputlg" placeholder="Enter Query Here">
                 
					</div>
					<br>
					<div class="container">
						<button type="submit" class="btn btn-success">Submit Query</button>
					</div>
				</form>
			</div>
            <div class="jumbotron">
                <h3>Database Initialization</h3>
				
			<form action="home.php" method="get">
				<input class="btn btn-success" type="submit" name="populate" value="Populate Database">
				<input class="btn btn-danger" type="submit" name="clear" value="Clear Database">
			</form>
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

?>
