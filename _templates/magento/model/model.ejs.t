---
to: app/code/<%= moduleName.replace('_', '/') %>/Model/<%= className %>.php
---
<?php

namespace <%= moduleName.replace('_', '\\') %>\Model;

class <%= className %> extends \Magento\Framework\Model\AbstractModel
{
    /**
     * {@inheritdoc}
     */
    protected function _construct()
    {
        $this->_init(\<%= moduleName.replace('_', '\\') %>\Model\ResourceModel\<%= className %>::class);
    }
}
