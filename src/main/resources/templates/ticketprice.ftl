<!DOCTYPE html>

<html lang="en">

<body>
<h1>Tickets price</h1>

<form action = "price" method = "post">
    EventID: <input type="text" name="eventId" />	<br/>
  	UserId: <input type="text" name="userId" />	<br/>
  	Seats (34,33): <input type="text" name="seats" />	<br/>
  	Date Time (2020-06-15T19:30): <input type="text" name="dateTime" />	<br/>
  	<input type="submit" value="   Get Price   " />
</form>

<br><h3>Price: ${price}</h3>
	
	

<br><h3><a href="../ticket/tickets">Click here to Book tickets... </a></h3>

</html>