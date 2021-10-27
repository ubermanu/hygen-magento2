---
to: app/code/<%= moduleName.replace('_', '/') %>/etc/db_schema.xml
inject: true
after: xsi:noNamespaceSchemaLocation="urn:magento:framework:Setup/Declaration/Schema/etc/schema.xsd">
skip_if: <table name="<%= moduleName.toLowerCase() %>_<%= className.toLowerCase() %>"
---
    <table name="<%= moduleName.toLowerCase() %>_<%= className.toLowerCase() %>" resource="default">
        <column xsi:type="int" name="id" padding="10" unsigned="true" nullable="false" identity="true" comment="ID"/>
        <constraint xsi:type="primary" referenceId="PRIMARY">
            <column name="id"/>
        </constraint>
    </table>