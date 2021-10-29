---
from: events.xml
to: app/code/<%= module.replace('_', '/') %>/etc/events.xml
unless_exists: true
---
