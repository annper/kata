
// Solution

const middleChar = string => {
    const charCount = string.length;
    const isEven = charCount % 2 == 0;
    const oddStartIndex = Math.floor(charCount / 2);
    const endIndex =  oddStartIndex + 1

    return string.slice(oddStartIndex - (isEven ? 1 : 0), endIndex);
}

// Tests

class Tests {

    run() {
        this.testEvenNumberOfChars();
        this.testOddNumberOfChars();
        this.testSingleChar();
    }

    testEvenNumberOfChars() {
        const result = middleChar("test");
        const expected = "es";
        this.compare(result, expected);
    }

    testOddNumberOfChars() {
        const result = middleChar("testing");
        const expected = "t";
        this.compare(result, expected);
    }

    testSingleChar() {
        const result = middleChar("t");
        const expected = "t";
        this.compare(result, expected);
    }

    compare(result, expected) {
        if (result == expected) {
            console.log("Test passed!");
        } else {
            console.log(`Test failed! "${result}" does not equal expected "${expected}"`);
        }
    }

}

new Tests().run();