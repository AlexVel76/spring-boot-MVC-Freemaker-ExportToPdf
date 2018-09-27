package com.epam.htsa.service;

import com.epam.htsa.entity.Ticket;

import java.util.Date;
import java.util.List;

public interface TicketService {
    Ticket getTicketById(Long ticketId);

    List<Ticket> bookTickets(Long eventId, Date dateTime, Long userId, String seats);

    double getTicketPrice(Long eventId, String dateTime, Long userId, String seat);

    List<Ticket> getAllTickets();

    List<Ticket> getPurchasedTicketsForEvent(Long eventId, String dateTime);

}
