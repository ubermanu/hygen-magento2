---
to: app/code/<%= name.replace('_', '/') %>/registration.php
---
<?php
\Magento\Framework\Component\ComponentRegistrar::register(
    \Magento\Framework\Component\ComponentRegistrar::MODULE,
    '<%= name %>',
    __DIR__
);
