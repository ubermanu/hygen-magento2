---
to: app/code/<%= module.replace('_', '/') %>/etc/di.xml
inject: true
before: </config>
skip_if: <preference.*for="<%= name.split('\\').join('\\\\') %>".*>
---
    <preference for="<%= name %>" type="<%= module.replace('_', '\\') %>\Rewrite\<%= name %>"/>