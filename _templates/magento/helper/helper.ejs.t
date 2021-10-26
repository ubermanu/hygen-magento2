---
to: app/code/<%= moduleName.replace('_', '/') %>/Helper/<%= className %>.php
---
<?php

namespace <%= moduleName.replace('_', '\\') %>\Helper;

class <%= className %> extends \Magento\Framework\App\Helper\AbstractHelper
{
}
