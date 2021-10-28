module.exports = [
    {
        type: 'input',
        name: 'module',
        message: "What's your module name? (ex: Vendor_Package)"
    },
    {
        type: 'input',
        name: 'model',
        message: 'Name of the model?',
    },
    {
        type: 'input',
        name: 'name',
        message: 'Name of the property?',
    },
    {
        type: 'select',
        name: 'propertyType',
        message: 'Type of the column?',
        choices: [
            { message: 'Text', value: 'text' },
            { message: 'Varchar', value: 'varchar' },
            { message: 'Boolean', value: 'boolean' },
            { message: 'Smallint', value: 'smallint' },
            { message: 'Integer', value: 'int' },
            { message: 'Bigint', value: 'int' },
            { message: 'Float', value: 'float' },
            { message: 'Numeric', value: 'real' },
            { message: 'Decimal', value: 'decimal' },
            { message: 'Date', value: 'date' },
            { message: 'Timestamp', value: 'timestamp' },
            { message: 'Datetime', value: 'datetime' },
            { message: 'Blob', value: 'blob' },
        ],
    },
    {
        type: 'input',
        name: 'defaultValue',
        message: 'Default column value?',
    },
    {
        type: 'confirm',
        name: 'nullable',
        message: 'Is the column nullable?',
        initial: true
    }
]
