
func accum(_ string: String) -> String {
  
  let array = string.reduce([String](), {
    $0 + [String(repeating: $1, count: $0.count + 1).capitalized]
  })
  
  return array.joined(separator: "-")
}

import XCTest

class Tests: XCTestCase {
  
  func testAllLowerCaseUniqueLetters() {
    let result = accum("abcd")
    let expected = "A-Bb-Ccc-Dddd"
    XCTAssertEqual(result, expected)
  }
  
  func testAllUpperCaseLetters() {
    let result = accum("ABCD")
    let expected = "A-Bb-Ccc-Dddd"
    XCTAssertEqual(result, expected)
  }
  
  func testRepeatingLetters() {
    let result = accum("aabcc")
    let expected = "A-Aa-Bbb-Cccc-Ccccc"
    XCTAssertEqual(result, expected)
  }
  
}

Tests.defaultTestSuite.run()
