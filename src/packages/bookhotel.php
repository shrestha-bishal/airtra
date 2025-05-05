<div><style> body {background-image: url("../public/assets/img/hotelroommalla.jpg"); background-size: 1400px 900px; } </style></div>
<!DOCTYPE html>
<html>
<head>
	<title></title>
   
</head>
<link rel="stylesheet" type="text/css" href="index.css">
<body>

	<form>
  	<div class="input-group">
  	  <label>Hotels and Apartments </label> <br>
  	  <h20>AirTra helps you find the best deals for free.</h20> <br>
<br>
  	  <label>Find hotel deals <br> <input type="hotel_name_and_destination" placeholder="Enter destination or hotel name" style="height:35px" size="60" > </label> 
  	  <label>Check-in  <input type="date" placeholder="check-in date" style="height:35px" size="36" > </label>
  		<label>Check-out: <input type="date" placeholder="Check-out date" style="height:35px" size="36" > </label>
  	  <label>Guests: <input type="number" min="1" max="20" placeholder="1-20" style="height:35px" size="36" > </label>
  	  <label>Room:<input type="number" min="1" max="10" placeholder="1-10" style="height:35px" size="36" > </label>
  	  <button type="submit" name="Search_Hotels">Search Hotels</button>
  	  
  	  
  </div>
  </form>

</body>
</html>
<?php echo file_get_contents('../copyright.php')?>