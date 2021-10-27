---
to: app/code/<%= moduleName.replace('_', '/') %>/etc/frontend/routes.xml
inject: true
before: </config>
skip_if: id="<%= moduleName.toLowerCase() %>"
---
    <router id="standard">
        <route id="<%= moduleName.toLowerCase() %>" frontName="<%= moduleName.toLowerCase() %>">
            <module name="<%= moduleName %>"/>
        </route>
    </router>