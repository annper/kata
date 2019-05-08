
# Solution

def middleChar(string):
    characterCount = len(string)
    oddStartIndex = int(characterCount / 2)
    endIndex = oddStartIndex + 1

    return string[oddStartIndex - (1 if isEven(characterCount) else 0) : endIndex]

def isEven(count):
    return count % 2 == 0

# Tests

class Tests:

    def run(self):
        self.testEvenNumberOfChars()
        self.testOddNumberOfChars()
        self.testSingleChar()

    def testEvenNumberOfChars(self):
        result = middleChar("test")
        expected = "es"
        self.compare(result, expected)

    def testOddNumberOfChars(self):
        result = middleChar("testing")
        expected = "t"
        self.compare(result, expected)
    
    def testSingleChar(self):
        result = middleChar("t")
        expected = "t"
        self.compare(result, expected)

    def compare(self, result, expected):
        if result == expected:
            print("Test passed!")
        else:
            print(f'Test failed! "{result}" does not equal expected: "{expected}"')


Tests().run()