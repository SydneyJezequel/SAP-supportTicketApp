using { customerSupportTicket } from '../db/schema.cds';

service customerSupportTicketSrv {
  @odata.draft.enabled
  entity SupportTickets as projection on customerSupportTicket.SupportTickets;
  entity TicketResponses as projection on customerSupportTicket.TicketResponses;
}