function deepClone(obj) {
    if (obj === null || typeof obj !== 'object') {
        return obj
    }

    const clone = Array.isArray(obj) ? [] : {}

    for (let key in obj) {
        if (obj.hasOwnProperty(key)) {
            clone[key] = deepClone(obj[key])
        }
    }

    return clone
}

export default deepClone
