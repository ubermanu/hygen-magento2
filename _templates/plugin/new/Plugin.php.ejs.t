---
to: app/code/<%= module.replace('_', '/') %>/Plugin/<%= fqcn.split('\\').join('/') %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Plugin\<%= fqcn.split('\\').slice(0, -1).join('\\') %>;

class <%= fqcn.split('\\').pop() %>
{
}
