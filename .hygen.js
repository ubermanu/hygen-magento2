/**
 * @param {string} string
 * @return {string}
 */
function upperFirst(string) {
    return string.charAt(0).toUpperCase() + string.slice(1);
}

/**
 * @param {string} string
 * @return {*}
 */
function toCamelCase(string) {
    return string.replace(/(?:^\w|[A-Z]|\b\w)/g, function (word, index) {
        return index === 0 ? word.toLowerCase() : word.toUpperCase();
    }).replace(/\s+/g, '');
}

/**
 * @param {string} string
 * @return {string}
 */
function toPascalCase(string) {
    return upperFirst(toCamelCase(string));
}

/**
 * @param {string} string
 * @return {string}
 */
function toKebabCase(string) {
    return string
        .match(/[A-Z]{2,}(?=[A-Z][a-z]+[0-9]*|\b)|[A-Z]?[a-z]+[0-9]*|[A-Z]|[0-9]+/g)
        .map(x => x.toLowerCase())
        .join('-');
}

/**
 * @param {string} string
 * @return {string}
 */
function toSnakeCase(string) {
    return toKebabCase(string).replace('-', '_');
}

module.exports = {
    helpers: {
        upperFirst,
        toCamelCase,
        toPascalCase,
        toSnakeCase,
        toKebabCase,
    }
}
