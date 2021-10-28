---
to: app/code/<%= module.replace('_', '/') %>/etc/di.xml
inject: true
before: </config>
skip_if: <type name="<%= fqdn.split('\\').join('\\\\') %>">
---
    <type name="<%= fqdn %>">
    </type>