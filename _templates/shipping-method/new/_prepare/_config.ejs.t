---
from: ../_shared/etc/config.xml
to: app/code/<%= module.replace('_', '/') %>/etc/config.xml
unless_exists: true
---
