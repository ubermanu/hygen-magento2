---
to: app/code/<%= module.replace('_', '/') %>/etc/di.xml
inject: true
after: <type name="<%= fqdn.split('\\').join('\\\\') %>".*>
skip_if: <plugin.*type="<%= module.replace('_', '\\\\') %>\Plugin\<%= fqdn.split('\\').join('\\\\') %>".*>
---
        <plugin name="<%= module.toLowerCase() %>_plugin_<%= fqdn.split('\\').join('_').toLowerCase() %>" type="<%= module.replace('_', '\\') %>\Plugin\<%= fqdn %>"/>