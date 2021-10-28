---
to: app/code/<%= module.replace('_', '/') %>/Model/<%= name %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Model;

use <%= module.replace('_', '\\') %>\Api\Data\<%= name %>Interface;

class <%= name %> extends \Magento\Framework\Model\AbstractModel implements <%= name %>Interface
{
    /**
     * {@inheritdoc}
     */
    protected function _construct()
    {
        $this->_init(\<%= module.replace('_', '\\') %>\Model\ResourceModel\<%= name %>::class);
    }
}
