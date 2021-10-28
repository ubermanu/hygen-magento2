---
to: app/code/<%= module.replace('_', '/') %>/etc/di.xml
inject: true
before: </config>
skip_if: <preference.*for="<%= fqcn.split('\\').join('\\\\') %>".*>
---
    <preference for="<%= fqcn %>" type="<%= module.replace('_', '\\') %>\Rewrite\<%= fqcn %>"/>