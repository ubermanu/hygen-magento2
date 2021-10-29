---
to: app/code/<%= module.replace('_', '/') %>/Rewrite/<%= name.split('\\').join('/') %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Rewrite\<%= name.split('\\').slice(0, -1).join('\\') %>;

class <%= name.split('\\').pop() %> extends <%= name %>
{
}
