---
to: app/code/<%= moduleName.replace('_', '/') %>/etc/config.xml
inject: true
before: </payment>
skip_if: <<%= className.toLowerCase() %>>
---
            <<%= className.toLowerCase() %>>
                <active>1</active>
                <model><%= moduleName.replace('_', '\\') %>\Model\Method\<%= className %></model>
                <order_status>pending</order_status>
                <title><%= className.toLowerCase() %></title>
                <allowspecific>0</allowspecific>
            </<%= className.toLowerCase() %>>