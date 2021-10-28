---
from: crontab.xml
to: app/code/<%= module.replace('_', '/') %>/etc/crontab.xml
unless_exists: true
---
