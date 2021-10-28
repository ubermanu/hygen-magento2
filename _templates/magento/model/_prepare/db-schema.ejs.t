---
from: ../_shared/etc/db_schema.xml
to: app/code/<%= module.replace('_', '/') %>/etc/db_schema.xml
unless_exists: true
---
