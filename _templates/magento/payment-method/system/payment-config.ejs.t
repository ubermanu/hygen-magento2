---
to: app/code/<%= module.replace('_', '/') %>/etc/adminhtml/system.xml
inject: true
after: <section id="payment".*>
skip_if: <group id="<%= name.toLowerCase() %>".*>
---
            <group id="<%= name.toLowerCase() %>" translate="label" type="text" showInDefault="1" showInWebsite="1" showInStore="1">
                <label><%= name %></label>
                <field id="active" showInDefault="1" showInStore="1" showInWebsite="1" sortOrder="10" translate="label" type="select">
                   <label>Enabled</label>
                   <source_model>Magento\Config\Model\Config\Source\Yesno</source_model>
                </field>
                <field id="title" showInDefault="1" showInStore="1" showInWebsite="1" sortOrder="20" translate="label" type="text">
                   <label><%= name %></label>
                </field>
                <field id="order_status" showInDefault="1" showInStore="1" showInWebsite="1" sortOrder="30" translate="label" type="select">
                   <label>New Order Status</label>
                   <source_model>Magento\Sales\Model\Config\Source\Order\Status\NewStatus</source_model>
                </field>
                <field id="allowspecific" showInDefault="1" showInStore="1" showInWebsite="1" sortOrder="40" translate="label" type="allowspecific">
                   <label>Payment from Applicable Countries</label>
                   <source_model>Magento\Payment\Model\Config\Source\Allspecificcountries</source_model>
                </field>
                <field id="specificcountry" showInDefault="1" showInStore="1" showInWebsite="1" sortOrder="50" translate="label" type="multiselect">
                   <label>Payment from Applicable Countries</label>
                   <source_model>Magento\Directory\Model\Config\Source\Country</source_model>
                   <can_be_empty>1</can_be_empty>
                </field>
                <field id="sort_order" showInDefault="1" showInStore="1" showInWebsite="1" sortOrder="60" translate="label" type="text">
                   <label>Sort Order</label>
                </field>
                <field id="instructions" showInDefault="1" showInStore="1" showInWebsite="1" sortOrder="70" translate="label" type="textarea">
                   <label>Instructions</label>
                </field>
            </group>