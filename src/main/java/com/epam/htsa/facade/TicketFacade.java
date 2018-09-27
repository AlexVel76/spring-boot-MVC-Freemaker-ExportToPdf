package com.epam.htsa.facade;

import com.epam.htsa.entity.Ticket;

import java.util.Date;
import java.util.List;

public interface TicketFacade {
    Ticket getTicketById(Long ticketId);

    List<Ticket> bookTickets(Long eventId, Date dateTime, Long userId, String seats);

    double getTicketsPrice(Long eventId, String dateTime, Long userId, String seat);

    List<Ticket> getAllTickets();

    Object getPurchasedTicketsForEvent(Long eventId, String dateTime);
}
