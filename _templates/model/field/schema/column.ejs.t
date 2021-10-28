---
to: app/code/<%= module.replace('_', '/') %>/etc/db_schema.xml
inject: true
after: <table name="<%= module.toLowerCase() %>_<%= model.toLowerCase() %>".*>[^]*?<\/constraint>
skip_if: <table name="<%= module.toLowerCase() %>_<%= model.toLowerCase() %>".*>([^](?!<table))*?<column.*name="<%= h.changeCase.snake(name) %>".*\/>[^]*?<\/table>[^]*
---
        <column name="<%= h.changeCase.snake(name) %>" nullable="<%= nullable %>" xsi:type="<%= columnType %>"<% if (defaultValue) { %> default="<%= defaultValue %>"<% } %><% if (columnType == 'decimal') { %> scale="4" precision="12"<% } %><% if (columnType == 'varchar') { %> length="255"<% } %>/>