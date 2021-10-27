---
to: app/code/<%= module.replace('_', '/') %>/registration.php
---
<?php
\Magento\Framework\Component\ComponentRegistrar::register(
    \Magento\Framework\Component\ComponentRegistrar::MODULE,
    '<%= module %>',
    __DIR__
);
