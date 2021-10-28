---
to: app/code/<%= module.replace('_', '/') %>/etc/crontab.xml
inject: true
after: <group id="default">
skip_if: <job name="<%= module.toLowerCase() %>_<%= name.toLowerCase() %>".*>
---
        <job name="<%= module.toLowerCase() %>_<%= name.toLowerCase() %>" instance="<%= module.replace('_', '\\') %>\Cron\<%= name %>" method="execute">
            <schedule><%= schedule %></schedule>
        </job>