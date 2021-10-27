---
to: app/code/<%= module.replace('_', '/') %>/etc/db_schema.xml
unless_exists: true
---
<schema xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:noNamespaceSchemaLocation="urn:magento:framework:Setup/Declaration/Schema/etc/schema.xsd">
</schema>
