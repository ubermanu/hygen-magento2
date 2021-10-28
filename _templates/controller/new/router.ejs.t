---
to: app/code/<%= module.replace('_', '/') %>/etc/frontend/routes.xml
inject: true
before: </config>
skip_if: id="<%= module.toLowerCase() %>"
---
    <router id="standard">
        <route id="<%= module.toLowerCase() %>" frontName="<%= module.toLowerCase() %>">
            <module name="<%= module %>"/>
        </route>
    </router>