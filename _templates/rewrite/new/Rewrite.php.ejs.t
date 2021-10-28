---
to: app/code/<%= module.replace('_', '/') %>/Rewrite/<%= fqcn.split('\\').join('/') %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Rewrite\<%= fqcn.split('\\').slice(0, -1).join('\\') %>;

class <%= fqcn.split('\\').pop() %> extends <%= fqcn %>
{
}
