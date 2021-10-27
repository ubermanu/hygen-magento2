---
to: app/code/<%= module.replace('_', '/') %>/Block/<%= name %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Block;

class <%= name %> extends \Magento\Framework\View\Element\Template
{
    /**
     * {@inheritdoc}
     */
    protected $_template = '<%= module %>::<%= h.changeCase.camel(name) %>.phtml';
}
