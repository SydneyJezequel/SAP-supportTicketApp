namespace customerSupportTicket;

entity SupportTickets {
  key ID: UUID;
  supportTicketsID: String(50) @assert.unique @mandatory;
  title: String(100);
  description: String(255);
  status: String(20) enum {
    Open       = 'Open';
    InProgress = 'In Progress';
    Resolved   = 'Resolved';
  };
  priority: String(20) enum {
    Low    = 'Low';
    Medium = 'Medium';
    High   = 'High';
  };
  createdAt: DateTime;
  resolvedAt: DateTime;
  TicketResponses: Association to many TicketResponses on TicketResponses.supportTickets = $self;
}

entity TicketResponses {
  key ID: UUID;
  ticketResponsesID: String(50) @assert.unique @mandatory;
  message: String(255);
  sentAt: DateTime;
  author: String(100);
  supportTickets: Association to SupportTickets;
}