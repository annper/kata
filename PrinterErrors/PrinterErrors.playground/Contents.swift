import Foundation
import XCTest

// MARK: - Kata

func errorPrinter(controlString: String) -> String {
  let goodChars = "abcdefghijklm"
  let badCount = controlString.filter({ !goodChars.contains($0) }).count
  
  return "\(badCount)/\(controlString.count)"
}

// MARK: - Tests

class Tests: XCTestCase {
  
  func testErrorPrinterWithAllGoodControlString() {
    let result = errorPrinter(controlString: "aaabbbbhaijjjm")
    XCTAssertEqual(result, "0/14")
  }
  
  func testErrorPrinterWithEmptyControlString() {
    let result = errorPrinter(controlString: "")
    XCTAssertEqual(result, "0/0")
  }
  
  func testErrorPrinterWithAllBadControlString() {
    let result = errorPrinter(controlString: "nopqrrst")
    XCTAssertEqual(result, "8/8")
  }
  
  func testErrorPrintWithSomeBadControlString() {
    let result = errorPrinter(controlString: "aabbcczzfpqa")
    XCTAssertEqual(result, "4/12")
  }
}

Tests.defaultTestSuite.run()
