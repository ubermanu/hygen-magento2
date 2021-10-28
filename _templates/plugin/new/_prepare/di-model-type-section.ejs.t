---
to: app/code/<%= module.replace('_', '/') %>/etc/di.xml
inject: true
before: </config>
skip_if: <type name="<%= name.split('\\').join('\\\\') %>">
---
    <type name="<%= name %>">
    </type>