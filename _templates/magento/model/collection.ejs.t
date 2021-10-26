---
to: app/code/<%= moduleName.replace('_', '/') %>/Model/ResourceModel/<%= className %>/Collection.php
---
<?php

namespace <%= moduleName.replace('_', '\\') %>\Model\ResourceModel;

class Collection extends \Magento\Framework\Model\ResourceModel\Db\Collection\AbstractCollection
{
    /**
     * {@inheritdoc}
     */
    protected function _construct()
    {
        $this->_init(
            \<%= moduleName.replace('_', '\\') %>\Model\<%= className %>::class,
            \<%= moduleName.replace('_', '\\') %>\Model\ResourceModel\<%= className %>::class
        );
    }
}
