<!DOCTYPE html>
<html lang="en">
<body>

<h1>Booked Tickets </h1>

<table class="datatable" border="+1">
  	<tr>
  		<th>ID</th>
  		<th>Seat</th>
  		<th>User Id/Lastname</th>
  		<th>Event Id/Name</th>
  		<th>Created Date</th>
  	</tr>
    <#list tickets as ticket>
		<tr>
			<td>${ticket.id}</td>
			<td>${ticket.seat}</td>
			<td>${ticket.user.id}/${ticket.user.lastName}</td>
			<td>${ticket.event.id}/${ticket.event.name}</td>
			<td>${ticket.dateTime}</td>
		</tr>
    </#list>
  </table>
  
  <h3><a href="../ticket/tickets">Click here to Book tickets..</a></b></h3>

</body>
</html>