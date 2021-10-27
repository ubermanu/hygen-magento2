---
to: app/code/<%= module.replace('_', '/') %>/view/frontend/web/js/view/payment/method-renderer/<%= className.toLowerCase() %>-method.js
---
define([
    'Magento_Checkout/js/view/payment/default'
], function (
    Component
) {
    'use strict';
    return Component.extend({
        defaults: {
            template: '<%= module %>/payment/<%= className.toLowerCase() %>'
        },
        getMailingAddress: function () {
            return window.checkoutConfig.payment.checkmo.mailingAddress;
        },
        getInstructions: function () {
            return window.checkoutConfig.payment.instructions[this.item.method];
        },
    });
});
