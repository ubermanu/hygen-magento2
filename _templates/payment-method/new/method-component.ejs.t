---
to: app/code/<%= module.replace('_', '/') %>/view/frontend/web/js/view/payment/<%= name.toLowerCase() %>.js
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
            type: '<%= name.toLowerCase() %>',
            component: '<%= module %>/js/view/payment/method-renderer/<%= name.toLowerCase() %>-method'
        }
    );
    return Component.extend({});
});
