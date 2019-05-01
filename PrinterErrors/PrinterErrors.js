
const printerErrors = controlString => {
    filteredResult = controlString.match(/[^a-m]/gi);
    return `${filteredResult == null ? 0 : filteredResult.length}/${controlString.length}`
}

console.log(printerErrors("aaabbbccddeefghhi"));
console.log(printerErrors("qqqzzxqyuuvz"));
console.log(printerErrors("abczxqaaccqdf"));
console.log(printerErrors(""));
