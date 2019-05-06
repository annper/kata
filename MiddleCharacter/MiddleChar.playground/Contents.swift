import XCTest

func getMiddle(of string: String) -> String {
  
  let count = string.count
  
  if count % 2 != 0 {
    return String(string[string.index(string.startIndex, offsetBy: count / 2)])
  }
  
  let middleStartIndex = string.index(string.startIndex, offsetBy: (count / 2) - 1)
  let middleEndIndex = string.index(middleStartIndex, offsetBy: 2)

  return String(string[middleStartIndex..<middleEndIndex])
}

class Tests: XCTestCase {
  
  func testEvenNumerOfChars() {
    let result = getMiddle(of: "test")
    let expected = "es";
    XCTAssertEqual(result, expected)
  }

  func testOddNumerOfChars() {
    let result = getMiddle(of: "testing")
    let expected = "t"
    XCTAssertEqual(result, expected)
  }
  
  func testOneChar() {
    let result = getMiddle(of: "t")
    let expected = "t"
    XCTAssertEqual(result, expected)
  }
  
}

Tests.defaultTestSuite.run()
