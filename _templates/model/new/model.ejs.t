---
to: app/code/<%= module.replace('_', '/') %>/Model/<%= name %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Model;

class <%= name %> extends \Magento\Framework\Model\AbstractModel
{
    /**
     * {@inheritdoc}
     */
    protected function _construct()
    {
        $this->_init(\<%= module.replace('_', '\\') %>\Model\ResourceModel\<%= name %>::class);
    }
}
