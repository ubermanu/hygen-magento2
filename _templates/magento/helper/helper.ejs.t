---
to: app/code/<%= module.replace('_', '/') %>/Helper/<%= className %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Helper;

class <%= className %> extends \Magento\Framework\App\Helper\AbstractHelper
{
}
