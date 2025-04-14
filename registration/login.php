<?php include('../header.php'); //include('server.php'); ?>
<!DOCTYPE html>
<html>
	<head>
		<title>AirTra: Search | Travel | Explore</title>
		<link rel="stylesheet" type="text/css" href="../assets/css/loginstyle.css">
	</head>
	<body>
		<div id="frm">
			<form method="post" action="login.php"> 
			<?php include('errors.php'); ?>

			<p>
				<label>Email id:&nbsp;&nbsp;</label>
				<input type="Email" id="user" name="username" placeholder="airtra@gmail.com"/>
			</p>
			<p>
				<label>Password:</label>
				<input type="password" id="pass" name="password" placeholder="password"/>
			</p>
			<p>
				<button type="submit" name="login" class="btn">Login <a href="register.php"> </a> </button> <br><br><a href="" >Forgot Password?</a>
			</p>
			<p>Not a member yet? <a href="register.php">Register</a> </p>

			</form>
		</div> 
	</body>
</html>

<?php echo file_get_contents('../copyright.php')?>

<style>
 body{
    background-image: url("../assets/img/airtrajoin.jpg");
    background-size: 1400px 900px;
    background-repeat: no-repeat;
    }
</style>