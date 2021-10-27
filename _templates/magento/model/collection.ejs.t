---
to: app/code/<%= module.replace('_', '/') %>/Model/ResourceModel/<%= className %>/Collection.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Model\ResourceModel;

class Collection extends \Magento\Framework\Model\ResourceModel\Db\Collection\AbstractCollection
{
    /**
     * {@inheritdoc}
     */
    protected function _construct()
    {
        $this->_init(
            \<%= module.replace('_', '\\') %>\Model\<%= className %>::class,
            \<%= module.replace('_', '\\') %>\Model\ResourceModel\<%= className %>::class
        );
    }
}
