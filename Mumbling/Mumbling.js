const accum = string => {
    return string.split("").map((letter, i) => { 
        const repeated = letter.repeat(i+1) //.replace(/\b[a-z]/i, letter.toUpperCase()) ;
        return `${repeated.charAt(0).toUpperCase()}${repeated.slice(1).toLowerCase()}`;
    }).join("-")
}

class Tests {

    run() {
        this.testAllLowercase();
        this.testAllUpperCase();
        this.testRepeatedLetters();
    }

    testAllLowercase() {
        const result = accum("abcd");
        const expected = "A-Bb-Ccc-Dddd";
        this.compare(result, expected);
    }

    testAllUpperCase() {
        const result = accum("ABCD");
        const expected = "A-Bb-Ccc-Dddd";
        this.compare(result, expected);
    }

    testRepeatedLetters() {
        const result = accum("aaffg");
        const expected = "A-Aa-Fff-Ffff-Ggggg";
        this.compare(result, expected);
    }

    compare(result, expected) {
        if (result == expected) {
            console.log("Test passed!");
        } else {
            console.log(`${result} does not equal expected: ${expected}`);
        }
    }

}

new Tests().run();