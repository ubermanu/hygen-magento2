---
to: app/code/<%= moduleName.replace('_', '/') %>/etc/frontend/routes.xml
---
<config xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:noNamespaceSchemaLocation="urn:magento:framework:App/etc/routes.xsd">
    <router id="standard">
        <route id="<%= moduleName.toLowerCase() %>" frontName="<%= moduleName.toLowerCase() %>">
            <module name="<%= moduleName %>"/>
        </route>
    </router>
</config>
