---
from: ../_shared/etc/module.xml
to: app/code/<%= name.replace('_', '/') %>/etc/module.xml
unless_exists: true
---
