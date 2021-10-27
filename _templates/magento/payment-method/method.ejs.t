---
to: app/code/<%= module.replace('_', '/') %>/Model/Method/<%= className %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Model\Method;

class <%= className %> extends \Magento\Payment\Model\Method\AbstractMethod
{
    /**
     * @var string
     */
    protected $_code = '<%= className.toLowerCase() %>';

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
