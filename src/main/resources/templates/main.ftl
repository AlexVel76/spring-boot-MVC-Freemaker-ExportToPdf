<!DOCTYPE html>

<html lang="en">

<body>
<h1>Booking Page</h1>
<br>

<h5><a href="/export/tickets/pdf">All tickets to PDF </a></b></h5>

<form action = "ticket/add" method = "post">
    EventID: <input type="text" name="eventId" />	<br/>
  	UserId: <input type="text" name="userId" />	<br/>
  	Seats (34,33): <input type="text" name="seats" />	<br/>
  	Date Time (2020/06/15 19:30): <input type="text" name="dateTime" />	<br/>
  	<input type="submit" value="   Save   " />
</form>

<h1>Initial info</h1>

<h3>Ticket:</h3>
    <table class="datatable" border="+1">
        <tr>
            <th>ID</th>
            <th>Seat</th>
            <th>User Id/Lastname</th>
            <th>Event Id/name</th>
            <th>DateTime</th> <th></th>  <th></th>
        </tr>
        <#list tickets as ticket>
        <tr>
            <td>${ticket.id}</td>
            <td>${ticket.seat}</td>
            <td>${ticket.user.id}/${ticket.user.lastName}</td>
            <td>${ticket.event.id}/${ticket.event.name} <a href="../ticket/bookedticket?eventId=${ticket.event.id}&dateTime=${ticket.dateTime}">Get Bookied Tikets for the Event</a> </td>
            <td>${ticket.dateTime}</td>
            <td><b>
                <a href="../ticket?ticketId=${ticket.id}">Ticket Details </a></b>
            </td>
            <td><b>
                <a href="../ticket/price?seat=${ticket.seat}&eventId=${ticket.event.id}&userId=${ticket.user.id}&dateTime=${ticket.dateTime}">View Price... </a></b>
            </td>
        </tr>
        </#list>
     </table>
</body>
</html>