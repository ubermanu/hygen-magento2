---
to: app/code/<%= module.replace('_', '/') %>/etc/events.xml
inject: true
after: <event.*name="<%= event %>">
skip_if: <observer.*name="<%= module.toLowerCase() %>_<%= event.toLowerCase() %>".*
---
        <observer name="<%= module.toLowerCase() %>_<%= event.toLowerCase() %>" instance="<%= module.replace('_', '\\') %>\Observer\<%= h.changeCase.ucFirst(event.split('_').shift()) %>\<%= h.changeCase.pascal(event.split('_').slice(1).join('_')) %>"/>