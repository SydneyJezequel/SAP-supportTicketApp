# Getting Started

Welcome to your new CAP project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`readme.md` | this getting started guide

## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start with your domain model, in a CDS file in `db/`

## Learn More

Learn more at <https://cap.cloud.sap>.


This CAP project and the included SAP Fiori application were generated with the Project Accelerator, using the prompt: Generate a draft-enabled SAP Fiori elements application for a Customer Support Ticket system.

Entities:
1. SupportTicket: title, description, status (Open, In Progress, Resolved),
 priority (Low, Medium, High), createdAt.
2. TicketResponse: message, sentAt, author.
Establish a 1-to-many relationship between SupportTicket and TicketResponse.

Generate a List Report Page for SupportTicket with an Object Page showing related TicketResponses..
