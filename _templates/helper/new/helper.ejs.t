---
to: app/code/<%= module.replace('_', '/') %>/Helper/<%= name %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Helper;

class <%= name %> extends \Magento\Framework\App\Helper\AbstractHelper
{
}
