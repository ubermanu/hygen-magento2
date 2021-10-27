---
to: app/code/<%= moduleName.replace('_', '/') %>/etc/config.xml
unless_exists: true
---
<config xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:noNamespaceSchemaLocation="urn:magento:module:Magento_Store:etc/config.xsd">
    <default>
    </default>
</config>
