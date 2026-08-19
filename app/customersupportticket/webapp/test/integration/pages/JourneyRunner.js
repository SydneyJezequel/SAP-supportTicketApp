sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"customersupportticket/test/integration/pages/SupportTicketsList.gen",
	"customersupportticket/test/integration/pages/SupportTicketsObjectPage.gen"
], function (JourneyRunner, SupportTicketsListGenerated, SupportTicketsObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('customersupportticket') + '/test/flp.html#app-preview',
        pages: {
			onTheSupportTicketsListGenerated: SupportTicketsListGenerated,
			onTheSupportTicketsObjectPageGenerated: SupportTicketsObjectPageGenerated
        },
        async: true
    });

    return runner;
});

