//
//  PrinterErrorsTests.m
//  PrinterErrorsTests
//
//  Created by Annie Persson on 30/04/2019.
//  Copyright © 2019 Annie Persson. All rights reserved.
//

@import XCTest;
#import <Foundation/Foundation.h>
#import "PrinterErrors.h"

@interface PrinterErrorsTests : XCTestCase

@end

@implementation PrinterErrorsTests

- (void) testPrinterErrorsWithAllGoodControlString {
  NSString *result = [PrinterErrors printerErrors:@"aaabbbbhaijjjm"];
  
  // Must do asset this way since result becomes a NSTaggedPointerString for some reason...
  XCTAssertTrue([result isEqualToString:@"0/14"]);
}

- (void) testPrinterErrorsWithAllBadControlString {
  NSString *result = [PrinterErrors printerErrors:@"nnowwwqppzzx"];
  XCTAssertTrue([result isEqualToString:@"12/12"]);
}

- (void) testPrinterErrorsWithSomeBadControlString {
  NSString *result = [PrinterErrors printerErrors:@"abbwqcdzzee"];
  XCTAssertTrue([result isEqualToString:@"4/11"]);
}

- (void) testPrinterErrorsWithEmptyControlString {
  NSString *result = [PrinterErrors printerErrors:@""];
  XCTAssertTrue([result isEqualToString:@"0/0"]);
}

@end
