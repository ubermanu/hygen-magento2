---
to: app/code/<%= moduleName.replace('_', '/') %>/Block/<%= className %>.php
---
<?php

namespace <%= moduleName.replace('_', '\\') %>\Block;

class <%= className %> extends \Magento\Framework\View\Element\Template
{
    protected $_template = '<%= moduleName %>::<%= h.toCamelCase(className) %>.phtml';
}
