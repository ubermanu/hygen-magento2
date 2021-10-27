---
to: app/code/<%= module.replace('_', '/') %>/etc/payment.xml
inject: true
before: </methods>
skip_if: <method name="<%= className.toLowerCase() %>">
---
        <method name="<%= className.toLowerCase() %>">
            <allow_multiple_address>1</allow_multiple_address>
        </method>