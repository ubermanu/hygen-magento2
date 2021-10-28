---
to: app/code/<%= name.replace('_', '/') %>/etc/module.xml
inject: true
before: </config>
skip_if: <module name="<%= name %>".*>
---
<% if (deps.length) { %>    <module name="<%= name %>" setup_version="<%= version %>">
        <sequence><% for (var x of deps.split(',')) { %>
            <module name="<%= x %>"/>
        <% } %></sequence>
    </module><% } else { %>    <module name="<%= name %>" setup_version="<%= version %>"/><% } %>