---
to: app/code/<%= module.replace('_', '/') %>/etc/events.xml
inject: true
before: </config>
skip_if: <event.*name="<%= event %>">
---
    <event name="<%= event %>">
    </event>