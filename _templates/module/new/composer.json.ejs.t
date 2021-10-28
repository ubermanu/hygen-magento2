---
to: app/code/<%= name.replace('_', '/') %>/composer.json
---
{
    "name": "<%= name.replace('_', '/module-').toLowerCase() %>",
    "description": "",
    "type": "magento2-module",
    "license": "GPL-3.0",
    "minimum-stability": "dev",
    "require": {},
    "autoload": {
        "files": [
            "registration.php"
        ],
        "psr-4": {
            "<%= name.replace('_', '\\\\') %>\\": ""
        }
    }
}
