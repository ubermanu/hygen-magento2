---
to: app/code/<%= module.replace('_', '/') %>/Block/<%= className %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Block;

class <%= className %> extends \Magento\Framework\View\Element\Template
{
    /**
     * {@inheritdoc}
     */
    protected $_template = '<%= module %>::<%= h.changeCase.camel(className) %>.phtml';
}
