---
to: app/code/<%= module.replace('_', '/') %>/etc/db_schema.xml
inject: true
after: <table name="<%= module.toLowerCase() %>_<%= name.toLowerCase() %>".*>[^]*?<\/constraint>
skip_if: <table name="<%= module.toLowerCase() %>_<%= name.toLowerCase() %>".*>([^](?!<table))*?<column.*name="<%= h.changeCase.snake(propertyName) %>".*\/>[^]*?<\/table>[^]*
---
        <column name="<%= h.changeCase.snake(propertyName) %>" nullable="true" xsi:type="text" default="<%= defaultValue %>"/>