---
to: app/code/<%= moduleName.replace('_', '/') %>/etc/module.xml
---
<config xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:noNamespaceSchemaLocation="urn:magento:framework:Module/etc/module.xsd">
    <module name="<%= moduleName %>"/>
</config>
