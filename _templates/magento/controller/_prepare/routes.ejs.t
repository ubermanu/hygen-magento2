---
from: ../_shared/etc/frontend/routes.xml
to: app/code/<%= module.replace('_', '/') %>/etc/frontend/routes.xml
unless_exists: true
---
