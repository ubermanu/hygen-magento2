---
to: app/code/<%= module.replace('_', '/') %>/Api/Data/<%= name %>Interface.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Api\Data;

interface <%= name %>Interface
{
}
