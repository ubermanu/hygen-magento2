# hygen-magento2

Templates for Magento 2 module generation built for [Hygen](https://www.hygen.io/).

### Install

    hygen-add magento2

### Examples

Create the skeleton of a module:

    hygen module new --name Vendor_Example

Add a new shipping method:

    hygen shipping-method new --module Vendor_Example --name FreeShipping

Create a new model:

    hygen model new --module Vendor_Example --name Blog

Add a field to this model:

    hygen model field --module Vendor_Example --model Blog --name title
