---
to: app/code/<%= module.replace('_', '/') %>/etc/frontend/routes.xml
unless_exists: true
---
<config xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:noNamespaceSchemaLocation="urn:magento:framework:App/etc/routes.xsd">
</config>
