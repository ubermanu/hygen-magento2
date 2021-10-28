---
to: app/code/<%= module.replace('_', '/') %>/etc/di.xml
inject: true
before: </config>
skip_if: <type name="<%= fqcn.split('\\').join('\\\\') %>">
---
    <type name="<%= fqcn %>">
    </type>