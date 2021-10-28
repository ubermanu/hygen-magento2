---
from: di.xml
to: app/code/<%= module.replace('_', '/') %>/etc/di.xml
unless_exists: true
---
