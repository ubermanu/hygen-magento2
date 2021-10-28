---
to: app/code/<%= module.replace('_', '/') %>/Cron/<%= h.changeCase.pascal(name) %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Cron;

class <%= h.changeCase.pascal(name) %>
{
    /**
     * @var \Psr\Log\LoggerInterface
     */
    protected $logger;

    /**
     * @param \Psr\Log\LoggerInterface $logger
     */
    public function __construct(\Psr\Log\LoggerInterface $logger)
    {
        $this->logger = $logger;
    }

    /**
     * @return void
     */
    public function execute()
    {
        $this->logger->addInfo("Cronjob <%= name %> is executed.");
    }
}
