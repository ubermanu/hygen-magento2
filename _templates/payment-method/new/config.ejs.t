---
to: app/code/<%= module.replace('_', '/') %>/etc/config.xml
inject: true
before: </payment>
skip_if: <<%= name.toLowerCase() %>>
---
            <<%= name.toLowerCase() %>>
                <active>1</active>
                <model><%= module.replace('_', '\\') %>\Model\Method\<%= name %></model>
                <order_status>pending</order_status>
                <title><%= name.toLowerCase() %></title>
                <allowspecific>0</allowspecific>
            </<%= name.toLowerCase() %>>