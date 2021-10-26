---
to: app/code/<%= moduleName.replace('_', '/') %>/Console/Command/<%= className %>.php
---
<?php

namespace <%= moduleName.replace('_', '\\') %>\Console\Command;

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class <%= className %> extends Command
{
    /**
     * {@inheritdoc}
     */
    protected function configure()
    {
        $this->setName('<%= moduleName.toLowerCase() %>:<%= className.toLowerCase() %>');
        parent::configure();
    }

    /**
     * {@inheritdoc}
     */
    protected function execute(InputInterface $input, OutputInterface $output)
    {
    }
}
