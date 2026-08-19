using { customerSupportTicketSrv } from '../../srv/service.cds';

annotate customerSupportTicketSrv.SupportTickets with @UI.DataPoint #title: {
  Value: title,
  Title: 'Title',
};
annotate customerSupportTicketSrv.SupportTickets with @UI.DataPoint #status: {
  Value: status,
  Title: 'Status',
};
annotate customerSupportTicketSrv.SupportTickets with @UI.DataPoint #priority: {
  Value: priority,
  Title: 'Priority',
};
annotate customerSupportTicketSrv.SupportTickets with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#title', ID: 'Title' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#status', ID: 'Status' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#priority', ID: 'Priority' }
];
annotate customerSupportTicketSrv.SupportTickets with @UI.HeaderInfo: {
  TypeName: 'Ticket',
  TypeNamePlural: 'Tickets',
  Title: { Value: supportTicketsID }
};
annotate customerSupportTicketSrv.SupportTickets with {
  ID @UI.Hidden
};
annotate customerSupportTicketSrv.SupportTickets with @UI.Identification: [{ Value: supportTicketsID }];
annotate customerSupportTicketSrv.SupportTickets with {
  supportTicketsID @Common.Label: 'Id';
  title @Common.Label: 'Title';
  description @Common.Label: 'Description';
  status @Common.Label: 'Status';
  priority @Common.Label: 'Priority';
  createdAt @Common.Label: 'Created At';
  TicketResponses @Common.Label: 'Responses'
};
annotate customerSupportTicketSrv.SupportTickets with {
  ID @Common.Text: { $value: supportTicketsID, ![@UI.TextArrangement]: #TextOnly };
};
annotate customerSupportTicketSrv.SupportTickets with @UI.SelectionFields : [
 status,
 priority,
 createdAt
];
annotate customerSupportTicketSrv.SupportTickets with @UI.LineItem : [
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: supportTicketsID },
    { $Type: 'UI.DataField', Value: status },
    { $Type: 'UI.DataField', Value: priority },
    { $Type: 'UI.DataField', Value: createdAt }
];
annotate customerSupportTicketSrv.SupportTickets with @UI.FieldGroup #supportTicketDetails: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Value: status },
    { $Type: 'UI.DataField', Value: priority },
    { $Type: 'UI.DataField', Value: createdAt }

  ]
};


annotate customerSupportTicketSrv.TicketResponses with @UI.LineItem #ticketResponsesSection: [
    { $Type: 'UI.DataField', Value: ticketResponsesID },
    { $Type: 'UI.DataField', Value: message },
    { $Type: 'UI.DataField', Value: sentAt },
    { $Type: 'UI.DataField', Value: author }

  ];


annotate customerSupportTicketSrv.SupportTickets with @UI.Facets: [
  {
    $Type: 'UI.CollectionFacet',
    ID: 'detailsTab',
    Label: 'Details',
    Facets: [
      { $Type: 'UI.ReferenceFacet', ID: 'supportTicketDetails', Label: 'Support Ticket Details', Target: '@UI.FieldGroup#supportTicketDetails' } ]
  },
  {
    $Type: 'UI.CollectionFacet',
    ID: 'responsesTab',
    Label: 'Responses',
    Facets: [
      { $Type: 'UI.ReferenceFacet', ID: 'ticketResponsesSection', Label: 'Ticket Responses', Target: 'TicketResponses/@UI.LineItem#ticketResponsesSection' } ]
  }
];
annotate customerSupportTicketSrv.TicketResponses with {
  supportTickets @Common.ValueList: {
    CollectionPath: 'SupportTickets',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: supportTickets_ID,
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'supportTicketsID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'title'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'status'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'priority'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdAt'
      },
    ],
  }
};
annotate customerSupportTicketSrv.TicketResponses with @UI.DataPoint #message: {
  Value: message,
  Title: 'Message',
};
annotate customerSupportTicketSrv.TicketResponses with @UI.DataPoint #sentAt: {
  Value: sentAt,
  Title: 'Sent At',
};
annotate customerSupportTicketSrv.TicketResponses with @UI.DataPoint #author: {
  Value: author,
  Title: 'Author',
};
annotate customerSupportTicketSrv.TicketResponses with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#message', ID: 'Message' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#sentAt', ID: 'SentAt' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#author', ID: 'Author' }
];
annotate customerSupportTicketSrv.TicketResponses with @UI.HeaderInfo: {
  TypeName: 'Response',
  TypeNamePlural: 'Responses',
  Title: { Value: ticketResponsesID }
};
annotate customerSupportTicketSrv.TicketResponses with {
  ID @UI.Hidden
};
annotate customerSupportTicketSrv.TicketResponses with @UI.Identification: [{ Value: ticketResponsesID }];
annotate customerSupportTicketSrv.TicketResponses with {
  ticketResponsesID @Common.Label: 'Id';
  message @Common.Label: 'Message';
  sentAt @Common.Label: 'Sent At';
  author @Common.Label: 'Author';
  supportTicketId @Common.Label: 'Support Ticket Id';
  supportTickets @Common.Label: 'Ticket'
};
annotate customerSupportTicketSrv.TicketResponses with {
  ID @Common.Text: { $value: ticketResponsesID, ![@UI.TextArrangement]: #TextOnly };
  supportTickets @Common.Text: { $value: supportTickets.supportTicketsID, ![@UI.TextArrangement]: #TextOnly };
};
annotate customerSupportTicketSrv.TicketResponses with @UI.SelectionFields: [
  supportTickets_ID
];
annotate customerSupportTicketSrv.TicketResponses with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: ID },
    { $Type: 'UI.DataField', Value: ticketResponsesID },
    { $Type: 'UI.DataField', Value: message },
    { $Type: 'UI.DataField', Value: sentAt },
    { $Type: 'UI.DataField', Value: author },
    { $Type: 'UI.DataField', Value: supportTicketId },
    { $Type: 'UI.DataField', Label: 'Ticket', Value: supportTickets_ID }
];
annotate customerSupportTicketSrv.TicketResponses with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: ID },
    { $Type: 'UI.DataField', Value: ticketResponsesID },
    { $Type: 'UI.DataField', Value: message },
    { $Type: 'UI.DataField', Value: sentAt },
    { $Type: 'UI.DataField', Value: author },
    { $Type: 'UI.DataField', Value: supportTicketId },
    { $Type: 'UI.DataField', Label: 'Ticket', Value: supportTickets_ID }
]};
annotate customerSupportTicketSrv.TicketResponses with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];