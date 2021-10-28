---
to: app/code/<%= module.replace('_', '/') %>/etc/di.xml
inject: true
after: <type name="Magento\\Framework\\Console\\CommandList".*>\s*<arguments>\s*<argument name="commands".*>
skip_if: <item.*name="<%= name %>".*><%= module.replace('_', '\\\\') %>\\Console\\Command\\<%= name %></item>
---
                <item name="<%= name %>" xsi:type="object"><%= module.replace('_', '\\') %>\Console\Command\<%= name %></item>