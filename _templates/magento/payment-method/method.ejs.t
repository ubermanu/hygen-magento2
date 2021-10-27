---
to: app/code/<%= module.replace('_', '/') %>/Model/Method/<%= name %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Model\Method;

class <%= name %> extends \Magento\Payment\Model\Method\AbstractMethod
{
    /**
     * @var string
     */
    protected $_code = '<%= name.toLowerCase() %>';

    /**
     * @var bool
     */
    protected $_isOffline = true;

    /**
     * {@inheritdoc}
     */
    public function isAvailable(\Magento\Quote\Api\Data\CartInterface $quote = null)
    {
        return parent::isAvailable($quote);
    }
}
