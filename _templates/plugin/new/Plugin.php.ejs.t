---
to: app/code/<%= module.replace('_', '/') %>/Plugin/<%= fqdn.split('\\').join('/') %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Plugin\<%= fqdn.split('\\').slice(0, -1).join('\\') %>;

class <%= fqdn.split('\\').pop() %>
{
}
