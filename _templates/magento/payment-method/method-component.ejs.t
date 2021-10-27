---
to: app/code/<%= module.replace('_', '/') %>/view/frontend/web/js/view/payment/<%= className.toLowerCase() %>.js
---
define([
    'uiComponent',
    'Magento_Checkout/js/model/payment/renderer-list'
], function (
    Component,
    rendererList
) {
    'use strict';
    rendererList.push(
        {
            type: '<%= className.toLowerCase() %>',
            component: '<%= module %>/js/view/payment/method-renderer/<%= className.toLowerCase() %>-method'
        }
    );
    return Component.extend({});
});
