---
to: app/code/<%= moduleName.replace('_', '/') %>/etc/db_schema.xml
inject: true
after: <table name="<%= moduleName.toLowerCase() %>_<%= className.toLowerCase() %>".*>[^]*?<\/constraint>
---
        <column name="<%= h.changeCase.snake(propertyName) %>" nullable="true" xsi:type="text" default="<%= defaultValue %>"/>