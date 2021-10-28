---
from: ../_shared/etc/payment.xml
to: app/code/<%= module.replace('_', '/') %>/etc/payment.xml
unless_exists: true
---
