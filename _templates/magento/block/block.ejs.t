---
to: app/code/<%= moduleName.replace('_', '/') %>/Block/<%= className %>.php
---
<?php

namespace <%= moduleName.replace('_', '\\') %>\Block;

class <%= className %> extends \Magento\Framework\View\Element\Template
{
    /**
     * {@inheritdoc}
     */
    protected $_template = '<%= moduleName %>::<%= h.changeCase.camel(className) %>.phtml';
}
