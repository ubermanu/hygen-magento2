---
to: app/code/<%= module.replace('_', '/') %>/Console/Command/<%= name %>.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Console\Command;

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class <%= name %> extends Command
{
    /**
     * {@inheritdoc}
     */
    protected function configure()
    {
        $this->setName('<%= module.toLowerCase() %>:<%= name.toLowerCase() %>');
        parent::configure();
    }

    /**
     * {@inheritdoc}
     */
    protected function execute(InputInterface $input, OutputInterface $output)
    {
    }
}
