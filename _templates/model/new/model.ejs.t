---
to: app/code/<%= module.replace('_', '/') %>/Model/<%= name %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Model;

class <%= name %> extends \Magento\Framework\Model\AbstractModel implements \<%= module.replace('_', '\\') %>\Api\Data\<%= name %>Interface
{
    /**
     * {@inheritdoc}
     */
    protected function _construct()
    {
        $this->_init(\<%= module.replace('_', '\\') %>\Model\ResourceModel\<%= name %>::class);
    }

    /**
     * {@inheritdoc}
     */
    public function getId()
    {
        return $this->getData(self::KEY_ID);
    }

    /**
     * {@inheritdoc}
     */
    public function setId($id)
    {
        return $this->setData(self::KEY_ID, $id);
    }
}
