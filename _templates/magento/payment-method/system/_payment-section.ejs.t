---
to: app/code/<%= module.replace('_', '/') %>/etc/adminhtml/system.xml
inject: true
before: </system>
skip_if: <section id="payment"
---
        <section id="payment">
        </section>