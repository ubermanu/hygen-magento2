---
to: app/code/<%= module.replace('_', '/') %>/Model/ResourceModel/<%= name %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Model\ResourceModel;

class <%= name %> extends \Magento\Framework\Model\ResourceModel\Db\AbstractDb
{
    const TABLE_NAME = '<%= module.toLowerCase() %>_<%= name.toLowerCase() %>';

    /**
     * {@inheritdoc}
     */
    protected function _construct()
    {
        $this->_init(self::TABLE_NAME, 'id');
    }
}
