---
to: app/code/<%= moduleName.replace('_', '/') %>/registration.php
---
<?php
\Magento\Framework\Component\ComponentRegistrar::register(
    \Magento\Framework\Component\ComponentRegistrar::MODULE,
    '<%= moduleName %>',
    __DIR__
);
