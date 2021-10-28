---
to: app/code/<%= module.replace('_', '/') %>/etc/cache.xml
inject: true
before: </config>
skip_if: <type name="<%= (identifier || name).toLowerCase() %>".*>
---
    <type name="<%= (identifier || name).toLowerCase() %>" translate="label" instance="<%= module.replace('_', '\\') %>\Model\Cache\<%= name %>">
        <label><%= name %></label>
    </type>