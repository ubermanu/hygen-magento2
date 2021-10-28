---
to: app/code/<%= module.replace('_', '/') %>/Model/ResourceModel/<%= name %>/Collection.php
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
            \<%= module.replace('_', '\\') %>\Model\<%= name %>::class,
            \<%= module.replace('_', '\\') %>\Model\ResourceModel\<%= name %>::class
        );
    }
}
