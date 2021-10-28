---
to: app/code/<%= module.replace('_', '/') %>/Plugin/<%= name.split('\\').join('/') %>Plugin.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Plugin\<%= name.split('\\').slice(0, -1).join('\\') %>;

class <%= name.split('\\').pop() %>Plugin
{
}
