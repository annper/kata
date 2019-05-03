
# Solution

def accum(string):
    return '-'.join([(string[i] * (i + 1)).capitalize() for i in range(0, len(string))])

# Tests

class Tests:
    def run(self):
        self.testAllLowercaseString()
        self.testAllUppercaseString()
        self.testEmptyString()
    
    def testAllLowercaseString(self):
        result = accum("abcd")
        expected = "A-Bb-Ccc-Dddd"
        self.compareResult(result, expected)

    def testAllUppercaseString(self):
        result = accum("ABCD")
        expected = "A-Bb-Ccc-Dddd"
        self.compareResult(result, expected)
    
    def testEmptyString(self):
        result = accum("")
        expected = ""
        self.compareResult(result, expected)

    def compareResult(self, result, expected):
        if result == expected:
            print("Test passed!")
        else:
            print(f'Test failed! {result} does not equal {expected}')

# Run tests
Tests().run()
