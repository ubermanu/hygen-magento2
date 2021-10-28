---
to: app/code/<%= name.replace('_', '/') %>/etc/module.xml
inject: true
before: </config>
skip_if: <module name="<%= name %>".*>
---
    <module name="<%= name %>"/>