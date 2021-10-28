---
to: app/code/<%= module.replace('_', '/') %>/etc/config.xml
inject: true
before: </default>
skip_if: <payment>
---
        <payment>
        </payment>