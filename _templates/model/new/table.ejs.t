---
to: app/code/<%= module.replace('_', '/') %>/etc/db_schema.xml
inject: true
before: </schema>
skip_if: <table name="<%= module.toLowerCase() %>_<%= name.toLowerCase() %>".*>
---
    <table name="<%= module.toLowerCase() %>_<%= name.toLowerCase() %>" resource="default">
        <column xsi:type="int" name="id" padding="10" unsigned="true" nullable="false" identity="true" comment="ID"/>
        <constraint xsi:type="primary" referenceId="PRIMARY">
            <column name="id"/>
        </constraint>
    </table>