---
to: app/code/<%= module.replace('_', '/') %>/etc/di.xml
inject: true
before: </config>
skip_if: <type name="Magento\\Framework\\Console\\CommandList">
---
    <type name="Magento\Framework\Console\CommandList">
        <arguments>
            <argument name="commands" xsi:type="array">
            </argument>
        </arguments>
    </type>