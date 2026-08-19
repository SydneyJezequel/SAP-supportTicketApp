const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
    const { SupportTickets } = this.entities;

    this.before('UPDATE', SupportTickets, async (req) => {
        if (req.data.status === 'Resolved') {
            req.data.resolvedAt = new Date().toISOString();
        }
    });
});