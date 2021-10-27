---
to: app/code/<%= module.replace('_', '/') %>/etc/payment.xml
inject: true
before: </methods>
skip_if: <method name="<%= name.toLowerCase() %>">
---
        <method name="<%= name.toLowerCase() %>">
            <allow_multiple_address>1</allow_multiple_address>
        </method>