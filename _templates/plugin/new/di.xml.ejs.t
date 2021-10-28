---
to: app/code/<%= module.replace('_', '/') %>/etc/di.xml
inject: true
after: <type name="<%= name.split('\\').join('\\\\') %>".*>
skip_if: <plugin.*type="<%= module.replace('_', '\\\\') %>\Plugin\<%= name.split('\\').join('\\\\') %>".*>
---
        <plugin name="<%= module.toLowerCase() %>_plugin_<%= name.split('\\').join('_').toLowerCase() %>" type="<%= module.replace('_', '\\') %>\Plugin\<%= name %>"/>