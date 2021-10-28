---
to: app/code/<%= module.replace('_', '/') %>/Model/Cache/<%= name %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Model\Cache;

class <%= name %> extends \Magento\Framework\Cache\Frontend\Decorator\TagScope
{
    /**
     * Cache type code unique among all cache types
     */
    const TYPE_IDENTIFIER = '<%= (identifier || name).toLowerCase() %>';

    /**
     * Cache tag used to distinguish the cache type from all other cache
     */
    const CACHE_TAG = '<%= (identifier || name).toUpperCase() %>_CACHE_TAG';

    /**
     * @param \Magento\Framework\App\Cache\Type\FrontendPool $cacheFrontendPool
     */
    public function __construct(
        \Magento\Framework\App\Cache\Type\FrontendPool $cacheFrontendPool
    ) {
        parent::__construct($cacheFrontendPool->get(self::TYPE_IDENTIFIER), self::CACHE_TAG);
    }
}
