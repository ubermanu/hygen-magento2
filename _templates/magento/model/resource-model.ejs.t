---
to: app/code/<%= moduleName.replace('_', '/') %>/Model/ResourceModel/<%= className %>.php
---
<?php

namespace <%= moduleName.replace('_', '\\') %>\Model\ResourceModel;

class <%= className %> extends \Magento\Framework\Model\ResourceModel\Db\AbstractDb
{
    const TABLE_NAME = '<%= moduleName.toLowerCase() %>_<%= className.toLowerCase() %>';

    /**
     * {@inheritdoc}
     */
    protected function _construct()
    {
        $this->_init(self::TABLE_NAME, 'id');
    }
}
