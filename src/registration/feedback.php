<?php  include('userheader.php');
$feedback="";
session_start();
$username=$_SESSION['username'];
 $db = mysqli_connect('localhost', 'root','','airtra');
if (isset($_POST['submit'])) {
    $feedback = addslashes($_POST['feedback']);
    $sql = "INSERT INTO feedback (email, feedback) VALUES ('$username', '$feedback')";
 		mysqli_query($db, $sql);
 		echo "Your Feedback has been Submitted.";
 		echo  nl2br("\n");
 		echo "The essence of all beautiful art is gratitude. –Friedrich Nietzche";
 		

}
?>
<!DOCTYPE html>
<html>
<head>
	<title>AirTra: Search | Travel | Explore</title>
	<link rel="stylesheet" type="text/css" href="../public/assets/css/style.css">
</head>
<body>

	<div id="frm">
 	<form method="post" action="feedback.php"> 

	<p>
 		<label>Feedback:</label><br>
 		<input type="text" id="pass" name="feedback" autocomplete="off" style="font-size: 10pt; height: 70px; width:400px; " size="55" height="100" width="600" placeholder="Your valuable feedback to better improve our AIRTRA community"/>
 	</p>
 	<p>
 		<button type="submit" name="submit" class="btn">Submit <a href="feedback.php"> </a> </button> 
 	</p>

 	</form>
 </div>
  <style>
 body{
    background-image: url("../public/assets/img/feedback.jpg");
    background-size: 1400px 700px;
    background-repeat: no-repeat;
    }
</style>
</body>
</html>

<?php echo file_get_contents('../copyright.php')?>
