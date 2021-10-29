module.exports = [
    {
        type: 'input',
        name: 'module',
        message: "What's your module name? (ex: Vendor_Package)"
    },
    {
        type: 'input',
        name: 'name',
        message: 'Complete reference of the class? (ex: Magento\\Catalog\\Model\\Product)',
    },
    {
        type: 'input',
        name: 'method',
        message: 'Method to intercept? (ex: getPrice)',
    },
    {
        type: 'select',
        name: 'prefix',
        message: 'Interception mode for this method?',
        choices: [
            { message: 'Before', value: 'before' },
            { message: 'After', value: 'after' },
            { message: 'Around', value: 'around' },
        ]
    },
]
