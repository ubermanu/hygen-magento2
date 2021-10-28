---
from: cache.xml
to: app/code/<%= module.replace('_', '/') %>/etc/cache.xml
unless_exists: true
---
