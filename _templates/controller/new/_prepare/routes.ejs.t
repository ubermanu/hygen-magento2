---
from: routes.xml
to: app/code/<%= module.replace('_', '/') %>/etc/frontend/routes.xml
unless_exists: true
---
