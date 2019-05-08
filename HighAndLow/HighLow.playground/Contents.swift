import XCTest

func highAndLow(_ numberString: String) -> String {
  return ""
}

class Tests: XCTestCase {
  
  func testChronologicalNumberString() {
    let result = highAndLow("1 2 3 4 5")
    let expected = "1 5"
    XCTAssertEqual(result, expected)
  }
  
  func testNegativesInNumberString() {
    let result = highAndLow("1 2 -3 4 5")
    let expected = "-3 5"
    XCTAssertEqual(result, expected)
  }
  
  func testRandomOrderNumberString() {
    let result = highAndLow("1 9 3 4 -5")
    let expected = "-5 9"
    XCTAssertEqual(result, expected)
  }
  
}

Tests.defaultTestSuite.run()
