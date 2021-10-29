---
to: app/code/<%= module.replace('_', '/') %>/Observer/<%= h.changeCase.ucFirst(event.split('_').shift()) %>/<%= h.changeCase.pascal(event.split('_').slice(1).join('_')) %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Observer\<%= h.changeCase.ucFirst(event.split('_').shift()) %>;

class <%= h.changeCase.pascal(event.split('_').slice(1).join('_')) %> implements \Magento\Framework\Event\ObserverInterface
{
    /**
     * {@inheritdoc}
     */
    public function execute(\Magento\Framework\Event\Observer $observer)
    {
        // TODO: Your logic here
    }
}
