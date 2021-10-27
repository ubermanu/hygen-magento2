---
to: app/code/<%= moduleName.replace('_', '/') %>/etc/config.xml
inject: true
before: </carriers>
skip_if: <<%= className.toLowerCase() %>>
---
            <<%= className.toLowerCase() %>>
                <active>0</active>
                <title><%= className %></title>
                <name><%= className %></name>
                <shipping_cost>10</shipping_cost>
                <sallowspecific>0</sallowspecific>
                <sort_order>15</sort_order>
                <model><%= moduleName.replace('_', '\\') %>\Model\Carrier\<%= className %></model>
            </<%= className.toLowerCase() %>>