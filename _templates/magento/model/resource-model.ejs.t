---
to: app/code/<%= moduleName.replace('_', '/') %>/Model/ResourceModel/<%= className %>.php
---
<?php

namespace <%= moduleName.replace('_', '\\') %>\Model\ResourceModel;

class <%= className %> extends \Magento\Framework\Model\ResourceModel\Db\AbstractDb
{
    /**
     * {@inheritdoc}
     */
    protected function _construct()
    {
        $this->_init('<%= moduleName.toLowerCase() %>_<%= className.toLowerCase() %>', 'id');
    }
}
