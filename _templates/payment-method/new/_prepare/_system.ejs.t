---
from: _shared/etc/adminhtml/system.xml
to: app/code/<%= module.replace('_', '/') %>/etc/adminhtml/system.xml
unless_exists: true
---
