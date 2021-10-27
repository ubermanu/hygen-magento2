---
to: app/code/<%= module.replace('_', '/') %>/Model/<%= className %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Model;

class <%= className %> extends \Magento\Framework\Model\AbstractModel
{
    /**
     * {@inheritdoc}
     */
    protected function _construct()
    {
        $this->_init(\<%= module.replace('_', '\\') %>\Model\ResourceModel\<%= className %>::class);
    }
}
