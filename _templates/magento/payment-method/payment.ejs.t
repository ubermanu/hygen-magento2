---
to: app/code/<%= moduleName.replace('_', '/') %>/etc/payment.xml
unless_exists: true
---
<payment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:noNamespaceSchemaLocation="urn:magento:module:Magento_Payment:etc/payment.xsd">
    <methods>
    </methods>
</payment>
