---
to: app/code/<%= module.replace('_', '/') %>/etc/config.xml
inject: true
before: </carriers>
skip_if: <<%= name.toLowerCase() %>>
---
            <<%= name.toLowerCase() %>>
                <active>0</active>
                <title><%= name %></title>
                <name><%= name %></name>
                <shipping_cost>10</shipping_cost>
                <sallowspecific>0</sallowspecific>
                <sort_order>15</sort_order>
                <model><%= module.replace('_', '\\') %>\Model\Carrier\<%= name %></model>
            </<%= name.toLowerCase() %>>