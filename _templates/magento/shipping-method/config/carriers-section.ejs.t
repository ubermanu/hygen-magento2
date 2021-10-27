---
to: app/code/<%= moduleName.replace('_', '/') %>/etc/config.xml
inject: true
before: </default>
skip_if: <carriers>
---
        <carriers>
        </carriers>