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
 * @param {string} moduleName
 * @return {string}
 */
function moduleNS(moduleName) {
    return name.replace('_', '\\');
}

/**
 * @param {string} moduleName
 * @return {string}
 */
function modulePath(moduleName) {
    return name.replace('_', '/');
}

module.exports = {
    helpers: {
        upperFirst,
        toCamelCase,
        toPascalCase,
        moduleNS,
        modulePath,
    }
}
