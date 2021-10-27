---
to: app/code/<%= moduleName.replace('_', '/') %>/etc/adminhtml/system.xml
inject: true
before: </system>
skip_if: <section id="payment"
---
        <section id="payment">
        </section>