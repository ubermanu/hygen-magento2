---
to: app/code/<%= module.replace('_', '/') %>/view/frontend/layout/checkout_index_index.xml
inject: true
before: </body>
skip_if: <item.*name="<%= name.toLowerCase() %>".*>\s*<item.*name="component".*>\s*<%= module %>\/js\/view\/payment\/<%= name.toLowerCase() %>
---
        <referenceBlock name="checkout.root">
            <arguments>
                <argument name="jsLayout" xsi:type="array">
                    <item name="components" xsi:type="array">
                        <item name="checkout" xsi:type="array">
                            <item name="children" xsi:type="array">
                                <item name="steps" xsi:type="array">
                                    <item name="children" xsi:type="array">
                                        <item name="billing-step" xsi:type="array">
                                            <item name="children" xsi:type="array">
                                                <item name="payment" xsi:type="array">
                                                    <item name="children" xsi:type="array">
                                                        <item name="renders" xsi:type="array">
                                                            <item name="children" xsi:type="array">
                                                                <item name="<%= name.toLowerCase() %>" xsi:type="array">
                                                                    <item name="component" xsi:type="string"><%= module %>/js/view/payment/<%= name.toLowerCase() %></item>
                                                                    <item name="methods" xsi:type="array">
                                                                        <item name="<%= name.toLowerCase() %>" xsi:type="array">
                                                                            <item name="isBillingAddressRequired" xsi:type="boolean">true</item>
                                                                        </item>
                                                                    </item>
                                                                </item>
                                                            </item>
                                                        </item>
                                                    </item>
                                                </item>
                                            </item>
                                        </item>
                                    </item>
                                </item>
                            </item>
                        </item>
                    </item>
                </argument>
            </arguments>
        </referenceBlock>