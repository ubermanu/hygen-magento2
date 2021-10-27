---
to: app/code/<%= moduleName.replace('_', '/') %>/etc/db_schema.xml
inject: true
after: <table name="<%= moduleName.toLowerCase() %>_<%= className.toLowerCase() %>" resource="default">
---
        <column name="<%= h.changeCase.snake(propertyName) %>" nullable="false" xsi:type="varchar" length="255"/>