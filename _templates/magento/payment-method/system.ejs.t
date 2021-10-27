---
to: app/code/<%= module.replace('_', '/') %>/etc/adminhtml/system.xml
unless_exists: true
---
<config xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:noNamespaceSchemaLocation="urn:magento:module:Magento_Config:etc/system_file.xsd">
    <system>
    </system>
</config>
