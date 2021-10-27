---
to: app/code/<%= moduleName.replace('_', '/') %>/etc/adminhtml/system.xml
inject: true
after: <section id="carriers".*>
skip_if: <group id="<%= className.toLowerCase() %>".*>
---
            <group id="<%= className.toLowerCase() %>" translate="label" type="text" showInDefault="1" showInWebsite="1" showInStore="1">
                <label><%= className %></label>
                <field id="active" translate="label" type="select" sortOrder="10" showInDefault="1" showInWebsite="1" showInStore="0" canRestore="1">
                    <label>Enabled</label>
                    <source_model>Magento\Config\Model\Config\Source\Yesno</source_model>
                </field>
                <field id="title" translate="label" type="text" sortOrder="20" showInDefault="1" showInWebsite="1" showInStore="0">
                    <label><%= className %></label>
                </field>
                <field id="name" translate="label" type="text" sortOrder="30" showInDefault="1" showInWebsite="1" showInStore="0">
                    <label><%= className %></label>
                </field>
                <field id="shipping_cost" translate="label" type="text" sortOrder="40" showInDefault="1" showInWebsite="1" showInStore="0" >
                    <label>Shipping Cost</label>
                    <validate>validate-number validate-zero-or-greater</validate>
                </field>
                <field id="sallowspecific" translate="label" type="select" sortOrder="60" showInDefault="1" showInWebsite="1" showInStore="0" canRestore="1">
                    <label>Ship to Applicable Countries</label>
                    <frontend_class>shipping-applicable-country</frontend_class>
                    <source_model>Magento\Shipping\Model\Config\Source\Allspecificcountries</source_model>
                </field>
                <field id="specificcountry" translate="label" type="multiselect" sortOrder="70" showInDefault="1" showInWebsite="1" showInStore="0">
                    <label>Ship to Specific Countries</label>
                    <source_model>Magento\Directory\Model\Config\Source\Country</source_model>
                    <can_be_empty>1</can_be_empty>
                </field>
                <field id="showmethod" translate="label" type="select" sortOrder="80" showInDefault="1" showInWebsite="1" showInStore="0">
                    <label>Show Method if Not Applicable</label>
                    <source_model>Magento\Config\Model\Config\Source\Yesno</source_model>
                    <frontend_class>shipping-skip-hide</frontend_class>
                </field>
                <field id="sort_order" translate="label" type="text" sortOrder="90" showInDefault="1" showInWebsite="1" showInStore="0">
                    <label>Sort Order</label>
                </field>
            </group>