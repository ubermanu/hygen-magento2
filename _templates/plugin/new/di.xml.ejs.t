---
to: app/code/<%= module.replace('_', '/') %>/etc/di.xml
inject: true
after: <type name="<%= fqcn.split('\\').join('\\\\') %>".*>
skip_if: <plugin.*type="<%= module.replace('_', '\\\\') %>\Plugin\<%= fqcn.split('\\').join('\\\\') %>".*>
---
        <plugin name="<%= module.toLowerCase() %>_plugin_<%= fqcn.split('\\').join('_').toLowerCase() %>" type="<%= module.replace('_', '\\') %>\Plugin\<%= fqcn %>"/>